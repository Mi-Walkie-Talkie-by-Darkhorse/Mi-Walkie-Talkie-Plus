package com.ifengyu.intercom.ui.setting.seal;

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
public class SealChannelEditActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private SealChannelEditActivity f6684a;

    @UiThread
    public SealChannelEditActivity_ViewBinding(SealChannelEditActivity sealChannelEditActivity, View view) {
        this.f6684a = sealChannelEditActivity;
        sealChannelEditActivity.mTitleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mTitleBarLeft'", ImageView.class);
        sealChannelEditActivity.mTitleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'mTitleBarTitle'", TextView.class);
        sealChannelEditActivity.mTitleBarConfirm = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_confirm, "field 'mTitleBarConfirm'", TextView.class);
        sealChannelEditActivity.channelIndex = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_index, "field 'channelIndex'", TextView.class);
        sealChannelEditActivity.mEtEditName = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.et_channel_edit_name, "field 'mEtEditName'", ClearEditText.class);
        sealChannelEditActivity.mTvTxFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tx_freq, "field 'mTvTxFreq'", TextView.class);
        sealChannelEditActivity.mFlTxFreq = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_tx_freq, "field 'mFlTxFreq'", FrameLayout.class);
        sealChannelEditActivity.mTvRxFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_rx_freq, "field 'mTvRxFreq'", TextView.class);
        sealChannelEditActivity.mFlRxFreq = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_rx_freq, "field 'mFlRxFreq'", FrameLayout.class);
        sealChannelEditActivity.mTvTxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tx_tone, "field 'mTvTxCss'", TextView.class);
        sealChannelEditActivity.mFlTxCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_tx_tone, "field 'mFlTxCss'", FrameLayout.class);
        sealChannelEditActivity.mTvRxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_rx_tone, "field 'mTvRxCss'", TextView.class);
        sealChannelEditActivity.mFlRXCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_rx_tone, "field 'mFlRXCss'", FrameLayout.class);
        sealChannelEditActivity.mDeleteBtn = (Button) Utils.findRequiredViewAsType(view, R.id.btn_delete, "field 'mDeleteBtn'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SealChannelEditActivity sealChannelEditActivity = this.f6684a;
        if (sealChannelEditActivity != null) {
            this.f6684a = null;
            sealChannelEditActivity.mTitleBarLeft = null;
            sealChannelEditActivity.mTitleBarTitle = null;
            sealChannelEditActivity.mTitleBarConfirm = null;
            sealChannelEditActivity.channelIndex = null;
            sealChannelEditActivity.mEtEditName = null;
            sealChannelEditActivity.mTvTxFreq = null;
            sealChannelEditActivity.mFlTxFreq = null;
            sealChannelEditActivity.mTvRxFreq = null;
            sealChannelEditActivity.mFlRxFreq = null;
            sealChannelEditActivity.mTvTxCss = null;
            sealChannelEditActivity.mFlTxCss = null;
            sealChannelEditActivity.mTvRxCss = null;
            sealChannelEditActivity.mFlRXCss = null;
            sealChannelEditActivity.mDeleteBtn = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
