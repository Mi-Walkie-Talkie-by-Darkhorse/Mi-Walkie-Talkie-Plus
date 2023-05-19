package com.ifengyu.intercom.p216ui.talk;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.talk.CreateCodeBaseFragment_ViewBinding */
/* loaded from: classes2.dex */
public class CreateCodeBaseFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private CreateCodeBaseFragment f15501a;

    @UiThread
    public CreateCodeBaseFragment_ViewBinding(CreateCodeBaseFragment createCodeBaseFragment, View view) {
        this.f15501a = createCodeBaseFragment;
        createCodeBaseFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        createCodeBaseFragment.bottomTvsLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.bottom_tvs_layout, "field 'bottomTvsLayout'", LinearLayout.class);
        createCodeBaseFragment.rvList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvList'", RecyclerView.class);
        createCodeBaseFragment.btnBottom = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_bottom, "field 'btnBottom'", QMUIRoundButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CreateCodeBaseFragment createCodeBaseFragment = this.f15501a;
        if (createCodeBaseFragment != null) {
            this.f15501a = null;
            createCodeBaseFragment.mTopbar = null;
            createCodeBaseFragment.bottomTvsLayout = null;
            createCodeBaseFragment.rvList = null;
            createCodeBaseFragment.btnBottom = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
