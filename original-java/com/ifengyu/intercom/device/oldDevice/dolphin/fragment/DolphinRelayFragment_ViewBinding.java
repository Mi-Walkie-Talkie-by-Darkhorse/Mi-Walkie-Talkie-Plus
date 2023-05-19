package com.ifengyu.intercom.device.oldDevice.dolphin.fragment;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.RecyclerViewEmptySupport;

/* loaded from: classes2.dex */
public class DolphinRelayFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DolphinRelayFragment f12944a;

    @UiThread
    public DolphinRelayFragment_ViewBinding(DolphinRelayFragment dolphinRelayFragment, View view) {
        this.f12944a = dolphinRelayFragment;
        dolphinRelayFragment.mRvRelay = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_relay, "field 'mRvRelay'", RecyclerViewEmptySupport.class);
        dolphinRelayFragment.mTvEmptyView = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_empty_view, "field 'mTvEmptyView'", TextView.class);
        dolphinRelayFragment.mProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progressBar, "field 'mProgressBar'", ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DolphinRelayFragment dolphinRelayFragment = this.f12944a;
        if (dolphinRelayFragment != null) {
            this.f12944a = null;
            dolphinRelayFragment.mRvRelay = null;
            dolphinRelayFragment.mTvEmptyView = null;
            dolphinRelayFragment.mProgressBar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
