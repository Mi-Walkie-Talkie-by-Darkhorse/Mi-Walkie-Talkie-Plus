package com.ifengyu.intercom.p216ui.activity;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.activity.CustomizedAuthorizedActivity_ViewBinding */
/* loaded from: classes2.dex */
public class CustomizedAuthorizedActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    private CustomizedAuthorizedActivity f14775a;

    @UiThread
    public CustomizedAuthorizedActivity_ViewBinding(CustomizedAuthorizedActivity customizedAuthorizedActivity, View view) {
        this.f14775a = customizedAuthorizedActivity;
        customizedAuthorizedActivity.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        customizedAuthorizedActivity.mWebContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.web_container, "field 'mWebContainer'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CustomizedAuthorizedActivity customizedAuthorizedActivity = this.f14775a;
        if (customizedAuthorizedActivity != null) {
            this.f14775a = null;
            customizedAuthorizedActivity.mTopBar = null;
            customizedAuthorizedActivity.mWebContainer = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
