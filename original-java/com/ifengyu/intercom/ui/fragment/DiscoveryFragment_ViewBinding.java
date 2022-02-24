package com.ifengyu.intercom.ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;

/* loaded from: classes2.dex */
public class DiscoveryFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private DiscoveryFragment f6408a;

    @UiThread
    public DiscoveryFragment_ViewBinding(DiscoveryFragment discoveryFragment, View view) {
        this.f6408a = discoveryFragment;
        discoveryFragment.titleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'titleBarLeft'", ImageView.class);
        discoveryFragment.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        discoveryFragment.titleBarRight = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right, "field 'titleBarRight'", ImageView.class);
        discoveryFragment.swipeRefreshLayout = (SwipeRefreshLayout) Utils.findRequiredViewAsType(view, R.id.discovery_swipe_refresh_layout, "field 'swipeRefreshLayout'", SwipeRefreshLayout.class);
        discoveryFragment.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.discovery_recycler, "field 'recyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DiscoveryFragment discoveryFragment = this.f6408a;
        if (discoveryFragment != null) {
            this.f6408a = null;
            discoveryFragment.titleBarLeft = null;
            discoveryFragment.titleBarTitle = null;
            discoveryFragment.titleBarRight = null;
            discoveryFragment.swipeRefreshLayout = null;
            discoveryFragment.recyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
