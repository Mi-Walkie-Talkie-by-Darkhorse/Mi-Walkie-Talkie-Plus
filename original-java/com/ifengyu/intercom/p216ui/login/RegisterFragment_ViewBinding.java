package com.ifengyu.intercom.p216ui.login;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatEditText;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.intercom.p216ui.widget.view.PasswordToggleEditText;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment_ViewBinding */
/* loaded from: classes2.dex */
public class RegisterFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private RegisterFragment f15437a;

    @UiThread
    public RegisterFragment_ViewBinding(RegisterFragment registerFragment, View view) {
        this.f15437a = registerFragment;
        registerFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        registerFragment.mEtPhone = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_phone, "field 'mEtPhone'", FixedEditText.class);
        registerFragment.mEtPassword = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password, "field 'mEtPassword'", PasswordToggleEditText.class);
        registerFragment.mEtVerifyCode = (AppCompatEditText) Utils.findRequiredViewAsType(view, R.id.et_verify_code, "field 'mEtVerifyCode'", AppCompatEditText.class);
        registerFragment.mBtnGetCode = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_get_code, "field 'mBtnGetCode'", QMUIRoundButton.class);
        registerFragment.mBtnRegister = (AppCompatButton) Utils.findRequiredViewAsType(view, R.id.btn_register, "field 'mBtnRegister'", AppCompatButton.class);
        registerFragment.mCbUserProtocol = (AppCompatCheckBox) Utils.findRequiredViewAsType(view, R.id.cb_user_protocol, "field 'mCbUserProtocol'", AppCompatCheckBox.class);
        registerFragment.mTvUserProtocol = (QMUISpanTouchFixTextView) Utils.findRequiredViewAsType(view, R.id.tv_user_protocol, "field 'mTvUserProtocol'", QMUISpanTouchFixTextView.class);
        registerFragment.mCbImprove = (AppCompatCheckBox) Utils.findRequiredViewAsType(view, R.id.cb_improve, "field 'mCbImprove'", AppCompatCheckBox.class);
        registerFragment.mTvImprove = (QMUISpanTouchFixTextView) Utils.findRequiredViewAsType(view, R.id.tv_improve, "field 'mTvImprove'", QMUISpanTouchFixTextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RegisterFragment registerFragment = this.f15437a;
        if (registerFragment != null) {
            this.f15437a = null;
            registerFragment.mTopBar = null;
            registerFragment.mEtPhone = null;
            registerFragment.mEtPassword = null;
            registerFragment.mEtVerifyCode = null;
            registerFragment.mBtnGetCode = null;
            registerFragment.mBtnRegister = null;
            registerFragment.mCbUserProtocol = null;
            registerFragment.mTvUserProtocol = null;
            registerFragment.mCbImprove = null;
            registerFragment.mTvImprove = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
