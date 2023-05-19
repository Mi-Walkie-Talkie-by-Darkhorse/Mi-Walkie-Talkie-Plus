package com.ifengyu.intercom.device.lite.fragment;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class LiteWebFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private LiteWebFragment f12342a;

    @UiThread
    public LiteWebFragment_ViewBinding(LiteWebFragment liteWebFragment, View view) {
        this.f12342a = liteWebFragment;
        liteWebFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        liteWebFragment.mWebContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.web_container, "field 'mWebContainer'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteWebFragment liteWebFragment = this.f12342a;
        if (liteWebFragment != null) {
            this.f12342a = null;
            liteWebFragment.mTopBar = null;
            liteWebFragment.mWebContainer = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
