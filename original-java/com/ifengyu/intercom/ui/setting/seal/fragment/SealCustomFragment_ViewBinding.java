package com.ifengyu.intercom.ui.setting.seal.fragment;

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
public class SealCustomFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private SealCustomFragment f6766a;

    @UiThread
    public SealCustomFragment_ViewBinding(SealCustomFragment sealCustomFragment, View view) {
        this.f6766a = sealCustomFragment;
        sealCustomFragment.mRecycleView = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_seal, "field 'mRecycleView'", RecyclerViewEmptySupport.class);
        sealCustomFragment.mTvEmptyView = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_empty_view, "field 'mTvEmptyView'", TextView.class);
        sealCustomFragment.mProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progressBar, "field 'mProgressBar'", ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SealCustomFragment sealCustomFragment = this.f6766a;
        if (sealCustomFragment != null) {
            this.f6766a = null;
            sealCustomFragment.mRecycleView = null;
            sealCustomFragment.mTvEmptyView = null;
            sealCustomFragment.mProgressBar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
