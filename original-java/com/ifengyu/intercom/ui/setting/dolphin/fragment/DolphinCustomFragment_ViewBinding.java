package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinCustomFragment;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;

public class DolphinCustomFragment_ViewBinding<T extends DolphinCustomFragment> implements Unbinder {
    protected T a;

    @UiThread
    public DolphinCustomFragment_ViewBinding(T t, View view) {
        this.a = t;
        t.mRvCustom = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_relay, "field 'mRvCustom'", RecyclerViewEmptySupport.class);
        t.mTvEmptyView = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_empty_view, "field 'mTvEmptyView'", TextView.class);
        t.mProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progressBar, "field 'mProgressBar'", ProgressBar.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mRvCustom = null;
        t.mTvEmptyView = null;
        t.mProgressBar = null;
        this.a = null;
    }
}
