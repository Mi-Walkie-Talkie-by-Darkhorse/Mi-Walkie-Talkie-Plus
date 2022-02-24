package com.ifengyu.intercom.lite.login;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatCheckBox;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.FixedEditText;
import com.ifengyu.intercom.ui.widget.view.PasswordToggleEditText;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.alpha.QMUIAlphaTextView;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* loaded from: classes2.dex */
public class LoginFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private LoginFragment f5667a;

    /* renamed from: b  reason: collision with root package name */
    private View f5668b;

    /* renamed from: c  reason: collision with root package name */
    private View f5669c;
    private View d;
    private View e;
    private View f;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginFragment f5670a;

        a(LoginFragment_ViewBinding loginFragment_ViewBinding, LoginFragment loginFragment) {
            this.f5670a = loginFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5670a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginFragment f5671a;

        b(LoginFragment_ViewBinding loginFragment_ViewBinding, LoginFragment loginFragment) {
            this.f5671a = loginFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5671a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginFragment f5672a;

        c(LoginFragment_ViewBinding loginFragment_ViewBinding, LoginFragment loginFragment) {
            this.f5672a = loginFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5672a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class d extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginFragment f5673a;

        d(LoginFragment_ViewBinding loginFragment_ViewBinding, LoginFragment loginFragment) {
            this.f5673a = loginFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5673a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class e extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginFragment f5674a;

        e(LoginFragment_ViewBinding loginFragment_ViewBinding, LoginFragment loginFragment) {
            this.f5674a = loginFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5674a.onClick(view);
        }
    }

    @UiThread
    public LoginFragment_ViewBinding(LoginFragment loginFragment, View view) {
        this.f5667a = loginFragment;
        loginFragment.mEtPhone = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_phone, "field 'mEtPhone'", FixedEditText.class);
        loginFragment.mEtPassword = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password, "field 'mEtPassword'", PasswordToggleEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.btn_login, "field 'mBtnLogin' and method 'onClick'");
        loginFragment.mBtnLogin = (QMUIRoundButton) Utils.castView(findRequiredView, R.id.btn_login, "field 'mBtnLogin'", QMUIRoundButton.class);
        this.f5668b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, loginFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.btn_register, "field 'mBtnRegister' and method 'onClick'");
        loginFragment.mBtnRegister = (QMUIAlphaTextView) Utils.castView(findRequiredView2, R.id.btn_register, "field 'mBtnRegister'", QMUIAlphaTextView.class);
        this.f5669c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, loginFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.btn_forget, "field 'mBtnForget' and method 'onClick'");
        loginFragment.mBtnForget = (QMUIAlphaTextView) Utils.castView(findRequiredView3, R.id.btn_forget, "field 'mBtnForget'", QMUIAlphaTextView.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, loginFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.btn_login_xiaomi, "field 'mBtnLoginXiaomi' and method 'onClick'");
        loginFragment.mBtnLoginXiaomi = (QMUIAlphaImageButton) Utils.castView(findRequiredView4, R.id.btn_login_xiaomi, "field 'mBtnLoginXiaomi'", QMUIAlphaImageButton.class);
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new d(this, loginFragment));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.btn_login_weixin, "field 'mBtnLoginWeixin' and method 'onClick'");
        loginFragment.mBtnLoginWeixin = (QMUIAlphaImageButton) Utils.castView(findRequiredView5, R.id.btn_login_weixin, "field 'mBtnLoginWeixin'", QMUIAlphaImageButton.class);
        this.f = findRequiredView5;
        findRequiredView5.setOnClickListener(new e(this, loginFragment));
        loginFragment.mCbUserProtocol = (AppCompatCheckBox) Utils.findRequiredViewAsType(view, R.id.cb_user_protocol, "field 'mCbUserProtocol'", AppCompatCheckBox.class);
        loginFragment.mTvUserProtocol = (QMUISpanTouchFixTextView) Utils.findRequiredViewAsType(view, R.id.tv_user_protocol, "field 'mTvUserProtocol'", QMUISpanTouchFixTextView.class);
        loginFragment.mCbImprove = (AppCompatCheckBox) Utils.findRequiredViewAsType(view, R.id.cb_improve, "field 'mCbImprove'", AppCompatCheckBox.class);
        loginFragment.mTvImprove = (QMUISpanTouchFixTextView) Utils.findRequiredViewAsType(view, R.id.tv_improve, "field 'mTvImprove'", QMUISpanTouchFixTextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LoginFragment loginFragment = this.f5667a;
        if (loginFragment != null) {
            this.f5667a = null;
            loginFragment.mEtPhone = null;
            loginFragment.mEtPassword = null;
            loginFragment.mBtnLogin = null;
            loginFragment.mBtnRegister = null;
            loginFragment.mBtnForget = null;
            loginFragment.mBtnLoginXiaomi = null;
            loginFragment.mBtnLoginWeixin = null;
            loginFragment.mCbUserProtocol = null;
            loginFragment.mTvUserProtocol = null;
            loginFragment.mCbImprove = null;
            loginFragment.mTvImprove = null;
            this.f5668b.setOnClickListener(null);
            this.f5668b = null;
            this.f5669c.setOnClickListener(null);
            this.f5669c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            this.f.setOnClickListener(null);
            this.f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
