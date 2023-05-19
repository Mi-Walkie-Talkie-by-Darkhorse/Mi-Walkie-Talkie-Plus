package com.ifengyu.intercom.p216ui.talk;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.talk.GroupOwnerChangeFragment_ViewBinding */
/* loaded from: classes2.dex */
public class GroupOwnerChangeFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private GroupOwnerChangeFragment f15536a;

    @UiThread
    public GroupOwnerChangeFragment_ViewBinding(GroupOwnerChangeFragment groupOwnerChangeFragment, View view) {
        this.f15536a = groupOwnerChangeFragment;
        groupOwnerChangeFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        groupOwnerChangeFragment.etSearch = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_search, "field 'etSearch'", FixedEditText.class);
        groupOwnerChangeFragment.rvContactList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvContactList'", RecyclerView.class);
        groupOwnerChangeFragment.rvSearchList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'rvSearchList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GroupOwnerChangeFragment groupOwnerChangeFragment = this.f15536a;
        if (groupOwnerChangeFragment != null) {
            this.f15536a = null;
            groupOwnerChangeFragment.mTopbar = null;
            groupOwnerChangeFragment.etSearch = null;
            groupOwnerChangeFragment.rvContactList = null;
            groupOwnerChangeFragment.rvSearchList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
