package com.ifengyu.intercom.p216ui.talk;

import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.talk.JoinGroupByCodeFragment_ViewBinding */
/* loaded from: classes2.dex */
public class JoinGroupByCodeFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private JoinGroupByCodeFragment f15548a;

    @UiThread
    public JoinGroupByCodeFragment_ViewBinding(JoinGroupByCodeFragment joinGroupByCodeFragment, View view) {
        this.f15548a = joinGroupByCodeFragment;
        joinGroupByCodeFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        joinGroupByCodeFragment.bottomTvsLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.bottom_tvs_layout, "field 'bottomTvsLayout'", LinearLayout.class);
        joinGroupByCodeFragment.topEt = (EditText) Utils.findRequiredViewAsType(view, R.id.top_et, "field 'topEt'", EditText.class);
        joinGroupByCodeFragment.llInitiatorInfo = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_initiator_info, "field 'llInitiatorInfo'", LinearLayout.class);
        joinGroupByCodeFragment.ivInitiatorAvatar = (QMUIRadiusImageView) Utils.findRequiredViewAsType(view, R.id.iv_initiator_avatar, "field 'ivInitiatorAvatar'", QMUIRadiusImageView.class);
        joinGroupByCodeFragment.tvInitiatorName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_initiator_name, "field 'tvInitiatorName'", TextView.class);
        joinGroupByCodeFragment.btnBottom = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_bottom, "field 'btnBottom'", QMUIRoundButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        JoinGroupByCodeFragment joinGroupByCodeFragment = this.f15548a;
        if (joinGroupByCodeFragment != null) {
            this.f15548a = null;
            joinGroupByCodeFragment.mTopbar = null;
            joinGroupByCodeFragment.bottomTvsLayout = null;
            joinGroupByCodeFragment.topEt = null;
            joinGroupByCodeFragment.llInitiatorInfo = null;
            joinGroupByCodeFragment.ivInitiatorAvatar = null;
            joinGroupByCodeFragment.tvInitiatorName = null;
            joinGroupByCodeFragment.btnBottom = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
