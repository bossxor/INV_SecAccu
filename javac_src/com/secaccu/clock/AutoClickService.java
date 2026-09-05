package com.secaccu.clock;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.GestureDescription;
import android.graphics.Path;
import android.os.Handler;
import android.os.Looper;
import android.view.accessibility.AccessibilityEvent;

public class AutoClickService extends AccessibilityService {
    private static volatile AutoClickService instance;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Runnable tick = new Runnable() {
        @Override
        public void run() {
            AutoClickEngine.INSTANCE.evaluate(AutoClickService.this);
            if (instance != null) {
                handler.postDelayed(this, 8L);
            }
        }
    };

    public static AutoClickService getInstance() {
        return instance;
    }

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
    }

    @Override
    public void onInterrupt() {
    }

    @Override
    protected void onServiceConnected() {
        super.onServiceConnected();
        instance = this;
        handler.removeCallbacks(tick);
        handler.post(tick);
    }

    @Override
    public void onDestroy() {
        instance = null;
        handler.removeCallbacks(tick);
        AutoClickEngine.INSTANCE.cancelSchedule();
        super.onDestroy();
    }

    public boolean click(float x, float y) {
        if (x < 0f || y < 0f) {
            return false;
        }
        Path path = new Path();
        path.moveTo(x, y);
        GestureDescription.StrokeDescription stroke =
                new GestureDescription.StrokeDescription(path, 0L, 16L);
        GestureDescription gesture = new GestureDescription.Builder()
                .addStroke(stroke)
                .build();
        return dispatchGesture(gesture, null, null);
    }
}
