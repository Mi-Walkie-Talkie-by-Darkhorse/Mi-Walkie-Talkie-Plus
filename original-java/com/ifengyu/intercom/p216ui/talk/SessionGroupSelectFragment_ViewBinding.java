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
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.talk.SessionGroupSelectFragment_ViewBinding */
/* loaded from: classes2.dex */
public class SessionGroupSelectFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private SessionGroupSelectFragment f15572a;

    @UiThread
    public SessionGroupSelectFragment_ViewBinding(SessionGroupSelectFragment sessionGroupSelectFragment, View view) {
        this.f15572a = sessionGroupSelectFragment;
        sessionGroupSelectFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        sessionGroupSelectFragment.rvList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvList'", RecyclerView.class);
        sessionGroupSelectFragment.btnBottom = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_bottom, "field 'btnBottom'", QMUIRoundButton.class);
        sessionGroupSelectFragment.etSearch = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_search, "field 'etSearch'", FixedEditText.class);
        sessionGroupSelectFragment.rvSearchList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'rvSearchList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SessionGroupSelectFragment sessionGroupSelectFragment = this.f15572a;
        if (sessionGroupSelectFragment != null) {
            this.f15572a = null;
            sessionGroupSelectFragment.mTopbar = null;
            sessionGroupSelectFragment.rvList = null;
            sessionGroupSelectFragment.btnBottom = null;
            sessionGroupSelectFragment.etSearch = null;
            sessionGroupSelectFragment.rvSearchList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
