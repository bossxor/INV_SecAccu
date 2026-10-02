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
    private int barBottom;
    // picker drag state
    private float curX;
    private float curY;
    private float offX;
    private float offY;
    private boolean tracking;

    private AutoClickOverlay() {}

    /** Shows the pick bar over whatever app is below; returns false if it could not be shown. */
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
        if (AutoClickEngine.INSTANCE.hasPosition(app)) {
            curX = AutoClickEngine.INSTANCE.getX(app);
            curY = AutoClickEngine.INSTANCE.getY(app);
        } else {
            curX = -1f;
            curY = -1f;
        }

        final FrameLayout root = new FrameLayout(app);
        root.setBackgroundColor(0x1A000000);

        LinearLayout bar = new LinearLayout(app);
        bar.setOrientation(LinearLayout.VERTICAL);
        GradientDrawable barBg = new GradientDrawable();
        barBg.setColor(0xF2151C2E);
        bar.setBackground(barBg);
        int pad = dp(app, 12);
        bar.setPadding(pad, dp(app, 36), pad, pad);

        LinearLayout row1 = new LinearLayout(app);
        row1.setOrientation(LinearLayout.HORIZONTAL);
        row1.setGravity(Gravity.CENTER_VERTICAL);

        TextView hint = new TextView(app);
        hint.setText(app.getString(AutoClickEngine.id(app, "auto_click_picker_hint", "string")));
        hint.setTextColor(0xFFF4F7FF);
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        pickerHint = hint;
        LinearLayout.LayoutParams hintLp = new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f);
        hintLp.rightMargin = dp(app, 8);
        row1.addView(hint, hintLp);

        row1.addView(button(app, app.getString(AutoClickEngine.id(app, "auto_click_close", "string")), 0xFF7CFFD0, 16f,
                new Runnable() {
                    @Override
                    public void run() {
                        finishPicker(app);
                    }
                }));
        bar.addView(row1, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

        LinearLayout row2 = new LinearLayout(app);
        row2.setOrientation(LinearLayout.HORIZONTAL);
        row2.setGravity(Gravity.CENTER);
        row2.setPadding(0, dp(app, 8), 0, 0);
        row2.addView(nudge(app, "◀", -1, 0));
        row2.addView(nudge(app, "▲", 0, -1));
        row2.addView(nudge(app, "▼", 0, 1));
        row2.addView(nudge(app, "▶", 1, 0));
        bar.addView(row2, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT));

        bar.measure(
                View.MeasureSpec.makeMeasureSpec(app.getResources().getDisplayMetrics().widthPixels, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        barBottom = Math.max(bar.getMeasuredHeight(), dp(app, 72));

        root.addView(bar, new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.WRAP_CONTENT,
                Gravity.TOP));

        // Touch near the ring drags it (keeps the finger offset); touch elsewhere moves it there.
        root.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                int action = event.getAction();
                float rx = event.getRawX();
                float ry = event.getRawY();
                if (action == MotionEvent.ACTION_DOWN) {
                    if (event.getY() <= barBottom) {
                        tracking = false;
                        return false;
                    }
                    tracking = true;
                    float dx = curX - rx;
                    float dy = curY - ry;
                    boolean onRing = curX >= 0f && dx * dx + dy * dy <= Math.pow(dp(app, 56), 2);
                    offX = onRing ? dx : 0f;
                    offY = onRing ? dy : 0f;
                } else if (!tracking) {
                    return false;
                }
                curX = rx + offX;
                curY = ry + offY;
                if (action == MotionEvent.ACTION_UP) {
                    tracking = false;
                    commit(app);
                } else if (action == MotionEvent.ACTION_CANCEL) {
                    tracking = false;
                } else {
                    showMarker(app, curX, curY);
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
            if (curX >= 0f) {
                showMarker(app, curX, curY);
            }
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    /** Save the dragged position and show the coordinates in the bar. */
    private void commit(Context app) {
        AutoClickEngine.INSTANCE.setPosition(app, curX, curY);
        if (pickerHint != null) {
            pickerHint.setText(AutoClickEngine.INSTANCE.positionLine(app)
                    + "  ·  " + app.getString(AutoClickEngine.id(app, "auto_click_picker_hint", "string")));
        }
    }

    private View nudge(final Context app, String label, final int dx, final int dy) {
        View b = button(app, label, 0xFFDDE6FF, 18f, new Runnable() {
            @Override
            public void run() {
                if (curX < 0f) {
                    curX = app.getResources().getDisplayMetrics().widthPixels / 2f;
                    curY = app.getResources().getDisplayMetrics().heightPixels / 2f;
                }
                curX += dx;
                curY += dy;
                commit(app);
            }
        });
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f);
        lp.leftMargin = dp(app, 4);
        lp.rightMargin = dp(app, 4);
        b.setLayoutParams(lp);
        return b;
    }

    private View button(Context app, String label, int color, float sp, final Runnable action) {
        TextView t = new TextView(app);
        t.setText(label);
        t.setGravity(Gravity.CENTER);
        t.setTextColor(0xFF0B1020);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        t.setPadding(dp(app, 18), dp(app, 10), dp(app, 18), dp(app, 10));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(color);
        bg.setCornerRadius(dp(app, 12));
        t.setBackground(bg);
        t.setClickable(true);
        t.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == MotionEvent.ACTION_UP) {
                    action.run();
                }
                return true;
            }
        });
        return t;
    }

    public void hidePicker() {
        removeView(pickerView);
        pickerView = null;
        pickerHint = null;
        tracking = false;
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
