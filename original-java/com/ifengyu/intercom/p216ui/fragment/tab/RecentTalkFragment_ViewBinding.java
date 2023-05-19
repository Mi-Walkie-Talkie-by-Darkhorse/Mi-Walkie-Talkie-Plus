package com.ifengyu.intercom.p216ui.fragment.tab;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.RecentTalkFragment_ViewBinding */
/* loaded from: classes2.dex */
public class RecentTalkFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private RecentTalkFragment f15288a;

    @UiThread
    public RecentTalkFragment_ViewBinding(RecentTalkFragment recentTalkFragment, View view) {
        this.f15288a = recentTalkFragment;
        recentTalkFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        recentTalkFragment.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'recyclerView'", RecyclerView.class);
        recentTalkFragment.curTalkStatus = (TextView) Utils.findRequiredViewAsType(view, R.id.cur_talk_status, "field 'curTalkStatus'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RecentTalkFragment recentTalkFragment = this.f15288a;
        if (recentTalkFragment != null) {
            this.f15288a = null;
            recentTalkFragment.mTopbar = null;
            recentTalkFragment.recyclerView = null;
            recentTalkFragment.curTalkStatus = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
