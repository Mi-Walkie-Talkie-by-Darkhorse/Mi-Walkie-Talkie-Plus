package com.ifengyu.intercom.lite.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class ConfigFileDetailFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private ConfigFileDetailFragment f5434a;

    @UiThread
    public ConfigFileDetailFragment_ViewBinding(ConfigFileDetailFragment configFileDetailFragment, View view) {
        this.f5434a = configFileDetailFragment;
        configFileDetailFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        configFileDetailFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ConfigFileDetailFragment configFileDetailFragment = this.f5434a;
        if (configFileDetailFragment != null) {
            this.f5434a = null;
            configFileDetailFragment.mRecyclerView = null;
            configFileDetailFragment.mTopBar = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
