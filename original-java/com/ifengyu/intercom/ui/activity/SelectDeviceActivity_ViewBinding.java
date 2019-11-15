package com.ifengyu.intercom.ui.activity;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.activity.SelectDeviceActivity;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;

public class SelectDeviceActivity_ViewBinding<T extends SelectDeviceActivity> implements Unbinder {
    protected T a;

    @UiThread
    public SelectDeviceActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.rvSelectDevice = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_select_device, "field 'rvSelectDevice'", RecyclerViewEmptySupport.class);
        t.leftBackIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'leftBackIv'", ImageView.class);
        t.rightManagerIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right_iv, "field 'rightManagerIv'", ImageView.class);
        t.pagerTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'pagerTitle'", TextView.class);
        t.mFabLayout = Utils.findRequiredView(view, R.id.bottom_transparent_layout, "field 'mFabLayout'");
        t.leftCancelBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_cancel, "field 'leftCancelBtn'", TextView.class);
        t.rightManageBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_confirm, "field 'rightManageBtn'", TextView.class);
        t.mTvEmptyView = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_empty_view, "field 'mTvEmptyView'", TextView.class);
        t.unbindDeviceBtn = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.map_bottom_unbind_device_layout, "field 'unbindDeviceBtn'", RelativeLayout.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.rvSelectDevice = null;
        t.leftBackIv = null;
        t.rightManagerIv = null;
        t.pagerTitle = null;
        t.mFabLayout = null;
        t.leftCancelBtn = null;
        t.rightManageBtn = null;
        t.mTvEmptyView = null;
        t.unbindDeviceBtn = null;
        this.a = null;
    }
}
