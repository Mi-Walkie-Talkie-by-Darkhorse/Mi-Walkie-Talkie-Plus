package com.ifengyu.intercom.lite.login;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatButton;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.PasswordToggleEditText;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class ResetPasswordFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private ResetPasswordFragment f5686a;

    @UiThread
    public ResetPasswordFragment_ViewBinding(ResetPasswordFragment resetPasswordFragment, View view) {
        this.f5686a = resetPasswordFragment;
        resetPasswordFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        resetPasswordFragment.mEtPasswordNew = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password_new, "field 'mEtPasswordNew'", PasswordToggleEditText.class);
        resetPasswordFragment.mEtPasswordConfirm = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password_confirm, "field 'mEtPasswordConfirm'", PasswordToggleEditText.class);
        resetPasswordFragment.mBtnAction = (AppCompatButton) Utils.findRequiredViewAsType(view, R.id.btn_action, "field 'mBtnAction'", AppCompatButton.class);
        resetPasswordFragment.mLlResetContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_reset_container, "field 'mLlResetContainer'", LinearLayout.class);
        resetPasswordFragment.mLlSuccessContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_success_container, "field 'mLlSuccessContainer'", LinearLayout.class);
        resetPasswordFragment.mBtnGotoLogin = (AppCompatButton) Utils.findRequiredViewAsType(view, R.id.btn_goto_login, "field 'mBtnGotoLogin'", AppCompatButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ResetPasswordFragment resetPasswordFragment = this.f5686a;
        if (resetPasswordFragment != null) {
            this.f5686a = null;
            resetPasswordFragment.mTopBar = null;
            resetPasswordFragment.mEtPasswordNew = null;
            resetPasswordFragment.mEtPasswordConfirm = null;
            resetPasswordFragment.mBtnAction = null;
            resetPasswordFragment.mLlResetContainer = null;
            resetPasswordFragment.mLlSuccessContainer = null;
            resetPasswordFragment.mBtnGotoLogin = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
