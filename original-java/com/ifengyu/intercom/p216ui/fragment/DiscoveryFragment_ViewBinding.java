package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.DiscoveryFragment_ViewBinding */
/* loaded from: classes2.dex */
public class DiscoveryFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DiscoveryFragment f15156a;

    @UiThread
    public DiscoveryFragment_ViewBinding(DiscoveryFragment discoveryFragment, View view) {
        this.f15156a = discoveryFragment;
        discoveryFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        discoveryFragment.swipeRefreshLayout = (SwipeRefreshLayout) Utils.findRequiredViewAsType(view, R.id.discovery_swipe_refresh_layout, "field 'swipeRefreshLayout'", SwipeRefreshLayout.class);
        discoveryFragment.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.discovery_recycler, "field 'recyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DiscoveryFragment discoveryFragment = this.f15156a;
        if (discoveryFragment != null) {
            this.f15156a = null;
            discoveryFragment.mTopbar = null;
            discoveryFragment.swipeRefreshLayout = null;
            discoveryFragment.recyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
