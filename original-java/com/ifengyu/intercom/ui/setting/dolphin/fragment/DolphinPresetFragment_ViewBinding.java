package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinPresetFragment;

public class DolphinPresetFragment_ViewBinding<T extends DolphinPresetFragment> implements Unbinder {
    protected T a;

    @UiThread
    public DolphinPresetFragment_ViewBinding(T t, View view) {
        this.a = t;
        t.mBtnActiveDevice = (TextView) Utils.findRequiredViewAsType(view, R.id.btn_active_device, "field 'mBtnActiveDevice'", TextView.class);
        t.mLlActiveDeviceContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_active_device_container, "field 'mLlActiveDeviceContainer'", LinearLayout.class);
        t.mRvRemote = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_remote, "field 'mRvRemote'", RecyclerView.class);
        t.mLlLongDistanceContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_long_distance_container, "field 'mLlLongDistanceContainer'", LinearLayout.class);
        t.mRvPublic = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_public, "field 'mRvPublic'", RecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mBtnActiveDevice = null;
        t.mLlActiveDeviceContainer = null;
        t.mRvRemote = null;
        t.mLlLongDistanceContainer = null;
        t.mRvPublic = null;
        this.a = null;
    }
}
