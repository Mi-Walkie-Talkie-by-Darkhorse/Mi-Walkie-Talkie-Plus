package com.ifengyu.intercom.ui.setting.dolphin;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.ClearEditText;

/* loaded from: classes2.dex */
public class DolphinRelayEditActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private DolphinRelayEditActivity f6596a;

    @UiThread
    public DolphinRelayEditActivity_ViewBinding(DolphinRelayEditActivity dolphinRelayEditActivity, View view) {
        this.f6596a = dolphinRelayEditActivity;
        dolphinRelayEditActivity.mTitleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mTitleBarLeft'", ImageView.class);
        dolphinRelayEditActivity.mTitleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'mTitleBarTitle'", TextView.class);
        dolphinRelayEditActivity.mTitleBarConfirm = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_confirm, "field 'mTitleBarConfirm'", TextView.class);
        dolphinRelayEditActivity.mEtRelayEditName = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.et_relay_edit_name, "field 'mEtRelayEditName'", ClearEditText.class);
        dolphinRelayEditActivity.mTvRelayEditUpFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_relay_edit_up_freq, "field 'mTvRelayEditUpFreq'", TextView.class);
        dolphinRelayEditActivity.mFlRelayEditUpFreq = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_relay_edit_up_freq, "field 'mFlRelayEditUpFreq'", FrameLayout.class);
        dolphinRelayEditActivity.mTvRelayEditDownFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_relay_edit_down_freq, "field 'mTvRelayEditDownFreq'", TextView.class);
        dolphinRelayEditActivity.mFlRelayEditDownFreq = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_relay_edit_down_freq, "field 'mFlRelayEditDownFreq'", FrameLayout.class);
        dolphinRelayEditActivity.mTvRelayEditUpTone = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_relay_edit_up_tone, "field 'mTvRelayEditUpTone'", TextView.class);
        dolphinRelayEditActivity.mFlRelayEditUpTone = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_relay_edit_up_tone, "field 'mFlRelayEditUpTone'", FrameLayout.class);
        dolphinRelayEditActivity.mTvRelayEditDownTone = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_relay_edit_down_tone, "field 'mTvRelayEditDownTone'", TextView.class);
        dolphinRelayEditActivity.mFlRelayEditDownTone = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_relay_edit_down_tone, "field 'mFlRelayEditDownTone'", FrameLayout.class);
        dolphinRelayEditActivity.mBtnRelayEditDelete = (Button) Utils.findRequiredViewAsType(view, R.id.btn_relay_edit_delete, "field 'mBtnRelayEditDelete'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DolphinRelayEditActivity dolphinRelayEditActivity = this.f6596a;
        if (dolphinRelayEditActivity != null) {
            this.f6596a = null;
            dolphinRelayEditActivity.mTitleBarLeft = null;
            dolphinRelayEditActivity.mTitleBarTitle = null;
            dolphinRelayEditActivity.mTitleBarConfirm = null;
            dolphinRelayEditActivity.mEtRelayEditName = null;
            dolphinRelayEditActivity.mTvRelayEditUpFreq = null;
            dolphinRelayEditActivity.mFlRelayEditUpFreq = null;
            dolphinRelayEditActivity.mTvRelayEditDownFreq = null;
            dolphinRelayEditActivity.mFlRelayEditDownFreq = null;
            dolphinRelayEditActivity.mTvRelayEditUpTone = null;
            dolphinRelayEditActivity.mFlRelayEditUpTone = null;
            dolphinRelayEditActivity.mTvRelayEditDownTone = null;
            dolphinRelayEditActivity.mFlRelayEditDownTone = null;
            dolphinRelayEditActivity.mBtnRelayEditDelete = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
