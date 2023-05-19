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
public class DolphinCustomFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private DolphinCustomFragment f12906a;

    @UiThread
    public DolphinCustomFragment_ViewBinding(DolphinCustomFragment dolphinCustomFragment, View view) {
        this.f12906a = dolphinCustomFragment;
        dolphinCustomFragment.mRvCustom = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_relay, "field 'mRvCustom'", RecyclerViewEmptySupport.class);
        dolphinCustomFragment.mTvEmptyView = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_empty_view, "field 'mTvEmptyView'", TextView.class);
        dolphinCustomFragment.mProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progressBar, "field 'mProgressBar'", ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DolphinCustomFragment dolphinCustomFragment = this.f12906a;
        if (dolphinCustomFragment != null) {
            this.f12906a = null;
            dolphinCustomFragment.mRvCustom = null;
            dolphinCustomFragment.mTvEmptyView = null;
            dolphinCustomFragment.mProgressBar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
