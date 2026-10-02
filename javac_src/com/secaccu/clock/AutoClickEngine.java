package com.secaccu.clock;

import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.widget.Toast;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class AutoClickEngine {
    public static final AutoClickEngine INSTANCE = new AutoClickEngine();

    private static final String PREFS = "secaccu_ui";
    private static final String KEY_ENABLED = "auto_click_enabled";
    private static final String KEY_X = "auto_click_x";
    private static final String KEY_Y = "auto_click_y";
    private static final String KEY_HAS_POS = "auto_click_has_pos";
    private static final String KEY_LOG = "auto_click_log";
    private static final int LOG_LINES = 5;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Runnable scheduledClick = new Runnable() {
        @Override
        public void run() {
            fireAt(scheduledExact, scheduledPressAt);
        }
    };

    // exact = the server-clock target (hour or hh:mm:00.000); pressAt = exact minus the lead.
    private volatile long firedExact = -1L;
    private volatile long scheduledExact = -1L;
    private volatile long scheduledPressAt = -1L;
    private volatile long preAlertExact = -1L;
    private volatile long resyncExact = -1L;
    private volatile Context appContext;

    private AutoClickEngine() {}

    private SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public boolean isEnabled(Context context) {
        return prefs(context).getBoolean(KEY_ENABLED, false);
    }

    public void setEnabled(Context context, boolean enabled) {
        prefs(context).edit().putBoolean(KEY_ENABLED, enabled).apply();
        if (!enabled) {
            cancelSchedule();
            firedExact = -1L;
            AutoClickOverlay.INSTANCE.hideAll();
        }
    }

    public boolean hasPosition(Context context) {
        return prefs(context).getBoolean(KEY_HAS_POS, false);
    }

    public float getX(Context context) {
        return prefs(context).getFloat(KEY_X, -1f);
    }

    public float getY(Context context) {
        return prefs(context).getFloat(KEY_Y, -1f);
    }

    public void setPosition(Context context, float x, float y) {
        prefs(context).edit()
                .putBoolean(KEY_HAS_POS, true)
                .putFloat(KEY_X, x)
                .putFloat(KEY_Y, y)
                .apply();
        AutoClickOverlay.INSTANCE.showMarker(context.getApplicationContext(), x, y);
    }

    public boolean isAccessibilityEnabled(Context context) {
        String expected = context.getPackageName() + "/" + AutoClickService.class.getName();
        try {
            int on = Settings.Secure.getInt(
                    context.getContentResolver(),
                    Settings.Secure.ACCESSIBILITY_ENABLED,
                    0);
            if (on != 1) {
                return false;
            }
            String enabled = Settings.Secure.getString(
                    context.getContentResolver(),
                    Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES);
            if (TextUtils.isEmpty(enabled)) {
                return false;
            }
            TextUtils.SimpleStringSplitter splitter = new TextUtils.SimpleStringSplitter(':');
            splitter.setString(enabled);
            while (splitter.hasNext()) {
                if (expected.equalsIgnoreCase(splitter.next())) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return AutoClickService.getInstance() != null;
    }

    // ---- press time: halfway between the exact target and the moment a click arrives exactly on it ----

    /** Arrival-on-time needs RTT/2 of lead; the press goes out at half of that (RTT/4) to stay safely before the target. */
    private static long leadMs(double rttMs) {
        return Math.max(0L, Math.round(rttMs / 4.0));
    }

    private long nextExact(double serverNowMs, double rttMs) {
        return PressHintFormatter.nextPressAtMs(serverNowMs, rttMs);
    }

    public String formatPressAt(long pressAtMs) {
        SimpleDateFormat fmt = new SimpleDateFormat("HH:mm:ss.SSS", Locale.KOREA);
        fmt.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
        return fmt.format(new Date(pressAtMs));
    }

    /** "Pressing at arrive makes the server see exactly the target; the app presses at press, between that and the target." */
    public String calcLine(Context context) {
        ServerClock.Snapshot snap = ServerClock.INSTANCE.isReady() ? ServerClock.INSTANCE.snapshot() : null;
        if (snap == null) {
            return "";
        }
        long exact = nextExact(snap.getServerNowMs(), snap.getRttMs());
        long arrive = exact - Math.round(snap.getRttMs() / 2.0);
        long press = exact - leadMs(snap.getRttMs());
        return "지금 누르면 서버 정각 도착: " + formatPressAt(arrive)
                + "  (RTT " + Math.round(snap.getRttMs()) + "ms)\n\uC815\uAC01\uACFC \uADF8 \uC0AC\uC774 \uB204\uB984: " + formatPressAt(press);
    }

    // ---- result log / checklist ----

    private void record(Context context, long pressAt, long actual) {
        String line = "목표 " + formatPressAt(pressAt)
                + " → 실제 " + formatPressAt(actual)
                + " (" + (actual >= pressAt ? "+" : "") + (actual - pressAt) + "ms)";
        SharedPreferences p = prefs(context);
        String old = p.getString(KEY_LOG, "");
        String[] parts = old.isEmpty() ? new String[0] : old.split("\n");
        StringBuilder sb = new StringBuilder(line);
        for (int i = 0; i < parts.length && i < LOG_LINES - 1; i++) {
            sb.append('\n').append(parts[i]);
        }
        p.edit().putString(KEY_LOG, sb.toString()).apply();
    }

    public String historyLine(Context context) {
        String s = prefs(context).getString(KEY_LOG, "");
        return s.isEmpty() ? "클릭 기록 없음" : s;
    }

    public boolean isBatteryExempt(Context context) {
        PowerManager pm = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
        return pm != null && pm.isIgnoringBatteryOptimizations(context.getPackageName());
    }

    public String checkLine(Context context) {
        return "점검  접근성 " + mark(isAccessibilityEnabled(context))
                + "  오버레이 " + mark(Settings.canDrawOverlays(context))
                + "  배터리 " + mark(isBatteryExempt(context))
                + "  동기화 " + mark(ServerClock.INSTANCE.isReady());
    }

    private static String mark(boolean ok) {
        return ok ? "✔" : "✘";
    }

    public String statusLine(Context context) {
        if (!ServerClock.INSTANCE.isReady()) {
            return context.getString(id(context, "auto_click_need_sync", "string"));
        }
        ServerClock.Snapshot snap = ServerClock.INSTANCE.snapshot();
        if (snap == null) {
            return context.getString(id(context, "auto_click_need_sync", "string"));
        }
        long exact = nextExact(snap.getServerNowMs(), snap.getRttMs());
        long pressAt = exact - leadMs(snap.getRttMs());
        String time = formatPressAt(pressAt);
        if (!hasPosition(context)) {
            return context.getString(id(context, "auto_click_need_pos", "string")) + "  ·  " + time;
        }
        if (!isAccessibilityEnabled(context)) {
            return context.getString(id(context, "auto_click_need_a11y", "string")) + "  ·  " + time;
        }
        if (firedExact == exact) {
            return context.getString(id(context, "auto_click_done", "string")) + "  " + time;
        }
        if (isEnabled(context)) {
            return context.getString(id(context, "auto_click_armed", "string")) + "  " + time;
        }
        return "정각 " + time + " 에 누르기";
    }

    public String positionLine(Context context) {
        if (!hasPosition(context)) {
            return context.getString(id(context, "auto_click_pos_unset", "string"));
        }
        int x = Math.round(getX(context));
        int y = Math.round(getY(context));
        return context.getString(id(context, "auto_click_pos_set", "string"), x, y);
    }

    public void evaluate(Context context) {
        appContext = context.getApplicationContext();
        if (!hasPosition(context) || !isEnabled(context)) {
            cancelSchedule();
            return;
        }
        ServerClock.Snapshot snap = ServerClock.INSTANCE.snapshot();
        if (snap == null) {
            return;
        }
        long now = (long) snap.getServerNowMs();
        long exact = nextExact(snap.getServerNowMs(), snap.getRttMs());
        if (firedExact == exact) {
            return;
        }
        long untilExact = exact - now;
        {
            if (untilExact <= 300000L && untilExact > 240000L && preAlertExact != exact) {
                preAlertExact = exact;
                alertFiveMin(context);
            }
            if (untilExact <= 60000L && untilExact > 30000L && resyncExact != exact) {
                resyncExact = exact;
                AutoClickUi.INSTANCE.syncNow();
            }
        }
        long pressAt = exact - leadMs(snap.getRttMs());
        long remain = pressAt - now;
        if (remain <= 0) {
            if (now - pressAt <= 150L) {
                fireAt(exact, pressAt);
            }
            return;
        }
        if (remain <= 2000L && scheduledExact != exact) {
            scheduledExact = exact;
            scheduledPressAt = pressAt;
            handler.removeCallbacks(scheduledClick);
            handler.postAtTime(scheduledClick, SystemClock.uptimeMillis() + remain);
        }
    }

    private void alertFiveMin(Context context) {
        try {
            new ToneGenerator(AudioManager.STREAM_ALARM, 80).startTone(ToneGenerator.TONE_PROP_BEEP2, 400);
        } catch (Throwable ignored) {
        }
        toast(context, "자동 클릭 5분 전");
    }

    private void fireAt(long exact, long pressAt) {
        if (exact <= 0L || firedExact == exact) {
            return;
        }
        final Context context = appContext;
        if (context == null) {
            return;
        }
        if (!hasPosition(context) || !isEnabled(context)) {
            return;
        }
        AutoClickService service = AutoClickService.getInstance();
        if (service == null) {
            toast(context, context.getString(id(context, "auto_click_need_a11y", "string")));
            return;
        }
        firedExact = exact;
        scheduledExact = -1L;
        ServerClock.Snapshot snap = ServerClock.INSTANCE.snapshot();
        long actual = snap != null ? (long) snap.getServerNowMs() : pressAt;
        float x = getX(context);
        float y = getY(context);
        AutoClickOverlay.INSTANCE.hideMarker();
        boolean ok = service.click(x, y);
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                AutoClickOverlay.INSTANCE.syncMarker(context);
            }
        }, 400L);
        if (ok) {
            record(context, pressAt, actual);
            toast(context, context.getString(id(context, "auto_click_fired", "string"), formatPressAt(actual)));
        } else {
            firedExact = -1L;
            toast(context, context.getString(id(context, "auto_click_fail", "string")));
        }
    }

    public void cancelSchedule() {
        scheduledExact = -1L;
        scheduledPressAt = -1L;
        handler.removeCallbacks(scheduledClick);
    }

    /** App task removed or activity finished: disarm the click and remove every overlay. */
    public void onAppClosed(Context context) {
        setEnabled(context, false);
    }

    public void toast(Context context, String message) {
        Toast.makeText(context.getApplicationContext(), message, Toast.LENGTH_SHORT).show();
    }

    static int id(Context context, String name, String type) {
        return context.getResources().getIdentifier(name, type, context.getPackageName());
    }
}
