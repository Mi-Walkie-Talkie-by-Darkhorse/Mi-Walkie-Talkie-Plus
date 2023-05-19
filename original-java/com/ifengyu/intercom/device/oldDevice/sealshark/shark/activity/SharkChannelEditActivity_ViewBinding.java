package com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.ClearEditText;

/* loaded from: classes2.dex */
public class SharkChannelEditActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    private SharkChannelEditActivity f13446a;

    @UiThread
    public SharkChannelEditActivity_ViewBinding(SharkChannelEditActivity sharkChannelEditActivity, View view) {
        this.f13446a = sharkChannelEditActivity;
        sharkChannelEditActivity.mTitleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mTitleBarLeft'", ImageView.class);
        sharkChannelEditActivity.mTitleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'mTitleBarTitle'", TextView.class);
        sharkChannelEditActivity.mTitleBarConfirm = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_confirm, "field 'mTitleBarConfirm'", TextView.class);
        sharkChannelEditActivity.mEtEditName = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.et_channel_edit_name, "field 'mEtEditName'", ClearEditText.class);
        sharkChannelEditActivity.mTvTxFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tx_freq, "field 'mTvTxFreq'", TextView.class);
        sharkChannelEditActivity.mFlTxFreq = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_tx_freq, "field 'mFlTxFreq'", FrameLayout.class);
        sharkChannelEditActivity.mTvRxFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_rx_freq, "field 'mTvRxFreq'", TextView.class);
        sharkChannelEditActivity.mFlRxFreq = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_rx_freq, "field 'mFlRxFreq'", FrameLayout.class);
        sharkChannelEditActivity.mTvTxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tx_tone, "field 'mTvTxCss'", TextView.class);
        sharkChannelEditActivity.mFlTxCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_tx_tone, "field 'mFlTxCss'", FrameLayout.class);
        sharkChannelEditActivity.mTvRxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_rx_tone, "field 'mTvRxCss'", TextView.class);
        sharkChannelEditActivity.mFlRXCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_rx_tone, "field 'mFlRXCss'", FrameLayout.class);
        sharkChannelEditActivity.mDeleteLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.btn_delete_layout, "field 'mDeleteLayout'", LinearLayout.class);
        sharkChannelEditActivity.mDeleteBtn = (Button) Utils.findRequiredViewAsType(view, R.id.btn_delete, "field 'mDeleteBtn'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SharkChannelEditActivity sharkChannelEditActivity = this.f13446a;
        if (sharkChannelEditActivity != null) {
            this.f13446a = null;
            sharkChannelEditActivity.mTitleBarLeft = null;
            sharkChannelEditActivity.mTitleBarTitle = null;
            sharkChannelEditActivity.mTitleBarConfirm = null;
            sharkChannelEditActivity.mEtEditName = null;
            sharkChannelEditActivity.mTvTxFreq = null;
            sharkChannelEditActivity.mFlTxFreq = null;
            sharkChannelEditActivity.mTvRxFreq = null;
            sharkChannelEditActivity.mFlRxFreq = null;
            sharkChannelEditActivity.mTvTxCss = null;
            sharkChannelEditActivity.mFlTxCss = null;
            sharkChannelEditActivity.mTvRxCss = null;
            sharkChannelEditActivity.mFlRXCss = null;
            sharkChannelEditActivity.mDeleteLayout = null;
            sharkChannelEditActivity.mDeleteBtn = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
