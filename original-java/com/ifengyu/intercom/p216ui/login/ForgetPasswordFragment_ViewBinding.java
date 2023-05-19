package com.ifengyu.intercom.p216ui.login;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.login.ForgetPasswordFragment_ViewBinding */
/* loaded from: classes2.dex */
public class ForgetPasswordFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private ForgetPasswordFragment f15406a;

    @UiThread
    public ForgetPasswordFragment_ViewBinding(ForgetPasswordFragment forgetPasswordFragment, View view) {
        this.f15406a = forgetPasswordFragment;
        forgetPasswordFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        forgetPasswordFragment.mEtPhone = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_phone, "field 'mEtPhone'", FixedEditText.class);
        forgetPasswordFragment.mEtVerifyCode = (AppCompatEditText) Utils.findRequiredViewAsType(view, R.id.et_verify_code, "field 'mEtVerifyCode'", AppCompatEditText.class);
        forgetPasswordFragment.mBtnGetCode = (AppCompatButton) Utils.findRequiredViewAsType(view, R.id.btn_get_code, "field 'mBtnGetCode'", AppCompatButton.class);
        forgetPasswordFragment.mBtnAction = (AppCompatButton) Utils.findRequiredViewAsType(view, R.id.btn_action, "field 'mBtnAction'", AppCompatButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ForgetPasswordFragment forgetPasswordFragment = this.f15406a;
        if (forgetPasswordFragment != null) {
            this.f15406a = null;
            forgetPasswordFragment.mTopBar = null;
            forgetPasswordFragment.mEtPhone = null;
            forgetPasswordFragment.mEtVerifyCode = null;
            forgetPasswordFragment.mBtnGetCode = null;
            forgetPasswordFragment.mBtnAction = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
