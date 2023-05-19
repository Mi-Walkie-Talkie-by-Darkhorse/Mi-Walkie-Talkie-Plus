package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class DeviceGroupRemoveMemberFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceGroupRemoveMemberFragment f12585a;

    @UiThread
    public DeviceGroupRemoveMemberFragment_ViewBinding(DeviceGroupRemoveMemberFragment deviceGroupRemoveMemberFragment, View view) {
        this.f12585a = deviceGroupRemoveMemberFragment;
        deviceGroupRemoveMemberFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceGroupRemoveMemberFragment.etSearch = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_search, "field 'etSearch'", FixedEditText.class);
        deviceGroupRemoveMemberFragment.rvContactList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvContactList'", RecyclerView.class);
        deviceGroupRemoveMemberFragment.rvSearchList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'rvSearchList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceGroupRemoveMemberFragment deviceGroupRemoveMemberFragment = this.f12585a;
        if (deviceGroupRemoveMemberFragment != null) {
            this.f12585a = null;
            deviceGroupRemoveMemberFragment.mTopbar = null;
            deviceGroupRemoveMemberFragment.etSearch = null;
            deviceGroupRemoveMemberFragment.rvContactList = null;
            deviceGroupRemoveMemberFragment.rvSearchList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
