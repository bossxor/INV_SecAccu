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
import android.widget.LinearLayout;
import android.widget.TextView;

public final class AutoClickOverlay {
    public static final AutoClickOverlay INSTANCE = new AutoClickOverlay();

    private WindowManager windowManager;
    private View pickerView;
    private View markerView;
    private WindowManager.LayoutParams markerParams;
    private int barBottom;

    private AutoClickOverlay() {}

    public void startPicker(Context context) {
        Context app = context.getApplicationContext();
        if (!Settings.canDrawOverlays(app)) {
            AutoClickEngine.INSTANCE.toast(
                    app,
                    app.getString(AutoClickEngine.id(app, "auto_click_need_overlay", "string")));
            return;
        }
        hideAll();
        ensureWm(app);

        final FrameLayout root = new FrameLayout(app);
        root.setBackgroundColor(0x440B1020);

        LinearLayout bar = new LinearLayout(app);
        bar.setOrientation(LinearLayout.HORIZONTAL);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        GradientDrawable barBg = new GradientDrawable();
        barBg.setColor(0xF2151C2E);
        bar.setBackground(barBg);
        int pad = dp(app, 12);
        bar.setPadding(pad, dp(app, 36), pad, pad);

        TextView hint = new TextView(app);
        hint.setText(app.getString(AutoClickEngine.id(app, "auto_click_picker_hint", "string")));
        hint.setTextColor(0xFFF4F7FF);
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        LinearLayout.LayoutParams hintLp = new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f);
        hintLp.rightMargin = dp(app, 8);
        bar.addView(hint, hintLp);

        TextView close = new TextView(app);
        close.setText(app.getString(AutoClickEngine.id(app, "auto_click_close", "string")));
        close.setTextColor(0xFF0B1020);
        close.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f);
        close.setPadding(dp(app, 18), dp(app, 10), dp(app, 18), dp(app, 10));
        GradientDrawable closeBg = new GradientDrawable();
        closeBg.setColor(0xFF7CFFD0);
        closeBg.setCornerRadius(dp(app, 12));
        close.setBackground(closeBg);
        close.setClickable(true);
        close.setFocusable(true);
        View.OnClickListener closeAction = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hideAll();
            }
        };
        close.setOnClickListener(closeAction);
        close.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == MotionEvent.ACTION_UP
                        || event.getAction() == MotionEvent.ACTION_CANCEL) {
                    hideAll();
                    return true;
                }
                return true;
            }
        });
        bar.addView(close, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT));
        bar.measure(
                View.MeasureSpec.makeMeasureSpec(app.getResources().getDisplayMetrics().widthPixels, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        barBottom = bar.getMeasuredHeight();
        if (barBottom < dp(app, 72)) {
            barBottom = dp(app, 72);
        }

        root.addView(bar, new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.WRAP_CONTENT,
                Gravity.TOP));

        root.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getY() <= barBottom) {
                    return false;
                }
                int action = event.getAction();
                if (action == MotionEvent.ACTION_UP) {
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
                return action == MotionEvent.ACTION_DOWN;
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

    public void hideAll() {
        hidePicker();
        hideMarker();
    }

    public void showMarker(Context context, float x, float y) {
        Context app = context.getApplicationContext();
        if (!Settings.canDrawOverlays(app)) {
            return;
        }
        if (!AutoClickEngine.INSTANCE.isEnabled(app)) {
            hideMarker();
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
        if (AutoClickEngine.INSTANCE.isEnabled(context) && AutoClickEngine.INSTANCE.hasPosition(context)) {
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
        if (view == null) {
            return;
        }
        ensureWm(view.getContext());
        if (windowManager == null) {
            return;
        }
        try {
            windowManager.removeViewImmediate(view);
        } catch (Throwable first) {
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
