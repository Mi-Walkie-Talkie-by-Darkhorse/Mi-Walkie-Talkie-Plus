package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class DeviceGroupManagerFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceGroupManagerFragment f12569a;

    @UiThread
    public DeviceGroupManagerFragment_ViewBinding(DeviceGroupManagerFragment deviceGroupManagerFragment, View view) {
        this.f12569a = deviceGroupManagerFragment;
        deviceGroupManagerFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceGroupManagerFragment.tvSelectAll = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_select_all, "field 'tvSelectAll'", TextView.class);
        deviceGroupManagerFragment.rvContactList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvContactList'", RecyclerView.class);
        deviceGroupManagerFragment.btnExitGroup = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_exit_group, "field 'btnExitGroup'", QMUIRoundButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceGroupManagerFragment deviceGroupManagerFragment = this.f12569a;
        if (deviceGroupManagerFragment != null) {
            this.f12569a = null;
            deviceGroupManagerFragment.mTopbar = null;
            deviceGroupManagerFragment.tvSelectAll = null;
            deviceGroupManagerFragment.rvContactList = null;
            deviceGroupManagerFragment.btnExitGroup = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
