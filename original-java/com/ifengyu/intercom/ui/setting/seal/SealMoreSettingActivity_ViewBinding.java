package com.ifengyu.intercom.ui.setting.seal;

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

    /* renamed from: a  reason: collision with root package name */
    private SealMoreSettingActivity f6701a;

    /* renamed from: b  reason: collision with root package name */
    private View f6702b;

    /* renamed from: c  reason: collision with root package name */
    private View f6703c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealMoreSettingActivity f6704a;

        a(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f6704a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6704a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealMoreSettingActivity f6705a;

        b(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f6705a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6705a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealMoreSettingActivity f6706a;

        c(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f6706a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6706a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class d extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealMoreSettingActivity f6707a;

        d(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f6707a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6707a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class e extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealMoreSettingActivity f6708a;

        e(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f6708a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6708a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class f extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealMoreSettingActivity f6709a;

        f(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f6709a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6709a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class g extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealMoreSettingActivity f6710a;

        g(SealMoreSettingActivity_ViewBinding sealMoreSettingActivity_ViewBinding, SealMoreSettingActivity sealMoreSettingActivity) {
            this.f6710a = sealMoreSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6710a.onClick(view);
        }
    }

    @UiThread
    public SealMoreSettingActivity_ViewBinding(SealMoreSettingActivity sealMoreSettingActivity, View view) {
        this.f6701a = sealMoreSettingActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_bar_left, "field 'titleBarLeft' and method 'onClick'");
        sealMoreSettingActivity.titleBarLeft = (ImageView) Utils.castView(findRequiredView, R.id.title_bar_left, "field 'titleBarLeft'", ImageView.class);
        this.f6702b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, sealMoreSettingActivity));
        sealMoreSettingActivity.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        sealMoreSettingActivity.voicePromptCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.voice_prompt_checkBox, "field 'voicePromptCheckBox'", CheckBox.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.voice_prompt, "field 'voicePrompt' and method 'onClick'");
        sealMoreSettingActivity.voicePrompt = (LinearLayout) Utils.castView(findRequiredView2, R.id.voice_prompt, "field 'voicePrompt'", LinearLayout.class);
        this.f6703c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, sealMoreSettingActivity));
        sealMoreSettingActivity.pwSaveModeCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.pw_save_mode_checkBox, "field 'pwSaveModeCheckBox'", CheckBox.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.pw_save_mode, "field 'pwSaveMode' and method 'onClick'");
        sealMoreSettingActivity.pwSaveMode = (LinearLayout) Utils.castView(findRequiredView3, R.id.pw_save_mode, "field 'pwSaveMode'", LinearLayout.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, sealMoreSettingActivity));
        sealMoreSettingActivity.stopTransIfBusyCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.stop_trans_if_busy_checkBox, "field 'stopTransIfBusyCheckBox'", CheckBox.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.stop_trans_if_busy, "field 'stopTransIfBusy' and method 'onClick'");
        sealMoreSettingActivity.stopTransIfBusy = (LinearLayout) Utils.castView(findRequiredView4, R.id.stop_trans_if_busy, "field 'stopTransIfBusy'", LinearLayout.class);
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new d(this, sealMoreSettingActivity));
        sealMoreSettingActivity.voiceTypeParentLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.voice_type_parent_layout, "field 'voiceTypeParentLayout'", LinearLayout.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.voice_type, "field 'voiceType' and method 'onClick'");
        sealMoreSettingActivity.voiceType = (LinearLayout) Utils.castView(findRequiredView5, R.id.voice_type, "field 'voiceType'", LinearLayout.class);
        this.f = findRequiredView5;
        findRequiredView5.setOnClickListener(new e(this, sealMoreSettingActivity));
        sealMoreSettingActivity.voiceTypeValue = (TextView) Utils.findRequiredViewAsType(view, R.id.voice_type_value, "field 'voiceTypeValue'", TextView.class);
        View findRequiredView6 = Utils.findRequiredView(view, R.id.noise_level, "field 'noiseLevel' and method 'onClick'");
        sealMoreSettingActivity.noiseLevel = (LinearLayout) Utils.castView(findRequiredView6, R.id.noise_level, "field 'noiseLevel'", LinearLayout.class);
        this.g = findRequiredView6;
        findRequiredView6.setOnClickListener(new f(this, sealMoreSettingActivity));
        sealMoreSettingActivity.noiseLevelValue = (TextView) Utils.findRequiredViewAsType(view, R.id.noise_level_value, "field 'noiseLevelValue'", TextView.class);
        View findRequiredView7 = Utils.findRequiredView(view, R.id.wide_narrow_band, "field 'wideNarrowBand' and method 'onClick'");
        sealMoreSettingActivity.wideNarrowBand = (LinearLayout) Utils.castView(findRequiredView7, R.id.wide_narrow_band, "field 'wideNarrowBand'", LinearLayout.class);
        this.h = findRequiredView7;
        findRequiredView7.setOnClickListener(new g(this, sealMoreSettingActivity));
        sealMoreSettingActivity.wideNarrowBandValue = (TextView) Utils.findRequiredViewAsType(view, R.id.wide_narrow_band_value, "field 'wideNarrowBandValue'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SealMoreSettingActivity sealMoreSettingActivity = this.f6701a;
        if (sealMoreSettingActivity != null) {
            this.f6701a = null;
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
            this.f6702b.setOnClickListener(null);
            this.f6702b = null;
            this.f6703c.setOnClickListener(null);
            this.f6703c = null;
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
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
