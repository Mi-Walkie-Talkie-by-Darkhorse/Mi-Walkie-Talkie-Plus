package com.ifengyu.intercom.p216ui.fragment.tab;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.MyFragment_ViewBinding */
/* loaded from: classes2.dex */
public class MyFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private MyFragment f15285a;

    @UiThread
    public MyFragment_ViewBinding(MyFragment myFragment, View view) {
        this.f15285a = myFragment;
        myFragment.titleBar = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_bar, "field 'titleBar'", LinearLayout.class);
        myFragment.mCivPortrait = (QMUIRadiusImageView) Utils.findRequiredViewAsType(view, R.id.setting_user_portrait, "field 'mCivPortrait'", QMUIRadiusImageView.class);
        myFragment.userName = (TextView) Utils.findRequiredViewAsType(view, R.id.setting_user_name_text, "field 'userName'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyFragment myFragment = this.f15285a;
        if (myFragment != null) {
            this.f15285a = null;
            myFragment.titleBar = null;
            myFragment.mCivPortrait = null;
            myFragment.userName = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
