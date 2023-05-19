package com.ifengyu.intercom.p216ui.talk;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.talk.NewApplyFragment_ViewBinding */
/* loaded from: classes2.dex */
public class NewApplyFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private NewApplyFragment f15565a;

    @UiThread
    public NewApplyFragment_ViewBinding(NewApplyFragment newApplyFragment, View view) {
        this.f15565a = newApplyFragment;
        newApplyFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        newApplyFragment.rvList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rvList, "field 'rvList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NewApplyFragment newApplyFragment = this.f15565a;
        if (newApplyFragment != null) {
            this.f15565a = null;
            newApplyFragment.mTopbar = null;
            newApplyFragment.rvList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
