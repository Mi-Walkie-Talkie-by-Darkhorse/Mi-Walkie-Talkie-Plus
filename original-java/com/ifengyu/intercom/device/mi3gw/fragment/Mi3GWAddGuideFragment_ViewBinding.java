package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* loaded from: classes2.dex */
public class Mi3GWAddGuideFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private Mi3GWAddGuideFragment f12618a;

    @UiThread
    public Mi3GWAddGuideFragment_ViewBinding(Mi3GWAddGuideFragment mi3GWAddGuideFragment, View view) {
        this.f12618a = mi3GWAddGuideFragment;
        mi3GWAddGuideFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        mi3GWAddGuideFragment.btnGotoConnect = (QMUIRoundButton) Utils.findRequiredViewAsType(view, R.id.btn_goto_connect, "field 'btnGotoConnect'", QMUIRoundButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        Mi3GWAddGuideFragment mi3GWAddGuideFragment = this.f12618a;
        if (mi3GWAddGuideFragment != null) {
            this.f12618a = null;
            mi3GWAddGuideFragment.mTopbar = null;
            mi3GWAddGuideFragment.btnGotoConnect = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
