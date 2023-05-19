package com.ifengyu.intercom.p216ui.talk;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.intercom.p216ui.widget.view.QuickIndexBar;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.talk.MemberAddBaseFragment_ViewBinding */
/* loaded from: classes2.dex */
public class MemberAddBaseFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private MemberAddBaseFragment f15552a;

    @UiThread
    public MemberAddBaseFragment_ViewBinding(MemberAddBaseFragment memberAddBaseFragment, View view) {
        this.f15552a = memberAddBaseFragment;
        memberAddBaseFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        memberAddBaseFragment.etSearch = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_search, "field 'etSearch'", FixedEditText.class);
        memberAddBaseFragment.rvContactList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvContactList'", RecyclerView.class);
        memberAddBaseFragment.quickIndexBar = (QuickIndexBar) Utils.findRequiredViewAsType(view, R.id.qib_right_index_bar, "field 'quickIndexBar'", QuickIndexBar.class);
        memberAddBaseFragment.tvCenterIndex = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_center_index, "field 'tvCenterIndex'", TextView.class);
        memberAddBaseFragment.rvSearchList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'rvSearchList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MemberAddBaseFragment memberAddBaseFragment = this.f15552a;
        if (memberAddBaseFragment != null) {
            this.f15552a = null;
            memberAddBaseFragment.mTopbar = null;
            memberAddBaseFragment.etSearch = null;
            memberAddBaseFragment.rvContactList = null;
            memberAddBaseFragment.quickIndexBar = null;
            memberAddBaseFragment.tvCenterIndex = null;
            memberAddBaseFragment.rvSearchList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
