package com.secaccu.clock;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.provider.Settings;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;

public final class AutoClickOverlay {
    public static final AutoClickOverlay INSTANCE = new AutoClickOverlay();

    private WindowManager windowManager;
    private View pickerView;
    private View markerView;
    private WindowManager.LayoutParams markerParams;

    private AutoClickOverlay() {}

    public void startPicker(Context context) {
        Context app = context.getApplicationContext();
        if (!Settings.canDrawOverlays(app)) {
            AutoClickEngine.INSTANCE.toast(
                    app,
                    app.getString(AutoClickEngine.id(app, "auto_click_need_overlay", "string")));
            return;
        }
        hidePicker();
        ensureWm(app);
        FrameLayout root = new FrameLayout(app);
        root.setBackgroundColor(0x660B1020);
        TextView hint = new TextView(app);
        hint.setText(app.getString(AutoClickEngine.id(app, "auto_click_picker_hint", "string")));
        hint.setTextColor(0xFFF4F7FF);
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f);
        hint.setGravity(Gravity.CENTER);
        hint.setPadding(dp(app, 20), dp(app, 28), dp(app, 20), dp(app, 16));
        FrameLayout.LayoutParams hintLp = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.WRAP_CONTENT,
                Gravity.TOP);
        root.addView(hint, hintLp);

        TextView cancel = new TextView(app);
        cancel.setText(app.getString(AutoClickEngine.id(app, "cancel", "string")));
        cancel.setTextColor(0xFF7CFFD0);
        cancel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        cancel.setPadding(dp(app, 18), dp(app, 12), dp(app, 18), dp(app, 12));
        FrameLayout.LayoutParams cancelLp = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.WRAP_CONTENT,
                FrameLayout.LayoutParams.WRAP_CONTENT,
                Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL);
        cancelLp.bottomMargin = dp(app, 36);
        root.addView(cancel, cancelLp);
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hidePicker();
            }
        });

        root.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == MotionEvent.ACTION_UP) {
                    AutoClickEngine.INSTANCE.setPosition(app, event.getRawX(), event.getRawY());
                    hidePicker();
                    AutoClickEngine.INSTANCE.toast(
                            app,
                            app.getString(
                                    AutoClickEngine.id(app, "auto_click_pos_set", "string"),
                                    Math.round(event.getRawX()),
                                    Math.round(event.getRawY())));
                    return true;
                }
                return event.getAction() == MotionEvent.ACTION_DOWN;
            }
        });

        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.MATCH_PARENT,
                overlayType(),
                WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
                        | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,
                PixelFormat.TRANSLUCENT);
        params.gravity = Gravity.TOP | Gravity.START;
        try {
            windowManager.addView(root, params);
            pickerView = root;
        } catch (Throwable ignored) {
        }
    }

    public void hidePicker() {
        removeView(pickerView);
        pickerView = null;
    }

    public void showMarker(Context context, float x, float y) {
        Context app = context.getApplicationContext();
        if (!Settings.canDrawOverlays(app)) {
            return;
        }
        ensureWm(app);
        int size = dp(app, 28);
        if (markerView == null) {
            View cross = new View(app);
            GradientDrawable ring = new GradientDrawable();
            ring.setShape(GradientDrawable.OVAL);
            ring.setColor(Color.TRANSPARENT);
            ring.setStroke(dp(app, 2), 0xE07CFFD0);
            cross.setBackground(ring);
            WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                    size,
                    size,
                    overlayType(),
                    WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                            | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
                            | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
                            | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,
                    PixelFormat.TRANSLUCENT);
            params.gravity = Gravity.TOP | Gravity.START;
            markerParams = params;
            try {
                windowManager.addView(cross, params);
                markerView = cross;
            } catch (Throwable ignored) {
                return;
            }
        }
        if (markerParams != null && markerView != null) {
            markerParams.x = Math.round(x) - size / 2;
            markerParams.y = Math.round(y) - size / 2;
            try {
                windowManager.updateViewLayout(markerView, markerParams);
            } catch (Throwable ignored) {
            }
        }
    }

    public void hideMarker() {
        removeView(markerView);
        markerView = null;
        markerParams = null;
    }

    public void syncMarker(Context context) {
        if (AutoClickEngine.INSTANCE.hasPosition(context)) {
            showMarker(context, AutoClickEngine.INSTANCE.getX(context), AutoClickEngine.INSTANCE.getY(context));
        } else {
            hideMarker();
        }
    }

    private void ensureWm(Context app) {
        if (windowManager == null) {
            windowManager = (WindowManager) app.getSystemService(Context.WINDOW_SERVICE);
        }
    }

    private void removeView(View view) {
        if (view != null && windowManager != null) {
            try {
                windowManager.removeView(view);
            } catch (Throwable ignored) {
            }
        }
    }

    private static int overlayType() {
        if (Build.VERSION.SDK_INT >= 26) {
            return WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        }
        return WindowManager.LayoutParams.TYPE_PHONE;
    }

    private static int dp(Context context, int value) {
        return Math.round(value * context.getResources().getDisplayMetrics().density);
    }
}
