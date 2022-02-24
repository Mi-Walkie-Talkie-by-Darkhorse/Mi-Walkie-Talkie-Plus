package com.ifengyu.intercom.lite.login;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.PasswordToggleEditText;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class LiteSetupPasswordFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private LiteSetupPasswordFragment f5657a;

    /* renamed from: b  reason: collision with root package name */
    private View f5658b;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiteSetupPasswordFragment f5659a;

        a(LiteSetupPasswordFragment_ViewBinding liteSetupPasswordFragment_ViewBinding, LiteSetupPasswordFragment liteSetupPasswordFragment) {
            this.f5659a = liteSetupPasswordFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f5659a.onClick(view);
        }
    }

    @UiThread
    public LiteSetupPasswordFragment_ViewBinding(LiteSetupPasswordFragment liteSetupPasswordFragment, View view) {
        this.f5657a = liteSetupPasswordFragment;
        liteSetupPasswordFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        liteSetupPasswordFragment.mEtPasswordOld = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password_old, "field 'mEtPasswordOld'", PasswordToggleEditText.class);
        liteSetupPasswordFragment.mEtPasswordNew = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password_new, "field 'mEtPasswordNew'", PasswordToggleEditText.class);
        liteSetupPasswordFragment.mEtPasswordConfirm = (PasswordToggleEditText) Utils.findRequiredViewAsType(view, R.id.et_password_confirm, "field 'mEtPasswordConfirm'", PasswordToggleEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.btn_action, "field 'mBtnAction' and method 'onClick'");
        liteSetupPasswordFragment.mBtnAction = (QMUIRoundButton) Utils.castView(findRequiredView, R.id.btn_action, "field 'mBtnAction'", QMUIRoundButton.class);
        this.f5658b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, liteSetupPasswordFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteSetupPasswordFragment liteSetupPasswordFragment = this.f5657a;
        if (liteSetupPasswordFragment != null) {
            this.f5657a = null;
            liteSetupPasswordFragment.mTopBar = null;
            liteSetupPasswordFragment.mEtPasswordOld = null;
            liteSetupPasswordFragment.mEtPasswordNew = null;
            liteSetupPasswordFragment.mEtPasswordConfirm = null;
            liteSetupPasswordFragment.mBtnAction = null;
            this.f5658b.setOnClickListener(null);
            this.f5658b = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
