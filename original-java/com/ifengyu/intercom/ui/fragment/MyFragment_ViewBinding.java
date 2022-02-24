package com.ifengyu.intercom.ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;

/* loaded from: classes2.dex */
public class MyFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private MyFragment f6446a;

    @UiThread
    public MyFragment_ViewBinding(MyFragment myFragment, View view) {
        this.f6446a = myFragment;
        myFragment.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        myFragment.titleBarRight = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right, "field 'titleBarRight'", ImageView.class);
        myFragment.mCivPortrait = (CirclrImageView) Utils.findRequiredViewAsType(view, R.id.setting_user_portrait, "field 'mCivPortrait'", CirclrImageView.class);
        myFragment.userName = (TextView) Utils.findRequiredViewAsType(view, R.id.setting_user_name_text, "field 'userName'", TextView.class);
        myFragment.userID = (TextView) Utils.findRequiredViewAsType(view, R.id.setting_user_id_text, "field 'userID'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyFragment myFragment = this.f6446a;
        if (myFragment != null) {
            this.f6446a = null;
            myFragment.titleBarTitle = null;
            myFragment.titleBarRight = null;
            myFragment.mCivPortrait = null;
            myFragment.userName = null;
            myFragment.userID = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
