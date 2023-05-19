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
public class DeviceCurGroupSwitchFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DeviceCurGroupSwitchFragment f12538a;

    @UiThread
    public DeviceCurGroupSwitchFragment_ViewBinding(DeviceCurGroupSwitchFragment deviceCurGroupSwitchFragment, View view) {
        this.f12538a = deviceCurGroupSwitchFragment;
        deviceCurGroupSwitchFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        deviceCurGroupSwitchFragment.rvGroupList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvGroupList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DeviceCurGroupSwitchFragment deviceCurGroupSwitchFragment = this.f12538a;
        if (deviceCurGroupSwitchFragment != null) {
            this.f12538a = null;
            deviceCurGroupSwitchFragment.mTopbar = null;
            deviceCurGroupSwitchFragment.rvGroupList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
