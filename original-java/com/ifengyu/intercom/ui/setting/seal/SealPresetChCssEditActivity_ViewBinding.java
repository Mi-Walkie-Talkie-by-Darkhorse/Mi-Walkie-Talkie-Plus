package com.ifengyu.intercom.ui.setting.seal;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;

/* loaded from: classes2.dex */
public class SealPresetChCssEditActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private SealPresetChCssEditActivity f6715a;

    @UiThread
    public SealPresetChCssEditActivity_ViewBinding(SealPresetChCssEditActivity sealPresetChCssEditActivity, View view) {
        this.f6715a = sealPresetChCssEditActivity;
        sealPresetChCssEditActivity.mTitleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mTitleBarLeft'", ImageView.class);
        sealPresetChCssEditActivity.mTitleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'mTitleBarTitle'", TextView.class);
        sealPresetChCssEditActivity.mTitleBarConfirm = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_confirm, "field 'mTitleBarConfirm'", TextView.class);
        sealPresetChCssEditActivity.mTvTxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tx_tone, "field 'mTvTxCss'", TextView.class);
        sealPresetChCssEditActivity.mFlTxCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_tx_tone, "field 'mFlTxCss'", FrameLayout.class);
        sealPresetChCssEditActivity.mTvRxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_rx_tone, "field 'mTvRxCss'", TextView.class);
        sealPresetChCssEditActivity.mFlRXCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_rx_tone, "field 'mFlRXCss'", FrameLayout.class);
        sealPresetChCssEditActivity.channelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_number, "field 'channelNumber'", TextView.class);
        sealPresetChCssEditActivity.channelName = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_name, "field 'channelName'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SealPresetChCssEditActivity sealPresetChCssEditActivity = this.f6715a;
        if (sealPresetChCssEditActivity != null) {
            this.f6715a = null;
            sealPresetChCssEditActivity.mTitleBarLeft = null;
            sealPresetChCssEditActivity.mTitleBarTitle = null;
            sealPresetChCssEditActivity.mTitleBarConfirm = null;
            sealPresetChCssEditActivity.mTvTxCss = null;
            sealPresetChCssEditActivity.mFlTxCss = null;
            sealPresetChCssEditActivity.mTvRxCss = null;
            sealPresetChCssEditActivity.mFlRXCss = null;
            sealPresetChCssEditActivity.channelNumber = null;
            sealPresetChCssEditActivity.channelName = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
