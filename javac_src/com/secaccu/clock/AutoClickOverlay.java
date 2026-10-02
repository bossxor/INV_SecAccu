package com.secaccu.clock;

import android.content.Context;
import android.content.Intent;
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
    private TextView pickerHint;
    private View markerView;
    private WindowManager.LayoutParams markerParams;

    private AutoClickOverlay() {}

    /** Transparent full-screen touch layer over the target app; releasing the finger saves the spot and returns to the app. */
    public boolean startPicker(Context context) {
        final Context app = context.getApplicationContext();
        if (!Settings.canDrawOverlays(app)) {
            AutoClickEngine.INSTANCE.toast(
                    app,
                    app.getString(AutoClickEngine.id(app, "auto_click_need_overlay", "string")));
            return false;
        }
        hideAll();
        ensureWm(app);

        final FrameLayout root = new FrameLayout(app);
        root.setBackgroundColor(0x1A000000);

        final TextView info = new TextView(app);
        info.setText(app.getString(AutoClickEngine.id(app, "auto_click_picker_hint", "string")));
        info.setTextColor(0xFFF4F7FF);
        info.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        info.setPadding(dp(app, 12), dp(app, 6), dp(app, 12), dp(app, 6));
        GradientDrawable infoBg = new GradientDrawable();
        infoBg.setColor(0xCC151C2E);
        infoBg.setCornerRadius(dp(app, 12));
        info.setBackground(infoBg);
        FrameLayout.LayoutParams infoLp = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.WRAP_CONTENT,
                FrameLayout.LayoutParams.WRAP_CONTENT,
                Gravity.TOP | Gravity.CENTER_HORIZONTAL);
        infoLp.topMargin = dp(app, 40);
        root.addView(info, infoLp);
        pickerHint = info;

        root.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                int action = event.getAction();
                float rx = event.getRawX();
                float ry = event.getRawY();
                if (action == MotionEvent.ACTION_CANCEL) {
                    hideMarker();
                    return true;
                }
                if (pickerHint != null) {
                    pickerHint.setText(Math.round(rx) + ", " + Math.round(ry));
                }
                if (action == MotionEvent.ACTION_UP) {
                    AutoClickEngine.INSTANCE.setPosition(app, rx, ry);
                    finishPicker(app);
                } else {
                    showMarker(app, rx, ry);
                }
                return true;
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
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    public void hidePicker() {
        removeView(pickerView);
        pickerView = null;
        pickerHint = null;
    }

    private void finishPicker(Context app) {
        hidePicker();
        syncMarker(app);
        try {
            Intent intent = app.getPackageManager().getLaunchIntentForPackage(app.getPackageName());
            if (intent != null) {
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                app.startActivity(intent);
            }
        } catch (Throwable ignored) {
        }
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
        if (pickerView == null && !AutoClickEngine.INSTANCE.isEnabled(app)) {
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
            cross.setOnTouchListener(new View.OnTouchListener() {
                private float offX;
                private float offY;

                @Override
                public boolean onTouch(View v, MotionEvent event) {
                    WindowManager.LayoutParams p = markerParams;
                    if (p == null || markerView == null) {
                        return false;
                    }
                    float half = p.width / 2f;
                    int action = event.getAction();
                    if (action == MotionEvent.ACTION_DOWN) {
                        offX = p.x + half - event.getRawX();
                        offY = p.y + half - event.getRawY();
                        return true;
                    }
                    float cx = event.getRawX() + offX;
                    float cy = event.getRawY() + offY;
                    if (action == MotionEvent.ACTION_MOVE) {
                        p.x = Math.round(cx - half);
                        p.y = Math.round(cy - half);
                        try {
                            windowManager.updateViewLayout(markerView, p);
                        } catch (Throwable ignored) {
                        }
                    } else if (action == MotionEvent.ACTION_UP) {
                        AutoClickEngine.INSTANCE.setPosition(app, cx, cy);
                    }
                    return true;
                }
            });
            WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                    size,
                    size,
                    overlayType(),
                    WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
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
