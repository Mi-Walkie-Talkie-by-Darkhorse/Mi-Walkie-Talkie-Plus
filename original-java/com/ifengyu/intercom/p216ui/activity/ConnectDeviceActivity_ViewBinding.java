package com.ifengyu.intercom.p216ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.activity.ConnectDeviceActivity_ViewBinding */
/* loaded from: classes2.dex */
public class ConnectDeviceActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    private ConnectDeviceActivity f14772a;

    @UiThread
    public ConnectDeviceActivity_ViewBinding(ConnectDeviceActivity connectDeviceActivity, View view) {
        this.f14772a = connectDeviceActivity;
        connectDeviceActivity.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ConnectDeviceActivity connectDeviceActivity = this.f14772a;
        if (connectDeviceActivity != null) {
            this.f14772a = null;
            connectDeviceActivity.mTopBar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
