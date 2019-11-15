package com.ifengyu.intercom.ui.fragment;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.fragment.MyFragment;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;

public class MyFragment_ViewBinding<T extends MyFragment> implements Unbinder {
    protected T a;

    @UiThread
    public MyFragment_ViewBinding(T t, View view) {
        this.a = t;
        t.titleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'titleBarTitle'", TextView.class);
        t.titleBarRight = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right, "field 'titleBarRight'", ImageView.class);
        t.mCivPortrait = (CirclrImageView) Utils.findRequiredViewAsType(view, R.id.setting_user_portrait, "field 'mCivPortrait'", CirclrImageView.class);
        t.userName = (TextView) Utils.findRequiredViewAsType(view, R.id.setting_user_name_text, "field 'userName'", TextView.class);
        t.userID = (TextView) Utils.findRequiredViewAsType(view, R.id.setting_user_id_text, "field 'userID'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.titleBarTitle = null;
        t.titleBarRight = null;
        t.mCivPortrait = null;
        t.userName = null;
        t.userID = null;
        this.a = null;
    }
}
