package com.ifengyu.intercom.ui.imui.ui.chat.session.nearby;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.nearby.RecentContactFragment;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;

public class RecentContactFragment_ViewBinding<T extends RecentContactFragment> implements Unbinder {
    protected T target;

    @UiThread
    public RecentContactFragment_ViewBinding(T t, View view) {
        this.target = t;
        t.mRvRecentList = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_recent_list, "field 'mRvRecentList'", RecyclerViewEmptySupport.class);
        t.mEmptyView = Utils.findRequiredView(view, R.id.empty_view, "field 'mEmptyView'");
    }

    @CallSuper
    public void unbind() {
        T t = this.target;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mRvRecentList = null;
        t.mEmptyView = null;
        this.target = null;
    }
}
