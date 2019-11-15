package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinRelayFragment;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;

public class DolphinRelayFragment_ViewBinding<T extends DolphinRelayFragment> implements Unbinder {
    protected T a;

    @UiThread
    public DolphinRelayFragment_ViewBinding(T t, View view) {
        this.a = t;
        t.mRvRelay = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_relay, "field 'mRvRelay'", RecyclerViewEmptySupport.class);
        t.mTvEmptyView = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_empty_view, "field 'mTvEmptyView'", TextView.class);
        t.mProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progressBar, "field 'mProgressBar'", ProgressBar.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mRvRelay = null;
        t.mTvEmptyView = null;
        t.mProgressBar = null;
        this.a = null;
    }
}
