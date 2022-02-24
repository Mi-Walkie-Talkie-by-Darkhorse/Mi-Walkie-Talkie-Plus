package com.ifengyu.intercom.ui.activity;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatCheckBox;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;

/* loaded from: classes2.dex */
public class ActivateDeviceActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private ActivateDeviceActivity f6021a;

    @UiThread
    public ActivateDeviceActivity_ViewBinding(ActivateDeviceActivity activateDeviceActivity, View view) {
        this.f6021a = activateDeviceActivity;
        activateDeviceActivity.mTitleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'mTitleBarTitle'", TextView.class);
        activateDeviceActivity.mCheckbox = (AppCompatCheckBox) Utils.findRequiredViewAsType(view, R.id.checkbox, "field 'mCheckbox'", AppCompatCheckBox.class);
        activateDeviceActivity.mBtnCancel = (Button) Utils.findRequiredViewAsType(view, R.id.btn_cancel, "field 'mBtnCancel'", Button.class);
        activateDeviceActivity.mBtnActivate = (Button) Utils.findRequiredViewAsType(view, R.id.btn_activate, "field 'mBtnActivate'", Button.class);
        activateDeviceActivity.mTitleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mTitleBarLeft'", ImageView.class);
        activateDeviceActivity.mTitleBarRight = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_right, "field 'mTitleBarRight'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ActivateDeviceActivity activateDeviceActivity = this.f6021a;
        if (activateDeviceActivity != null) {
            this.f6021a = null;
            activateDeviceActivity.mTitleBarTitle = null;
            activateDeviceActivity.mCheckbox = null;
            activateDeviceActivity.mBtnCancel = null;
            activateDeviceActivity.mBtnActivate = null;
            activateDeviceActivity.mTitleBarLeft = null;
            activateDeviceActivity.mTitleBarRight = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
