package com.ifengyu.intercom.p216ui.login;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatCheckBox;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.intercom.p216ui.widget.view.PasswordToggleEditText;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.alpha.QMUIAlphaTextView;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* renamed from: com.ifengyu.intercom.ui.login.LoginFragment_ViewBinding */
/* loaded from: classes2.dex */
public class LoginFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private LoginFragment f15412a;

    /* renamed from: b */
    private View f15413b;

    /* renamed from: c */
    private View f15414c;

    /* renamed from: d */
    private View f15415d;

    /* renamed from: e */
    private View f15416e;

    /* renamed from: f */
    private View f15417f;

    /* renamed from: com.ifengyu.intercom.ui.login.LoginFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C4657a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LoginFragment f15418a;

        C4657a(LoginFragment_ViewBinding loginFragment_ViewBinding, LoginFragment loginFragment) {
            this.f15418a = loginFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15418a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.login.LoginFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C4658b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LoginFragment f15419a;

        C4658b(LoginFragment_ViewBinding loginFragment_ViewBinding, LoginFragment loginFragment) {
            this.f15419a = loginFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15419a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.login.LoginFragment_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C4659c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LoginFragment f15420a;

        C4659c(LoginFragment_ViewBinding loginFragment_ViewBinding, LoginFragment loginFragment) {
            this.f15420a = loginFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15420a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.login.LoginFragment_ViewBinding$d */
    /* loaded from: classes2.dex */
    class C4660d extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LoginFragment f15421a;

        C4660d(LoginFragment_ViewBinding loginFragment_ViewBinding, LoginFragment loginFragment) {
            this.f15421a = loginFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15421a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.login.LoginFragment_ViewBinding$e */
    /* loaded from: classes2.dex */
    class C4661e extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ LoginFragment f15422a;

        C4661e(LoginFragment_ViewBinding loginFragment_ViewBinding, LoginFragment loginFragment) {
            this.f15422a = loginFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15422a.onClick(view);
        }
    }

    @UiThread
    public LoginFragment_ViewBinding(LoginFragment loginFragment, View view) {
        this.f15412a = loginFragment;
        loginFragment.mEtPhone = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_phone, "field 'mEtPhone'", FixedEditText.class);
        loginFragment.mEtPassword = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password, "field 'mEtPassword'", PasswordToggleEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.btn_login, "field 'mBtnLogin' and method 'onClick'");
        loginFragment.mBtnLogin = (QMUIRoundButton) Utils.castView(findRequiredView, R.id.btn_login, "field 'mBtnLogin'", QMUIRoundButton.class);
        this.f15413b = findRequiredView;
        findRequiredView.setOnClickListener(new C4657a(this, loginFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.btn_register, "field 'mBtnRegister' and method 'onClick'");
        loginFragment.mBtnRegister = (QMUIAlphaTextView) Utils.castView(findRequiredView2, R.id.btn_register, "field 'mBtnRegister'", QMUIAlphaTextView.class);
        this.f15414c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4658b(this, loginFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.btn_forget, "field 'mBtnForget' and method 'onClick'");
        loginFragment.mBtnForget = (QMUIAlphaTextView) Utils.castView(findRequiredView3, R.id.btn_forget, "field 'mBtnForget'", QMUIAlphaTextView.class);
        this.f15415d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C4659c(this, loginFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.btn_login_xiaomi, "field 'mBtnLoginXiaomi' and method 'onClick'");
        loginFragment.mBtnLoginXiaomi = (QMUIAlphaImageButton) Utils.castView(findRequiredView4, R.id.btn_login_xiaomi, "field 'mBtnLoginXiaomi'", QMUIAlphaImageButton.class);
        this.f15416e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C4660d(this, loginFragment));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.btn_login_weixin, "field 'mBtnLoginWeixin' and method 'onClick'");
        loginFragment.mBtnLoginWeixin = (QMUIAlphaImageButton) Utils.castView(findRequiredView5, R.id.btn_login_weixin, "field 'mBtnLoginWeixin'", QMUIAlphaImageButton.class);
        this.f15417f = findRequiredView5;
        findRequiredView5.setOnClickListener(new C4661e(this, loginFragment));
        loginFragment.mCbUserProtocol = (AppCompatCheckBox) Utils.findRequiredViewAsType(view, R.id.cb_user_protocol, "field 'mCbUserProtocol'", AppCompatCheckBox.class);
        loginFragment.mTvUserProtocol = (QMUISpanTouchFixTextView) Utils.findRequiredViewAsType(view, R.id.tv_user_agreement, "field 'mTvUserProtocol'", QMUISpanTouchFixTextView.class);
        loginFragment.mCbImprove = (AppCompatCheckBox) Utils.findRequiredViewAsType(view, R.id.cb_improve, "field 'mCbImprove'", AppCompatCheckBox.class);
        loginFragment.mTvImprove = (QMUISpanTouchFixTextView) Utils.findRequiredViewAsType(view, R.id.tv_improve, "field 'mTvImprove'", QMUISpanTouchFixTextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LoginFragment loginFragment = this.f15412a;
        if (loginFragment != null) {
            this.f15412a = null;
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
            this.f15413b.setOnClickListener(null);
            this.f15413b = null;
            this.f15414c.setOnClickListener(null);
            this.f15414c = null;
            this.f15415d.setOnClickListener(null);
            this.f15415d = null;
            this.f15416e.setOnClickListener(null);
            this.f15416e = null;
            this.f15417f.setOnClickListener(null);
            this.f15417f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
