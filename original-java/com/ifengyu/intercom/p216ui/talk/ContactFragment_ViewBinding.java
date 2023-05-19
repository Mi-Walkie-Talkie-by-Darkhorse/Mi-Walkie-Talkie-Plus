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

/* renamed from: com.ifengyu.intercom.ui.talk.ContactFragment_ViewBinding */
/* loaded from: classes2.dex */
public class ContactFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private ContactFragment f15497a;

    @UiThread
    public ContactFragment_ViewBinding(ContactFragment contactFragment, View view) {
        this.f15497a = contactFragment;
        contactFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        contactFragment.rvContactList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvContactList'", RecyclerView.class);
        contactFragment.quickIndexBar = (QuickIndexBar) Utils.findRequiredViewAsType(view, R.id.qib_right_index_bar, "field 'quickIndexBar'", QuickIndexBar.class);
        contactFragment.tvCenterIndex = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_center_index, "field 'tvCenterIndex'", TextView.class);
        contactFragment.etSearch = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_search, "field 'etSearch'", FixedEditText.class);
        contactFragment.rvSearchList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'rvSearchList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ContactFragment contactFragment = this.f15497a;
        if (contactFragment != null) {
            this.f15497a = null;
            contactFragment.mTopbar = null;
            contactFragment.rvContactList = null;
            contactFragment.quickIndexBar = null;
            contactFragment.tvCenterIndex = null;
            contactFragment.etSearch = null;
            contactFragment.rvSearchList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
