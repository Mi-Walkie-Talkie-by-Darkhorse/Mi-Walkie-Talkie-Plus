package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.fragment.UserInfoFragment_ViewBinding */
/* loaded from: classes2.dex */
public class UserInfoFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private UserInfoFragment f15191a;

    @UiThread
    public UserInfoFragment_ViewBinding(UserInfoFragment userInfoFragment, View view) {
        this.f15191a = userInfoFragment;
        userInfoFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        userInfoFragment.topBg = (QMUILinearLayout) Utils.findRequiredViewAsType(view, R.id.top_bg, "field 'topBg'", QMUILinearLayout.class);
        userInfoFragment.ivAvatar = (QMUIRadiusImageView) Utils.findRequiredViewAsType(view, R.id.iv_avatar, "field 'ivAvatar'", QMUIRadiusImageView.class);
        userInfoFragment.ivIsDevice = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_is_device, "field 'ivIsDevice'", ImageView.class);
        userInfoFragment.tvName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_name, "field 'tvName'", TextView.class);
        userInfoFragment.tvId = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_id, "field 'tvId'", TextView.class);
        userInfoFragment.btnBottom1 = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_bottom1, "field 'btnBottom1'", QMUIRoundButton.class);
        userInfoFragment.btnBottom2 = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_bottom2, "field 'btnBottom2'", QMUIRoundButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UserInfoFragment userInfoFragment = this.f15191a;
        if (userInfoFragment != null) {
            this.f15191a = null;
            userInfoFragment.mTopbar = null;
            userInfoFragment.topBg = null;
            userInfoFragment.ivAvatar = null;
            userInfoFragment.ivIsDevice = null;
            userInfoFragment.tvName = null;
            userInfoFragment.tvId = null;
            userInfoFragment.btnBottom1 = null;
            userInfoFragment.btnBottom2 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
