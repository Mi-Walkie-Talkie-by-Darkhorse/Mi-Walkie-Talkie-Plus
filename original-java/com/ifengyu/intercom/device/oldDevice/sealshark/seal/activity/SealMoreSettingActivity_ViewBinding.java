package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;

/* loaded from: classes2.dex */
public class SealMoreSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    private SealMoreSettingActivity f13288a;

    /* renamed from: b */
    private View f13289b;

    /* renamed from: c */
    private View f13290c;

    /* renamed from: d */
    private View f13291d;

    /* renamed from: e */
    private View f13292e;

    /* renamed from: f */
    private View f13293f;

    /* renamed from: g */
    private View f13294g;

    /* renamed from: h */
    private View f13295h;

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C3698a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealMoreSettingActivity f13296a;

        C3698a(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f13296a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f13296a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C3699b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealMoreSettingActivity f13297a;

        C3699b(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f13297a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f13297a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C3700c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealMoreSettingActivity f13298a;

        C3700c(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f13298a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f13298a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity_ViewBinding$d */
    /* loaded from: classes2.dex */
    class C3701d extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealMoreSettingActivity f13299a;

        C3701d(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f13299a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f13299a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity_ViewBinding$e */
    /* loaded from: classes2.dex */
    class C3702e extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealMoreSettingActivity f13300a;

        C3702e(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f13300a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f13300a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity_ViewBinding$f */
    /* loaded from: classes2.dex */
    class C3703f extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealMoreSettingActivity f13301a;

        C3703f(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f13301a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f13301a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealMoreSettingActivity_ViewBinding$g */
    /* loaded from: classes2.dex */
    class C3704g extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealMoreSettingActivity f13302a;

        C3704g(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f13302a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f13302a.onClick(view);
        }
    }

    @UiThread
    public SealMoreSettingActivity_ViewBinding(SealMoreSettingActivity sealMoreSettingActivity, View view) {
        this.f13288a = sealMoreSettingActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_bar_left, "field 'titleBarLeft' and method 'onClick'");
        sealMoreSettingActivity.titleBarLeft = (ImageView) Utils.castView(findRequiredView, R.id.title_bar_left, "field 'titleBarLeft'", ImageView.class);
        this.f13289b = findRequiredView;
        findRequiredView.setOnClickListener(new C3698a(this, sealMoreSettingActivity));
        sealMoreSettingActivity.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        sealMoreSettingActivity.voicePromptCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.voice_prompt_checkBox, "field 'voicePromptCheckBox'", CheckBox.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.voice_prompt, "field 'voicePrompt' and method 'onClick'");
        sealMoreSettingActivity.voicePrompt = (LinearLayout) Utils.castView(findRequiredView2, R.id.voice_prompt, "field 'voicePrompt'", LinearLayout.class);
        this.f13290c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C3699b(this, sealMoreSettingActivity));
        sealMoreSettingActivity.pwSaveModeCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.pw_save_mode_checkBox, "field 'pwSaveModeCheckBox'", CheckBox.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.pw_save_mode, "field 'pwSaveMode' and method 'onClick'");
        sealMoreSettingActivity.pwSaveMode = (LinearLayout) Utils.castView(findRequiredView3, R.id.pw_save_mode, "field 'pwSaveMode'", LinearLayout.class);
        this.f13291d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C3700c(this, sealMoreSettingActivity));
        sealMoreSettingActivity.stopTransIfBusyCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.stop_trans_if_busy_checkBox, "field 'stopTransIfBusyCheckBox'", CheckBox.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.stop_trans_if_busy, "field 'stopTransIfBusy' and method 'onClick'");
        sealMoreSettingActivity.stopTransIfBusy = (LinearLayout) Utils.castView(findRequiredView4, R.id.stop_trans_if_busy, "field 'stopTransIfBusy'", LinearLayout.class);
        this.f13292e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C3701d(this, sealMoreSettingActivity));
        sealMoreSettingActivity.voiceTypeParentLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.voice_type_parent_layout, "field 'voiceTypeParentLayout'", LinearLayout.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.voice_type, "field 'voiceType' and method 'onClick'");
        sealMoreSettingActivity.voiceType = (LinearLayout) Utils.castView(findRequiredView5, R.id.voice_type, "field 'voiceType'", LinearLayout.class);
        this.f13293f = findRequiredView5;
        findRequiredView5.setOnClickListener(new C3702e(this, sealMoreSettingActivity));
        sealMoreSettingActivity.voiceTypeValue = (TextView) Utils.findRequiredViewAsType(view, R.id.voice_type_value, "field 'voiceTypeValue'", TextView.class);
        View findRequiredView6 = Utils.findRequiredView(view, R.id.noise_level, "field 'noiseLevel' and method 'onClick'");
        sealMoreSettingActivity.noiseLevel = (LinearLayout) Utils.castView(findRequiredView6, R.id.noise_level, "field 'noiseLevel'", LinearLayout.class);
        this.f13294g = findRequiredView6;
        findRequiredView6.setOnClickListener(new C3703f(this, sealMoreSettingActivity));
        sealMoreSettingActivity.noiseLevelValue = (TextView) Utils.findRequiredViewAsType(view, R.id.noise_level_value, "field 'noiseLevelValue'", TextView.class);
        View findRequiredView7 = Utils.findRequiredView(view, R.id.wide_narrow_band, "field 'wideNarrowBand' and method 'onClick'");
        sealMoreSettingActivity.wideNarrowBand = (LinearLayout) Utils.castView(findRequiredView7, R.id.wide_narrow_band, "field 'wideNarrowBand'", LinearLayout.class);
        this.f13295h = findRequiredView7;
        findRequiredView7.setOnClickListener(new C3704g(this, sealMoreSettingActivity));
        sealMoreSettingActivity.wideNarrowBandValue = (TextView) Utils.findRequiredViewAsType(view, R.id.wide_narrow_band_value, "field 'wideNarrowBandValue'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SealMoreSettingActivity sealMoreSettingActivity = this.f13288a;
        if (sealMoreSettingActivity != null) {
            this.f13288a = null;
            sealMoreSettingActivity.titleBarLeft = null;
            sealMoreSettingActivity.titleBarTitle = null;
            sealMoreSettingActivity.voicePromptCheckBox = null;
            sealMoreSettingActivity.voicePrompt = null;
            sealMoreSettingActivity.pwSaveModeCheckBox = null;
            sealMoreSettingActivity.pwSaveMode = null;
            sealMoreSettingActivity.stopTransIfBusyCheckBox = null;
            sealMoreSettingActivity.stopTransIfBusy = null;
            sealMoreSettingActivity.voiceTypeParentLayout = null;
            sealMoreSettingActivity.voiceType = null;
            sealMoreSettingActivity.voiceTypeValue = null;
            sealMoreSettingActivity.noiseLevel = null;
            sealMoreSettingActivity.noiseLevelValue = null;
            sealMoreSettingActivity.wideNarrowBand = null;
            sealMoreSettingActivity.wideNarrowBandValue = null;
            this.f13289b.setOnClickListener(null);
            this.f13289b = null;
            this.f13290c.setOnClickListener(null);
            this.f13290c = null;
            this.f13291d.setOnClickListener(null);
            this.f13291d = null;
            this.f13292e.setOnClickListener(null);
            this.f13292e = null;
            this.f13293f.setOnClickListener(null);
            this.f13293f = null;
            this.f13294g.setOnClickListener(null);
            this.f13294g = null;
            this.f13295h.setOnClickListener(null);
            this.f13295h = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
