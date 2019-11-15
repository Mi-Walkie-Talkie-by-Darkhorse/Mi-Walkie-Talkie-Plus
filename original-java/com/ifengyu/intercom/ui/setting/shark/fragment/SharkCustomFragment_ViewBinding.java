package com.ifengyu.intercom.ui.setting.shark.fragment;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.setting.shark.fragment.SharkCustomFragment;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;

public class SharkCustomFragment_ViewBinding<T extends SharkCustomFragment> implements Unbinder {
    protected T a;

    @UiThread
    public SharkCustomFragment_ViewBinding(T t, View view) {
        this.a = t;
        t.mRecycleView = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_shark, "field 'mRecycleView'", RecyclerViewEmptySupport.class);
        t.mTvEmptyView = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.tv_empty_view, "field 'mTvEmptyView'", LinearLayout.class);
        t.mProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progressBar, "field 'mProgressBar'", ProgressBar.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mRecycleView = null;
        t.mTvEmptyView = null;
        t.mProgressBar = null;
        this.a = null;
    }
}
