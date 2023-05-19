package com.ifengyu.intercom.p216ui.talk;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.groupAdatar.NineGridImageView;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.talk.GroupQrScanResultFragment_ViewBinding */
/* loaded from: classes2.dex */
public class GroupQrScanResultFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private GroupQrScanResultFragment f15543a;

    @UiThread
    public GroupQrScanResultFragment_ViewBinding(GroupQrScanResultFragment groupQrScanResultFragment, View view) {
        this.f15543a = groupQrScanResultFragment;
        groupQrScanResultFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        groupQrScanResultFragment.rlBottomShadow = (QMUILinearLayout) Utils.findRequiredViewAsType(view, R.id.rl_bottom_shadow, "field 'rlBottomShadow'", QMUILinearLayout.class);
        groupQrScanResultFragment.ngivGroupAvatar = (NineGridImageView) Utils.findRequiredViewAsType(view, R.id.ngiv_group_avatar, "field 'ngivGroupAvatar'", NineGridImageView.class);
        groupQrScanResultFragment.tvName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_name, "field 'tvName'", TextView.class);
        groupQrScanResultFragment.tvIdOrCount = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_id_or_count, "field 'tvIdOrCount'", TextView.class);
        groupQrScanResultFragment.btn_bottom = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_bottom, "field 'btn_bottom'", QMUIRoundButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GroupQrScanResultFragment groupQrScanResultFragment = this.f15543a;
        if (groupQrScanResultFragment != null) {
            this.f15543a = null;
            groupQrScanResultFragment.mTopbar = null;
            groupQrScanResultFragment.rlBottomShadow = null;
            groupQrScanResultFragment.ngivGroupAvatar = null;
            groupQrScanResultFragment.tvName = null;
            groupQrScanResultFragment.tvIdOrCount = null;
            groupQrScanResultFragment.btn_bottom = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
