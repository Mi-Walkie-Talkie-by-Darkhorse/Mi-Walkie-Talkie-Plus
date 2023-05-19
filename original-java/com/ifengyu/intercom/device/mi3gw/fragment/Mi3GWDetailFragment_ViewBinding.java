package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class Mi3GWDetailFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private Mi3GWDetailFragment f12626a;

    @UiThread
    public Mi3GWDetailFragment_ViewBinding(Mi3GWDetailFragment mi3GWDetailFragment, View view) {
        this.f12626a = mi3GWDetailFragment;
        mi3GWDetailFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        mi3GWDetailFragment.refreshLayout = (SwipeRefreshLayout) Utils.findRequiredViewAsType(view, R.id.swipeLayout, "field 'refreshLayout'", SwipeRefreshLayout.class);
        mi3GWDetailFragment.rvList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        Mi3GWDetailFragment mi3GWDetailFragment = this.f12626a;
        if (mi3GWDetailFragment != null) {
            this.f12626a = null;
            mi3GWDetailFragment.mTopbar = null;
            mi3GWDetailFragment.refreshLayout = null;
            mi3GWDetailFragment.rvList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
