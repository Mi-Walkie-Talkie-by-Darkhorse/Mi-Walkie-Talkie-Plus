package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.groupAdatar.NineGridImageView;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.BaseQrShowFragment_ViewBinding */
/* loaded from: classes2.dex */
public class BaseQrShowFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private BaseQrShowFragment f15144a;

    @UiThread
    public BaseQrShowFragment_ViewBinding(BaseQrShowFragment baseQrShowFragment, View view) {
        this.f15144a = baseQrShowFragment;
        baseQrShowFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        baseQrShowFragment.rlCenterShadow = (QMUILinearLayout) Utils.findRequiredViewAsType(view, R.id.rl_center_shadow, "field 'rlCenterShadow'", QMUILinearLayout.class);
        baseQrShowFragment.ngivGroupAvatar = (NineGridImageView) Utils.findRequiredViewAsType(view, R.id.ngiv_group_avatar, "field 'ngivGroupAvatar'", NineGridImageView.class);
        baseQrShowFragment.tvName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_name, "field 'tvName'", TextView.class);
        baseQrShowFragment.ivQr = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_qr, "field 'ivQr'", ImageView.class);
        baseQrShowFragment.tvBottomPrompt = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_bottom_prompt, "field 'tvBottomPrompt'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseQrShowFragment baseQrShowFragment = this.f15144a;
        if (baseQrShowFragment != null) {
            this.f15144a = null;
            baseQrShowFragment.mTopbar = null;
            baseQrShowFragment.rlCenterShadow = null;
            baseQrShowFragment.ngivGroupAvatar = null;
            baseQrShowFragment.tvName = null;
            baseQrShowFragment.ivQr = null;
            baseQrShowFragment.tvBottomPrompt = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
