package com.ifengyu.intercom.ui.activity;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.v7.widget.AppCompatCheckBox;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.activity.ActivateDeviceActivity;

public class ActivateDeviceActivity_ViewBinding<T extends ActivateDeviceActivity> implements Unbinder {
    protected T a;

    @UiThread
    public ActivateDeviceActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.mTitleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'mTitleBarTitle'", TextView.class);
        t.mCheckbox = (AppCompatCheckBox) Utils.findRequiredViewAsType(view, R.id.checkbox, "field 'mCheckbox'", AppCompatCheckBox.class);
        t.mBtnCancel = (Button) Utils.findRequiredViewAsType(view, R.id.btn_cancel, "field 'mBtnCancel'", Button.class);
        t.mBtnActivate = (Button) Utils.findRequiredViewAsType(view, R.id.btn_activate, "field 'mBtnActivate'", Button.class);
        t.mTitleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mTitleBarLeft'", ImageView.class);
        t.mTitleBarRight = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right, "field 'mTitleBarRight'", ImageView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mTitleBarTitle = null;
        t.mCheckbox = null;
        t.mBtnCancel = null;
        t.mBtnActivate = null;
        t.mTitleBarLeft = null;
        t.mTitleBarRight = null;
        this.a = null;
    }
}
