package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.fragment.BaseUserProtocolFragment_ViewBinding */
/* loaded from: classes2.dex */
public class BaseUserProtocolFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private BaseUserProtocolFragment f15147a;

    @UiThread
    public BaseUserProtocolFragment_ViewBinding(BaseUserProtocolFragment baseUserProtocolFragment, View view) {
        this.f15147a = baseUserProtocolFragment;
        baseUserProtocolFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        baseUserProtocolFragment.itemUserAgreement = (ItemView) Utils.findRequiredViewAsType(view, R.id.itemUserAgreement, "field 'itemUserAgreement'", ItemView.class);
        baseUserProtocolFragment.itemPrivacyPolicy = (ItemView) Utils.findRequiredViewAsType(view, R.id.itemPrivacyPolicy, "field 'itemPrivacyPolicy'", ItemView.class);
        baseUserProtocolFragment.btnQuitUserProtocol = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_quit_user_protocol, "field 'btnQuitUserProtocol'", QMUIRoundButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseUserProtocolFragment baseUserProtocolFragment = this.f15147a;
        if (baseUserProtocolFragment != null) {
            this.f15147a = null;
            baseUserProtocolFragment.mTopBar = null;
            baseUserProtocolFragment.itemUserAgreement = null;
            baseUserProtocolFragment.itemPrivacyPolicy = null;
            baseUserProtocolFragment.btnQuitUserProtocol = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
