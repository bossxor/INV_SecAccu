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
    private static final String KEY_PCT = "auto_click_pct";
    private static final String KEY_ADJ = "auto_click_adj";
    private static final String KEY_LOG = "auto_click_log";
    public static final int DEFAULT_PCT = 50;
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
    private volatile long testExact = -1L;
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
            testExact = -1L;
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

    // ---- press time: exact target minus a lead computed from the measured RTT ----

    /** Percent of the one-way delay (RTT/2) to send early: 0 = at exact time, 100 = arrives exactly on time. */
    public int getPct(Context context) {
        return prefs(context).getInt(KEY_PCT, DEFAULT_PCT);
    }

    public void setPct(Context context, int pct) {
        prefs(context).edit().putInt(KEY_PCT, Math.max(0, Math.min(100, pct))).apply();
    }

    /** Manual calibration (ms, may be negative) for the gesture-dispatch delay of this phone. */
    public int getAdj(Context context) {
        return prefs(context).getInt(KEY_ADJ, 0);
    }

    public void setAdj(Context context, int adj) {
        prefs(context).edit().putInt(KEY_ADJ, Math.max(-50, Math.min(50, adj))).apply();
    }

    public static long leadFor(double rttMs, int pct, int adj) {
        return Math.max(0L, Math.round(rttMs / 2.0 * pct / 100.0) + adj);
    }

    private long leadMs(Context context, double rttMs) {
        return leadFor(rttMs, getPct(context), getAdj(context));
    }

    /** Next target on the server clock: the exact one, or the practice one while a test is pending. */
    private long nextExact(double serverNowMs, double rttMs) {
        long t = testExact;
        return t > 0L ? t : PressHintFormatter.nextPressAtMs(serverNowMs, rttMs);
    }

    public String formatPressAt(long pressAtMs) {
        SimpleDateFormat fmt = new SimpleDateFormat("HH:mm:ss.SSS", Locale.KOREA);
        fmt.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
        return fmt.format(new Date(pressAtMs));
    }

    /** Pressing at "arrive" makes the server see exactly the target; the app presses at "press". */
    public String calcLine(Context context) {
        ServerClock.Snapshot snap = ServerClock.INSTANCE.isReady() ? ServerClock.INSTANCE.snapshot() : null;
        if (snap == null) {
            return "";
        }
        long exact = nextExact(snap.getServerNowMs(), snap.getRttMs());
        long arrive = exact - Math.round(snap.getRttMs() / 2.0);
        long press = exact - leadMs(context, snap.getRttMs());
        return "RTT " + Math.round(snap.getRttMs()) + "ms  ·  서버 정각 도착 "
                + formatPressAt(arrive) + "\n누름 " + formatPressAt(press);
    }

    // ---- practice tap / result log / checklist ----

    /** Tap the saved position at the next 10s boundary (at least 8s away) to measure the real timing. */
    public void startTest(Context context) {
        ServerClock.Snapshot snap = ServerClock.INSTANCE.isReady() ? ServerClock.INSTANCE.snapshot() : null;
        if (snap == null || !hasPosition(context)) {
            toast(context, context.getString(id(context, snap == null ? "auto_click_need_sync" : "auto_click_need_pos", "string")));
            return;
        }
        long now = (long) snap.getServerNowMs();
        long t = (now / 10000L + 1L) * 10000L;
        if (t - now < 8000L) {
            t += 10000L;
        }
        testExact = t;
        toast(context, "연습 탭 " + formatPressAt(t));
    }

    private void record(Context context, long pressAt, long actual, boolean test) {
        String line = (test ? "[연습] " : "") + "목표 " + formatPressAt(pressAt)
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
        long pressAt = exact - leadMs(context, snap.getRttMs());
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
        if (testExact > 0L) {
            return "연습 탭 대기  " + time;
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
        boolean test = testExact > 0L;
        if (!hasPosition(context) || (!test && !isEnabled(context))) {
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
        if (!test) {
            if (untilExact <= 300000L && untilExact > 240000L && preAlertExact != exact) {
                preAlertExact = exact;
                alertFiveMin(context);
            }
            if (untilExact <= 60000L && untilExact > 30000L && resyncExact != exact) {
                resyncExact = exact;
                AutoClickUi.INSTANCE.syncNow();
            }
        }
        long pressAt = exact - leadMs(context, snap.getRttMs());
        long remain = pressAt - now;
        if (remain <= 0) {
            if (now - pressAt <= 150L) {
                fireAt(exact, pressAt);
            } else if (test) {
                testExact = -1L;
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
        boolean test = exact == testExact;
        if (!hasPosition(context) || (!test && !isEnabled(context))) {
            return;
        }
        AutoClickService service = AutoClickService.getInstance();
        if (service == null) {
            toast(context, context.getString(id(context, "auto_click_need_a11y", "string")));
            if (test) {
                testExact = -1L;
            }
            return;
        }
        firedExact = exact;
        scheduledExact = -1L;
        if (test) {
            testExact = -1L;
        }
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
            record(context, pressAt, actual, test);
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
