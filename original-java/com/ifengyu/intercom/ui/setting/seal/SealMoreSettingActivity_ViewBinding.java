package com.ifengyu.intercom.ui.setting.seal;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.setting.seal.SealMoreSettingActivity;

public class SealMoreSettingActivity_ViewBinding<T extends SealMoreSettingActivity> implements Unbinder {
    protected T a;
    private View b;
    private View c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;

    @UiThread
    public SealMoreSettingActivity_ViewBinding(final T t, View view) {
        this.a = t;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_bar_left, "field 'titleBarLeft' and method 'onClick'");
        t.titleBarLeft = (ImageView) Utils.castView(findRequiredView, R.id.title_bar_left, "field 'titleBarLeft'", ImageView.class);
        this.b = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
        t.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        t.voicePromptCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.voice_prompt_checkBox, "field 'voicePromptCheckBox'", CheckBox.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.voice_prompt, "field 'voicePrompt' and method 'onClick'");
        t.voicePrompt = (LinearLayout) Utils.castView(findRequiredView2, R.id.voice_prompt, "field 'voicePrompt'", LinearLayout.class);
        this.c = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
        t.pwSaveModeCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.pw_save_mode_checkBox, "field 'pwSaveModeCheckBox'", CheckBox.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.pw_save_mode, "field 'pwSaveMode' and method 'onClick'");
        t.pwSaveMode = (LinearLayout) Utils.castView(findRequiredView3, R.id.pw_save_mode, "field 'pwSaveMode'", LinearLayout.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
        t.stopTransIfBusyCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.stop_trans_if_busy_checkBox, "field 'stopTransIfBusyCheckBox'", CheckBox.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.stop_trans_if_busy, "field 'stopTransIfBusy' and method 'onClick'");
        t.stopTransIfBusy = (LinearLayout) Utils.castView(findRequiredView4, R.id.stop_trans_if_busy, "field 'stopTransIfBusy'", LinearLayout.class);
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
        t.voiceTypeParentLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.voice_type_parent_layout, "field 'voiceTypeParentLayout'", LinearLayout.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.voice_type, "field 'voiceType' and method 'onClick'");
        t.voiceType = (LinearLayout) Utils.castView(findRequiredView5, R.id.voice_type, "field 'voiceType'", LinearLayout.class);
        this.f = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
        t.voiceTypeValue = (TextView) Utils.findRequiredViewAsType(view, R.id.voice_type_value, "field 'voiceTypeValue'", TextView.class);
        View findRequiredView6 = Utils.findRequiredView(view, R.id.noise_level, "field 'noiseLevel' and method 'onClick'");
        t.noiseLevel = (LinearLayout) Utils.castView(findRequiredView6, R.id.noise_level, "field 'noiseLevel'", LinearLayout.class);
        this.g = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
        t.noiseLevelValue = (TextView) Utils.findRequiredViewAsType(view, R.id.noise_level_value, "field 'noiseLevelValue'", TextView.class);
        View findRequiredView7 = Utils.findRequiredView(view, R.id.wide_narrow_band, "field 'wideNarrowBand' and method 'onClick'");
        t.wideNarrowBand = (LinearLayout) Utils.castView(findRequiredView7, R.id.wide_narrow_band, "field 'wideNarrowBand'", LinearLayout.class);
        this.h = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
        t.wideNarrowBandValue = (TextView) Utils.findRequiredViewAsType(view, R.id.wide_narrow_band_value, "field 'wideNarrowBandValue'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.titleBarLeft = null;
        t.titleBarTitle = null;
        t.voicePromptCheckBox = null;
        t.voicePrompt = null;
        t.pwSaveModeCheckBox = null;
        t.pwSaveMode = null;
        t.stopTransIfBusyCheckBox = null;
        t.stopTransIfBusy = null;
        t.voiceTypeParentLayout = null;
        t.voiceType = null;
        t.voiceTypeValue = null;
        t.noiseLevel = null;
        t.noiseLevelValue = null;
        t.wideNarrowBand = null;
        t.wideNarrowBandValue = null;
        this.b.setOnClickListener(null);
        this.b = null;
        this.c.setOnClickListener(null);
        this.c = null;
        this.d.setOnClickListener(null);
        this.d = null;
        this.e.setOnClickListener(null);
        this.e = null;
        this.f.setOnClickListener(null);
        this.f = null;
        this.g.setOnClickListener(null);
        this.g = null;
        this.h.setOnClickListener(null);
        this.h = null;
        this.a = null;
    }
}
