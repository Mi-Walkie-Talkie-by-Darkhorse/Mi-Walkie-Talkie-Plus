package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.fragment.HostFragment_ViewBinding */
/* loaded from: classes2.dex */
public class HostFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private HostFragment f15158a;

    @UiThread
    public HostFragment_ViewBinding(HostFragment hostFragment, View view) {
        this.f15158a = hostFragment;
        hostFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        hostFragment.etPostHost = (EditText) Utils.findRequiredViewAsType(view, R.id.et_poc_host, "field 'etPostHost'", EditText.class);
        hostFragment.etAudioHost = (EditText) Utils.findRequiredViewAsType(view, R.id.et_audio_host, "field 'etAudioHost'", EditText.class);
        hostFragment.envRadioGroup = (RadioGroup) Utils.findRequiredViewAsType(view, R.id.env_group, "field 'envRadioGroup'", RadioGroup.class);
        hostFragment.btnSave = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_save, "field 'btnSave'", QMUIRoundButton.class);
        hostFragment.checkBoxM303 = (CheckBox) Utils.findRequiredViewAsType(view, R.id.cb_m303, "field 'checkBoxM303'", CheckBox.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        HostFragment hostFragment = this.f15158a;
        if (hostFragment != null) {
            this.f15158a = null;
            hostFragment.mTopBar = null;
            hostFragment.etPostHost = null;
            hostFragment.etAudioHost = null;
            hostFragment.envRadioGroup = null;
            hostFragment.btnSave = null;
            hostFragment.checkBoxM303 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
