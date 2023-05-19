package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.qmuiteam.qmui.layout.QMUIButton;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.FriendSearchFragment_ViewBinding */
/* loaded from: classes2.dex */
public class FriendSearchFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private FriendSearchFragment f15157a;

    @UiThread
    public FriendSearchFragment_ViewBinding(FriendSearchFragment friendSearchFragment, View view) {
        this.f15157a = friendSearchFragment;
        friendSearchFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        friendSearchFragment.etSearch = (FixedEditText) Utils.findRequiredViewAsType(view, R.id.et_search, "field 'etSearch'", FixedEditText.class);
        friendSearchFragment.btnCancel = (QMUIButton) Utils.findRequiredViewAsType(view, R.id.btn_cancel, "field 'btnCancel'", QMUIButton.class);
        friendSearchFragment.myId = (TextView) Utils.findRequiredViewAsType(view, R.id.my_id, "field 'myId'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FriendSearchFragment friendSearchFragment = this.f15157a;
        if (friendSearchFragment != null) {
            this.f15157a = null;
            friendSearchFragment.mTopbar = null;
            friendSearchFragment.etSearch = null;
            friendSearchFragment.btnCancel = null;
            friendSearchFragment.myId = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
