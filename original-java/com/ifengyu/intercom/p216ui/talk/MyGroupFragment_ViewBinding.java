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

/* renamed from: com.ifengyu.intercom.ui.talk.MyGroupFragment_ViewBinding */
/* loaded from: classes2.dex */
public class MyGroupFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private MyGroupFragment f15559a;

    @UiThread
    public MyGroupFragment_ViewBinding(MyGroupFragment myGroupFragment, View view) {
        this.f15559a = myGroupFragment;
        myGroupFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        myGroupFragment.etSearch = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_search, "field 'etSearch'", FixedEditText.class);
        myGroupFragment.rvMyGroupList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvMyGroupList'", RecyclerView.class);
        myGroupFragment.rvSearchList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'rvSearchList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyGroupFragment myGroupFragment = this.f15559a;
        if (myGroupFragment != null) {
            this.f15559a = null;
            myGroupFragment.mTopbar = null;
            myGroupFragment.etSearch = null;
            myGroupFragment.rvMyGroupList = null;
            myGroupFragment.rvSearchList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
