package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;

/* loaded from: classes2.dex */
public class DolphinRelayFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private DolphinRelayFragment f6668a;

    @UiThread
    public DolphinRelayFragment_ViewBinding(DolphinRelayFragment dolphinRelayFragment, View view) {
        this.f6668a = dolphinRelayFragment;
        dolphinRelayFragment.mRvRelay = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_relay, "field 'mRvRelay'", RecyclerViewEmptySupport.class);
        dolphinRelayFragment.mTvEmptyView = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_empty_view, "field 'mTvEmptyView'", TextView.class);
        dolphinRelayFragment.mProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progressBar, "field 'mProgressBar'", ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DolphinRelayFragment dolphinRelayFragment = this.f6668a;
        if (dolphinRelayFragment != null) {
            this.f6668a = null;
            dolphinRelayFragment.mRvRelay = null;
            dolphinRelayFragment.mTvEmptyView = null;
            dolphinRelayFragment.mProgressBar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
