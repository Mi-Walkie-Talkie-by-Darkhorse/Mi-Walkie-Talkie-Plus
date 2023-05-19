package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class DeviceGroupAllMemberFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceGroupAllMemberFragment f12543a;

    @UiThread
    public DeviceGroupAllMemberFragment_ViewBinding(DeviceGroupAllMemberFragment deviceGroupAllMemberFragment, View view) {
        this.f12543a = deviceGroupAllMemberFragment;
        deviceGroupAllMemberFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceGroupAllMemberFragment.rvList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceGroupAllMemberFragment deviceGroupAllMemberFragment = this.f12543a;
        if (deviceGroupAllMemberFragment != null) {
            this.f12543a = null;
            deviceGroupAllMemberFragment.mTopbar = null;
            deviceGroupAllMemberFragment.rvList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
