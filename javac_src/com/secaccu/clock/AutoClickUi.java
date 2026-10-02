package com.secaccu.clock;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.lang.ref.WeakReference;

public final class AutoClickUi {
    public static final AutoClickUi INSTANCE = new AutoClickUi();

    private static final int PCT = 0;
    private static final int ADJ = 1;

    private CompoundButton enabledSwitch;
    private TextView targetView;
    private TextView posView;
    private TextView hintView;
    private Button pickButton;
    private Button a11yButton;
    private TextView pctView;
    private TextView adjView;
    private TextView calcView;
    private TextView logView;
    private TextView checkView;
    private WeakReference<Activity> activityRef;

    private AutoClickUi() {}

    public void attach(final Activity activity) {
        activityRef = new WeakReference<Activity>(activity);
        enabledSwitch = (CompoundButton) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickSwitch", "id"));
        targetView = (TextView) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickTarget", "id"));
        posView = (TextView) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickPosLabel", "id"));
        hintView = (TextView) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickHint", "id"));
        pickButton = (Button) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickPickButton", "id"));
        a11yButton = (Button) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickA11yButton", "id"));
        AutoClickOverlay.INSTANCE.hidePicker();
        if (enabledSwitch == null) {
            return;
        }
        addExtraBlock(activity);

        enabledSwitch.setOnCheckedChangeListener(null);
        enabledSwitch.setChecked(AutoClickEngine.INSTANCE.isEnabled(activity));
        enabledSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked) {
                    if (!AutoClickEngine.INSTANCE.hasPosition(activity)) {
                        enabledSwitch.setChecked(false);
                        AutoClickEngine.INSTANCE.toast(
                                activity,
                                activity.getString(AutoClickEngine.id(activity, "auto_click_need_pos", "string")));
                        return;
                    }
                    if (!AutoClickEngine.INSTANCE.isAccessibilityEnabled(activity)) {
                        enabledSwitch.setChecked(false);
                        openAccessibilitySettings(activity);
                        AutoClickEngine.INSTANCE.toast(
                                activity,
                                activity.getString(AutoClickEngine.id(activity, "auto_click_need_a11y", "string")));
                        return;
                    }
                    AutoClickEngine.INSTANCE.setEnabled(activity, true);
                    AutoClickOverlay.INSTANCE.syncMarker(activity);
                } else {
                    AutoClickEngine.INSTANCE.setEnabled(activity, false);
                    AutoClickOverlay.INSTANCE.hideAll();
                }
                refresh(activity);
            }
        });

        if (pickButton != null) {
            pickButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (!Settings.canDrawOverlays(activity)) {
                        Intent intent = new Intent(
                                Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                                Uri.parse("package:" + activity.getPackageName()));
                        activity.startActivity(intent);
                        AutoClickEngine.INSTANCE.toast(
                                activity,
                                activity.getString(AutoClickEngine.id(activity, "auto_click_need_overlay", "string")));
                        return;
                    }
                    // Hide this app so the overlay sits on the real target app.
                    if (AutoClickOverlay.INSTANCE.startPicker(activity)) {
                        activity.moveTaskToBack(true);
                    }
                }
            });
        }
        if (a11yButton != null) {
            a11yButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    openAccessibilitySettings(activity);
                }
            });
        }
        refresh(activity);
    }

    /** Lead calculation, calibration knobs, practice tap, result log and checklist under the hint. */
    private void addExtraBlock(final Activity activity) {
        if (hintView == null || !(hintView.getParent() instanceof ViewGroup)) {
            return;
        }
        ViewGroup parent = (ViewGroup) hintView.getParent();
        View old = parent.findViewWithTag("extraBlock");
        if (old != null) {
            parent.removeView(old);
        }
        LinearLayout box = new LinearLayout(activity);
        box.setTag("extraBlock");
        box.setOrientation(LinearLayout.VERTICAL);

        calcView = text(activity, 13f);
        box.addView(calcView);
        pctView = new TextView(activity);
        box.addView(stepRow(activity, "반영 비율 (RTT/2의)", PCT, 10, pctView));
        adjView = new TextView(activity);
        box.addView(stepRow(activity, "보정(ms)", ADJ, 1, adjView));

        Button test = new Button(activity);
        test.setText("연습 탭 (10초 단위 정각에 지정 위치 탭)");
        test.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AutoClickEngine.INSTANCE.startTest(activity);
                refresh(activity);
            }
        });
        box.addView(test);

        logView = text(activity, 12f);
        box.addView(logView);
        checkView = text(activity, 12f);
        checkView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    activity.startActivity(new Intent(Settings.ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS));
                } catch (Throwable ignored) {
                }
            }
        });
        box.addView(checkView);

        parent.addView(box, parent.indexOfChild(hintView) + 1);
        showExtra(activity);
    }

    private TextView text(Activity activity, float sp) {
        TextView t = new TextView(activity);
        t.setTextColor(posView.getTextColors());
        t.setTextSize(sp);
        t.setPadding(0, dp(activity, 4), 0, dp(activity, 4));
        return t;
    }

    private View stepRow(final Activity activity, String label, final int which, final int step, TextView value) {
        LinearLayout row = new LinearLayout(activity);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        TextView l = text(activity, 13f);
        l.setText(label);
        row.addView(l, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        row.addView(stepButton(activity, "−", which, -step));
        value.setTextColor(posView.getTextColors());
        value.setTextSize(15f);
        value.setGravity(Gravity.CENTER);
        row.addView(value, new LinearLayout.LayoutParams(dp(activity, 64), ViewGroup.LayoutParams.WRAP_CONTENT));
        row.addView(stepButton(activity, "+", which, step));
        return row;
    }

    private Button stepButton(final Activity activity, String label, final int which, final int delta) {
        Button b = new Button(activity);
        b.setText(label);
        b.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AutoClickEngine e = AutoClickEngine.INSTANCE;
                if (which == PCT) {
                    e.setPct(activity, e.getPct(activity) + delta);
                } else {
                    e.setAdj(activity, e.getAdj(activity) + delta);
                }
                refresh(activity);
            }
        });
        return b;
    }

    private void showExtra(Activity activity) {
        AutoClickEngine e = AutoClickEngine.INSTANCE;
        if (pctView != null) {
            pctView.setText(e.getPct(activity) + "%");
        }
        if (adjView != null) {
            int a = e.getAdj(activity);
            adjView.setText((a > 0 ? "+" : "") + a + "ms");
        }
        if (calcView != null) {
            calcView.setText(e.calcLine(activity));
        }
        if (logView != null) {
            logView.setText(e.historyLine(activity));
        }
        if (checkView != null) {
            checkView.setText(e.checkLine(activity));
        }
    }

    /** Called from the engine ~60s before the target: re-run the server time sync of the main screen. */
    public void syncNow() {
        Activity a = activityRef != null ? activityRef.get() : null;
        if (a == null) {
            return;
        }
        try {
            java.lang.reflect.Method m = a.getClass().getDeclaredMethod("syncNow");
            m.setAccessible(true);
            m.invoke(a);
        } catch (Throwable ignored) {
        }
    }

    private static int dp(Activity activity, int v) {
        return Math.round(v * activity.getResources().getDisplayMetrics().density);
    }

    public void refresh(Activity activity) {
        if (targetView != null) {
            targetView.setText(AutoClickEngine.INSTANCE.statusLine(activity));
        }
        if (posView != null) {
            posView.setText(AutoClickEngine.INSTANCE.positionLine(activity));
        }
        if (enabledSwitch != null
                && enabledSwitch.isChecked() != AutoClickEngine.INSTANCE.isEnabled(activity)) {
            enabledSwitch.setOnCheckedChangeListener(null);
            enabledSwitch.setChecked(AutoClickEngine.INSTANCE.isEnabled(activity));
            attach(activity);
        }
        if (a11yButton != null) {
            boolean enabled = AutoClickEngine.INSTANCE.isAccessibilityEnabled(activity);
            a11yButton.setText(activity.getString(
                    AutoClickEngine.id(
                            activity,
                            enabled ? "auto_click_a11y_on" : "auto_click_a11y",
                            "string")));
        }
        showExtra(activity);
        AutoClickOverlay.INSTANCE.syncMarker(activity);
    }

    public void onTick(Activity activity) {
        AutoClickEngine.INSTANCE.evaluate(activity);
        if (targetView != null) {
            targetView.setText(AutoClickEngine.INSTANCE.statusLine(activity));
        }
        showExtra(activity);
    }

    private void openAccessibilitySettings(Activity activity) {
        try {
            activity.startActivity(new Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS));
        } catch (Throwable ignored) {
        }
    }
}
