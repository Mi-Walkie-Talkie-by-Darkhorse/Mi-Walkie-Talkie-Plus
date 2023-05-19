package com.ifengyu.intercom.p216ui.fragment.tab;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.DeviceFragment_ViewBinding */
/* loaded from: classes2.dex */
public class DeviceFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceFragment f15281a;

    @UiThread
    public DeviceFragment_ViewBinding(DeviceFragment deviceFragment, View view) {
        this.f15281a = deviceFragment;
        deviceFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceFragment.topGetNetDeviceFailedTv = (TextView) Utils.findRequiredViewAsType(view, R.id.top_get_net_device_failed_tv, "field 'topGetNetDeviceFailedTv'", TextView.class);
        deviceFragment.refreshLayout = (SwipeRefreshLayout) Utils.findRequiredViewAsType(view, R.id.swipeLayout, "field 'refreshLayout'", SwipeRefreshLayout.class);
        deviceFragment.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'recyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceFragment deviceFragment = this.f15281a;
        if (deviceFragment != null) {
            this.f15281a = null;
            deviceFragment.mTopbar = null;
            deviceFragment.topGetNetDeviceFailedTv = null;
            deviceFragment.refreshLayout = null;
            deviceFragment.recyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
