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
public class AddMyGroupToDeviceFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private AddMyGroupToDeviceFragment f12522a;

    @UiThread
    public AddMyGroupToDeviceFragment_ViewBinding(AddMyGroupToDeviceFragment addMyGroupToDeviceFragment, View view) {
        this.f12522a = addMyGroupToDeviceFragment;
        addMyGroupToDeviceFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        addMyGroupToDeviceFragment.rvMyGroupList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvMyGroupList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AddMyGroupToDeviceFragment addMyGroupToDeviceFragment = this.f12522a;
        if (addMyGroupToDeviceFragment != null) {
            this.f12522a = null;
            addMyGroupToDeviceFragment.mTopbar = null;
            addMyGroupToDeviceFragment.rvMyGroupList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
