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
public class DeviceGroupOwnerChangeFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceGroupOwnerChangeFragment f12577a;

    @UiThread
    public DeviceGroupOwnerChangeFragment_ViewBinding(DeviceGroupOwnerChangeFragment deviceGroupOwnerChangeFragment, View view) {
        this.f12577a = deviceGroupOwnerChangeFragment;
        deviceGroupOwnerChangeFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceGroupOwnerChangeFragment.etSearch = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_search, "field 'etSearch'", FixedEditText.class);
        deviceGroupOwnerChangeFragment.rvContactList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvContactList'", RecyclerView.class);
        deviceGroupOwnerChangeFragment.rvSearchList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'rvSearchList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceGroupOwnerChangeFragment deviceGroupOwnerChangeFragment = this.f12577a;
        if (deviceGroupOwnerChangeFragment != null) {
            this.f12577a = null;
            deviceGroupOwnerChangeFragment.mTopbar = null;
            deviceGroupOwnerChangeFragment.etSearch = null;
            deviceGroupOwnerChangeFragment.rvContactList = null;
            deviceGroupOwnerChangeFragment.rvSearchList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
