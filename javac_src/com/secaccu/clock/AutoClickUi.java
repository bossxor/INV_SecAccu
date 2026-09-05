package com.secaccu.clock;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.materialswitch.MaterialSwitch;

public final class AutoClickUi {
    public static final AutoClickUi INSTANCE = new AutoClickUi();

    private MaterialSwitch enabledSwitch;
    private TextView targetView;
    private TextView posView;
    private TextView hintView;
    private MaterialButton pickButton;
    private MaterialButton a11yButton;

    private AutoClickUi() {}

    public void attach(final Activity activity) {
        enabledSwitch = (MaterialSwitch) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickSwitch", "id"));
        targetView = (TextView) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickTarget", "id"));
        posView = (TextView) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickPosLabel", "id"));
        hintView = (TextView) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickHint", "id"));
        pickButton = (MaterialButton) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickPickButton", "id"));
        a11yButton = (MaterialButton) activity.findViewById(
                AutoClickEngine.id(activity, "autoClickA11yButton", "id"));
        AutoClickOverlay.INSTANCE.hidePicker();
        if (enabledSwitch == null) {
            return;
        }

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
                    AutoClickOverlay.INSTANCE.startPicker(activity);
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
        AutoClickOverlay.INSTANCE.syncMarker(activity);
    }

    public void onTick(Activity activity) {
        AutoClickEngine.INSTANCE.evaluate(activity);
        if (targetView != null) {
            targetView.setText(AutoClickEngine.INSTANCE.statusLine(activity));
        }
    }

    private void openAccessibilitySettings(Activity activity) {
        try {
            activity.startActivity(new Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS));
        } catch (Throwable ignored) {
        }
    }
}
