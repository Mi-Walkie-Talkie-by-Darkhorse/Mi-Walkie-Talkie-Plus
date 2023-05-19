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

/* renamed from: com.ifengyu.intercom.ui.talk.MemberRemoveFragment_ViewBinding */
/* loaded from: classes2.dex */
public class MemberRemoveFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private MemberRemoveFragment f15556a;

    @UiThread
    public MemberRemoveFragment_ViewBinding(MemberRemoveFragment memberRemoveFragment, View view) {
        this.f15556a = memberRemoveFragment;
        memberRemoveFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        memberRemoveFragment.etSearch = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_search, "field 'etSearch'", FixedEditText.class);
        memberRemoveFragment.rvContactList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvContactList'", RecyclerView.class);
        memberRemoveFragment.rvSearchList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'rvSearchList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MemberRemoveFragment memberRemoveFragment = this.f15556a;
        if (memberRemoveFragment != null) {
            this.f15556a = null;
            memberRemoveFragment.mTopbar = null;
            memberRemoveFragment.etSearch = null;
            memberRemoveFragment.rvContactList = null;
            memberRemoveFragment.rvSearchList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
