package com.ifengyu.intercom.ui.imui.ui.chat.session.nearby;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.nearby.NearbyFragment;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;

public class NearbyFragment_ViewBinding<T extends NearbyFragment> implements Unbinder {
    protected T target;

    @UiThread
    public NearbyFragment_ViewBinding(T t, View view) {
        this.target = t;
        t.mRvNearbyList = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_nearby_list, "field 'mRvNearbyList'", RecyclerViewEmptySupport.class);
        t.mEmptyView = Utils.findRequiredView(view, R.id.empty_view, "field 'mEmptyView'");
    }

    @CallSuper
    public void unbind() {
        T t = this.target;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mRvNearbyList = null;
        t.mEmptyView = null;
        this.target = null;
    }
}
