package com.secaccu.clock;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
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

    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Runnable scheduledClick = new Runnable() {
        @Override
        public void run() {
            fireScheduled();
        }
    };

    private volatile long firedPressAt = -1L;
    private volatile long scheduledPressAt = -1L;
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
            firedPressAt = -1L;
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

    public long nextPressAtMs(double serverNowMs, double rttMs) {
        return PressHintFormatter.nextPressAtMs(serverNowMs, rttMs);
    }

    public String formatPressAt(long pressAtMs) {
        SimpleDateFormat fmt = new SimpleDateFormat("HH:mm:ss.SSS", Locale.KOREA);
        fmt.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
        return fmt.format(new Date(pressAtMs));
    }

    public String statusLine(Context context) {
        if (!ServerClock.INSTANCE.isReady()) {
            return context.getString(id(context, "auto_click_need_sync", "string"));
        }
        ServerClock.Snapshot snap = ServerClock.INSTANCE.snapshot();
        if (snap == null) {
            return context.getString(id(context, "auto_click_need_sync", "string"));
        }
        long pressAt = nextPressAtMs(snap.getServerNowMs(), snap.getRttMs());
        String time = formatPressAt(pressAt);
        if (!hasPosition(context)) {
            return context.getString(id(context, "auto_click_need_pos", "string")) + "  ·  " + time;
        }
        if (!isAccessibilityEnabled(context)) {
            return context.getString(id(context, "auto_click_need_a11y", "string")) + "  ·  " + time;
        }
        if (firedPressAt == pressAt) {
            return context.getString(id(context, "auto_click_done", "string")) + "  " + time;
        }
        if (isEnabled(context)) {
            return context.getString(id(context, "auto_click_armed", "string")) + "  " + time;
        }
        return "정각 접속 " + time + " 에 누르기";
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
        if (!isEnabled(context) || !hasPosition(context)) {
            cancelSchedule();
            return;
        }
        ServerClock.Snapshot snap = ServerClock.INSTANCE.snapshot();
        if (snap == null) {
            return;
        }
        long now = (long) snap.getServerNowMs();
        long pressAt = nextPressAtMs(snap.getServerNowMs(), snap.getRttMs());
        if (firedPressAt == pressAt) {
            return;
        }
        long remain = pressAt - now;
        if (remain <= 0) {
            if (now - pressAt <= 150L) {
                fireAt(pressAt);
            }
            return;
        }
        if (remain <= 2000L && scheduledPressAt != pressAt) {
            scheduledPressAt = pressAt;
            handler.removeCallbacks(scheduledClick);
            handler.postAtTime(scheduledClick, SystemClock.uptimeMillis() + remain);
        }
    }

    private void fireScheduled() {
        fireAt(scheduledPressAt);
    }

    private void fireAt(long pressAt) {
        if (pressAt <= 0L || firedPressAt == pressAt) {
            return;
        }
        Context context = appContext;
        if (context == null) {
            return;
        }
        if (!isEnabled(context) || !hasPosition(context)) {
            return;
        }
        AutoClickService service = AutoClickService.getInstance();
        if (service == null) {
            toast(context, context.getString(id(context, "auto_click_need_a11y", "string")));
            return;
        }
        firedPressAt = pressAt;
        scheduledPressAt = -1L;
        float x = getX(context);
        float y = getY(context);
        AutoClickOverlay.INSTANCE.hideMarker();
        boolean ok = service.click(x, y);
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (hasPosition(context)) {
                    AutoClickOverlay.INSTANCE.showMarker(context, getX(context), getY(context));
                }
            }
        }, 400L);
        if (ok) {
            toast(context, context.getString(id(context, "auto_click_fired", "string"), formatPressAt(pressAt)));
        } else {
            firedPressAt = -1L;
            toast(context, context.getString(id(context, "auto_click_fail", "string")));
        }
    }

    public void cancelSchedule() {
        scheduledPressAt = -1L;
        handler.removeCallbacks(scheduledClick);
    }

    public void toast(Context context, String message) {
        Toast.makeText(context.getApplicationContext(), message, Toast.LENGTH_SHORT).show();
    }

    static int id(Context context, String name, String type) {
        return context.getResources().getIdentifier(name, type, context.getPackageName());
    }
}
