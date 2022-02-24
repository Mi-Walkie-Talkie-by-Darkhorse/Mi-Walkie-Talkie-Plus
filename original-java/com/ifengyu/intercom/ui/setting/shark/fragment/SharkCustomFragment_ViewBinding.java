package com.ifengyu.intercom.ui.setting.shark.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;

/* loaded from: classes2.dex */
public class SharkCustomFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private SharkCustomFragment f6873a;

    @UiThread
    public SharkCustomFragment_ViewBinding(SharkCustomFragment sharkCustomFragment, View view) {
        this.f6873a = sharkCustomFragment;
        sharkCustomFragment.mRecycleView = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_shark, "field 'mRecycleView'", RecyclerViewEmptySupport.class);
        sharkCustomFragment.mTvEmptyView = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.tv_empty_view, "field 'mTvEmptyView'", LinearLayout.class);
        sharkCustomFragment.mProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progressBar, "field 'mProgressBar'", ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SharkCustomFragment sharkCustomFragment = this.f6873a;
        if (sharkCustomFragment != null) {
            this.f6873a = null;
            sharkCustomFragment.mRecycleView = null;
            sharkCustomFragment.mTvEmptyView = null;
            sharkCustomFragment.mProgressBar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
