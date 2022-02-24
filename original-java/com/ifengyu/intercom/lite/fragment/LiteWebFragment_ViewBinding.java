package com.ifengyu.intercom.lite.fragment;

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

    /* renamed from: a  reason: collision with root package name */
    private LiteWebFragment f5493a;

    @UiThread
    public LiteWebFragment_ViewBinding(LiteWebFragment liteWebFragment, View view) {
        this.f5493a = liteWebFragment;
        liteWebFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        liteWebFragment.mWebContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.web_container, "field 'mWebContainer'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteWebFragment liteWebFragment = this.f5493a;
        if (liteWebFragment != null) {
            this.f5493a = null;
            liteWebFragment.mTopBar = null;
            liteWebFragment.mWebContainer = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
