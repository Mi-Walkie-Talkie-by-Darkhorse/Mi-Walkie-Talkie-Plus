package com.ifengyu.intercom.ui.setting.dolphin;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinRelayEditActivity;
import com.ifengyu.intercom.ui.widget.view.ClearEditText;

public class DolphinRelayEditActivity_ViewBinding<T extends DolphinRelayEditActivity> implements Unbinder {
    protected T a;

    @UiThread
    public DolphinRelayEditActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.mTitleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mTitleBarLeft'", ImageView.class);
        t.mTitleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'mTitleBarTitle'", TextView.class);
        t.mTitleBarConfirm = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_confirm, "field 'mTitleBarConfirm'", TextView.class);
        t.mEtRelayEditName = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.et_relay_edit_name, "field 'mEtRelayEditName'", ClearEditText.class);
        t.mTvRelayEditUpFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_relay_edit_up_freq, "field 'mTvRelayEditUpFreq'", TextView.class);
        t.mFlRelayEditUpFreq = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_relay_edit_up_freq, "field 'mFlRelayEditUpFreq'", FrameLayout.class);
        t.mTvRelayEditDownFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_relay_edit_down_freq, "field 'mTvRelayEditDownFreq'", TextView.class);
        t.mFlRelayEditDownFreq = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_relay_edit_down_freq, "field 'mFlRelayEditDownFreq'", FrameLayout.class);
        t.mTvRelayEditUpTone = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_relay_edit_up_tone, "field 'mTvRelayEditUpTone'", TextView.class);
        t.mFlRelayEditUpTone = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_relay_edit_up_tone, "field 'mFlRelayEditUpTone'", FrameLayout.class);
        t.mTvRelayEditDownTone = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_relay_edit_down_tone, "field 'mTvRelayEditDownTone'", TextView.class);
        t.mFlRelayEditDownTone = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_relay_edit_down_tone, "field 'mFlRelayEditDownTone'", FrameLayout.class);
        t.mBtnRelayEditDelete = (Button) Utils.findRequiredViewAsType(view, R.id.btn_relay_edit_delete, "field 'mBtnRelayEditDelete'", Button.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mTitleBarLeft = null;
        t.mTitleBarTitle = null;
        t.mTitleBarConfirm = null;
        t.mEtRelayEditName = null;
        t.mTvRelayEditUpFreq = null;
        t.mFlRelayEditUpFreq = null;
        t.mTvRelayEditDownFreq = null;
        t.mFlRelayEditDownFreq = null;
        t.mTvRelayEditUpTone = null;
        t.mFlRelayEditUpTone = null;
        t.mTvRelayEditDownTone = null;
        t.mFlRelayEditDownTone = null;
        t.mBtnRelayEditDelete = null;
        this.a = null;
    }
}
