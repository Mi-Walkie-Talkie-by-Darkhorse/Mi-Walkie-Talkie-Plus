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

/* renamed from: com.ifengyu.intercom.ui.talk.GroupAllMemberFragment_ViewBinding */
/* loaded from: classes2.dex */
public class GroupAllMemberFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private GroupAllMemberFragment f15505a;

    @UiThread
    public GroupAllMemberFragment_ViewBinding(GroupAllMemberFragment groupAllMemberFragment, View view) {
        this.f15505a = groupAllMemberFragment;
        groupAllMemberFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        groupAllMemberFragment.etSearch = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_search, "field 'etSearch'", FixedEditText.class);
        groupAllMemberFragment.rvList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvList'", RecyclerView.class);
        groupAllMemberFragment.rvSearchList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'rvSearchList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GroupAllMemberFragment groupAllMemberFragment = this.f15505a;
        if (groupAllMemberFragment != null) {
            this.f15505a = null;
            groupAllMemberFragment.mTopbar = null;
            groupAllMemberFragment.etSearch = null;
            groupAllMemberFragment.rvList = null;
            groupAllMemberFragment.rvSearchList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
