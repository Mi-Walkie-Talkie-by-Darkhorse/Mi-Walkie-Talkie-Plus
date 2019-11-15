package com.ifengyu.intercom.ui.fragment;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.fragment.DiscoveryFragment;

public class DiscoveryFragment_ViewBinding<T extends DiscoveryFragment> implements Unbinder {
    protected T a;

    @UiThread
    public DiscoveryFragment_ViewBinding(T t, View view) {
        this.a = t;
        t.titleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'titleBarLeft'", ImageView.class);
        t.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        t.titleBarRight = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right, "field 'titleBarRight'", ImageView.class);
        t.swipeRefreshLayout = (SwipeRefreshLayout) Utils.findRequiredViewAsType(view, R.id.discovery_swipe_refresh_layout, "field 'swipeRefreshLayout'", SwipeRefreshLayout.class);
        t.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.discovery_recycler, "field 'recyclerView'", RecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.titleBarLeft = null;
        t.titleBarTitle = null;
        t.titleBarRight = null;
        t.swipeRefreshLayout = null;
        t.recyclerView = null;
        this.a = null;
    }
}
