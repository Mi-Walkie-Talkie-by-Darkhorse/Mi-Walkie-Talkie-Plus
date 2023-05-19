package com.ifengyu.intercom.device.mi3gw.fragment;

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

/* loaded from: classes2.dex */
public class GroupQrForDeviceScanResultFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private GroupQrForDeviceScanResultFragment f12617a;

    @UiThread
    public GroupQrForDeviceScanResultFragment_ViewBinding(GroupQrForDeviceScanResultFragment groupQrForDeviceScanResultFragment, View view) {
        this.f12617a = groupQrForDeviceScanResultFragment;
        groupQrForDeviceScanResultFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        groupQrForDeviceScanResultFragment.rlBottomShadow = (QMUILinearLayout) Utils.findRequiredViewAsType(view, R.id.rl_bottom_shadow, "field 'rlBottomShadow'", QMUILinearLayout.class);
        groupQrForDeviceScanResultFragment.ngivGroupAvatar = (NineGridImageView) Utils.findRequiredViewAsType(view, R.id.ngiv_group_avatar, "field 'ngivGroupAvatar'", NineGridImageView.class);
        groupQrForDeviceScanResultFragment.tvName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_name, "field 'tvName'", TextView.class);
        groupQrForDeviceScanResultFragment.tvIdOrCount = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_id_or_count, "field 'tvIdOrCount'", TextView.class);
        groupQrForDeviceScanResultFragment.btn_bottom = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_bottom, "field 'btn_bottom'", QMUIRoundButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GroupQrForDeviceScanResultFragment groupQrForDeviceScanResultFragment = this.f12617a;
        if (groupQrForDeviceScanResultFragment != null) {
            this.f12617a = null;
            groupQrForDeviceScanResultFragment.mTopbar = null;
            groupQrForDeviceScanResultFragment.rlBottomShadow = null;
            groupQrForDeviceScanResultFragment.ngivGroupAvatar = null;
            groupQrForDeviceScanResultFragment.tvName = null;
            groupQrForDeviceScanResultFragment.tvIdOrCount = null;
            groupQrForDeviceScanResultFragment.btn_bottom = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
