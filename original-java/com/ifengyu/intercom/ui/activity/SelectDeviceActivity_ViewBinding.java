package com.ifengyu.intercom.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.widget.EmptyView;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;

/* loaded from: classes2.dex */
public class SelectDeviceActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private SelectDeviceActivity f6164a;

    @UiThread
    public SelectDeviceActivity_ViewBinding(SelectDeviceActivity selectDeviceActivity, View view) {
        this.f6164a = selectDeviceActivity;
        selectDeviceActivity.rvSelectDevice = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_select_device, "field 'rvSelectDevice'", RecyclerViewEmptySupport.class);
        selectDeviceActivity.leftBackIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'leftBackIv'", ImageView.class);
        selectDeviceActivity.rightManagerIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right_iv, "field 'rightManagerIv'", ImageView.class);
        selectDeviceActivity.pagerTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'pagerTitle'", TextView.class);
        selectDeviceActivity.mFabLayout = Utils.findRequiredView(view, R.id.bottom_transparent_layout, "field 'mFabLayout'");
        selectDeviceActivity.leftCancelBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_cancel, "field 'leftCancelBtn'", TextView.class);
        selectDeviceActivity.rightManageBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_confirm, "field 'rightManageBtn'", TextView.class);
        selectDeviceActivity.mTvEmptyView = (EmptyView) Utils.findRequiredViewAsType(view, R.id.emptyView, "field 'mTvEmptyView'", EmptyView.class);
        selectDeviceActivity.unbindDeviceBtn = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.map_bottom_unbind_device_layout, "field 'unbindDeviceBtn'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SelectDeviceActivity selectDeviceActivity = this.f6164a;
        if (selectDeviceActivity != null) {
            this.f6164a = null;
            selectDeviceActivity.rvSelectDevice = null;
            selectDeviceActivity.leftBackIv = null;
            selectDeviceActivity.rightManagerIv = null;
            selectDeviceActivity.pagerTitle = null;
            selectDeviceActivity.mFabLayout = null;
            selectDeviceActivity.leftCancelBtn = null;
            selectDeviceActivity.rightManageBtn = null;
            selectDeviceActivity.mTvEmptyView = null;
            selectDeviceActivity.unbindDeviceBtn = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
