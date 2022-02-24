package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;

/* loaded from: classes2.dex */
public class DolphinPresetFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private DolphinPresetFragment f6657a;

    @UiThread
    public DolphinPresetFragment_ViewBinding(DolphinPresetFragment dolphinPresetFragment, View view) {
        this.f6657a = dolphinPresetFragment;
        dolphinPresetFragment.mBtnActiveDevice = (TextView) Utils.findRequiredViewAsType(view, R.id.btn_active_device, "field 'mBtnActiveDevice'", TextView.class);
        dolphinPresetFragment.mLlActiveDeviceContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_active_device_container, "field 'mLlActiveDeviceContainer'", LinearLayout.class);
        dolphinPresetFragment.mRvRemote = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_remote, "field 'mRvRemote'", RecyclerView.class);
        dolphinPresetFragment.mLlLongDistanceContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_long_distance_container, "field 'mLlLongDistanceContainer'", LinearLayout.class);
        dolphinPresetFragment.mRvPublic = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_public, "field 'mRvPublic'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DolphinPresetFragment dolphinPresetFragment = this.f6657a;
        if (dolphinPresetFragment != null) {
            this.f6657a = null;
            dolphinPresetFragment.mBtnActiveDevice = null;
            dolphinPresetFragment.mLlActiveDeviceContainer = null;
            dolphinPresetFragment.mRvRemote = null;
            dolphinPresetFragment.mLlLongDistanceContainer = null;
            dolphinPresetFragment.mRvPublic = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
