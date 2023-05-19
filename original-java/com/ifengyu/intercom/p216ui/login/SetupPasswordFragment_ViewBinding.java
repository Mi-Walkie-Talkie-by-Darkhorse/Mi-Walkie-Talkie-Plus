package com.ifengyu.intercom.p216ui.login;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.PasswordToggleEditText;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.login.SetupPasswordFragment_ViewBinding */
/* loaded from: classes2.dex */
public class SetupPasswordFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private SetupPasswordFragment f15441a;

    /* renamed from: b */
    private View f15442b;

    /* renamed from: com.ifengyu.intercom.ui.login.SetupPasswordFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C4675a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ SetupPasswordFragment f15443a;

        C4675a(SetupPasswordFragment_ViewBinding setupPasswordFragment_ViewBinding, SetupPasswordFragment setupPasswordFragment) {
            this.f15443a = setupPasswordFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15443a.onClick(view);
        }
    }

    @UiThread
    public SetupPasswordFragment_ViewBinding(SetupPasswordFragment setupPasswordFragment, View view) {
        this.f15441a = setupPasswordFragment;
        setupPasswordFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        setupPasswordFragment.mEtPasswordOld = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password_old, "field 'mEtPasswordOld'", PasswordToggleEditText.class);
        setupPasswordFragment.mEtPasswordNew = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password_new, "field 'mEtPasswordNew'", PasswordToggleEditText.class);
        setupPasswordFragment.mEtPasswordConfirm = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password_confirm, "field 'mEtPasswordConfirm'", PasswordToggleEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.btn_action, "field 'mBtnAction' and method 'onClick'");
        setupPasswordFragment.mBtnAction = (QMUIRoundButton) Utils.castView(findRequiredView, R.id.btn_action, "field 'mBtnAction'", QMUIRoundButton.class);
        this.f15442b = findRequiredView;
        findRequiredView.setOnClickListener(new C4675a(this, setupPasswordFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SetupPasswordFragment setupPasswordFragment = this.f15441a;
        if (setupPasswordFragment != null) {
            this.f15441a = null;
            setupPasswordFragment.mTopBar = null;
            setupPasswordFragment.mEtPasswordOld = null;
            setupPasswordFragment.mEtPasswordNew = null;
            setupPasswordFragment.mEtPasswordConfirm = null;
            setupPasswordFragment.mBtnAction = null;
            this.f15442b.setOnClickListener(null);
            this.f15442b = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
