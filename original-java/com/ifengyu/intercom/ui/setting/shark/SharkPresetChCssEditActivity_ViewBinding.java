package com.ifengyu.intercom.ui.setting.shark;

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
public class SharkPresetChCssEditActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private SharkPresetChCssEditActivity f6809a;

    @UiThread
    public SharkPresetChCssEditActivity_ViewBinding(SharkPresetChCssEditActivity sharkPresetChCssEditActivity, View view) {
        this.f6809a = sharkPresetChCssEditActivity;
        sharkPresetChCssEditActivity.mTitleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mTitleBarLeft'", ImageView.class);
        sharkPresetChCssEditActivity.mTitleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'mTitleBarTitle'", TextView.class);
        sharkPresetChCssEditActivity.mTitleBarConfirm = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_confirm, "field 'mTitleBarConfirm'", TextView.class);
        sharkPresetChCssEditActivity.mTvTxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tx_tone, "field 'mTvTxCss'", TextView.class);
        sharkPresetChCssEditActivity.mFlTxCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_tx_tone, "field 'mFlTxCss'", FrameLayout.class);
        sharkPresetChCssEditActivity.mTvRxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_rx_tone, "field 'mTvRxCss'", TextView.class);
        sharkPresetChCssEditActivity.mFlRXCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_rx_tone, "field 'mFlRXCss'", FrameLayout.class);
        sharkPresetChCssEditActivity.channelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_number, "field 'channelNumber'", TextView.class);
        sharkPresetChCssEditActivity.channelName = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_name, "field 'channelName'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SharkPresetChCssEditActivity sharkPresetChCssEditActivity = this.f6809a;
        if (sharkPresetChCssEditActivity != null) {
            this.f6809a = null;
            sharkPresetChCssEditActivity.mTitleBarLeft = null;
            sharkPresetChCssEditActivity.mTitleBarTitle = null;
            sharkPresetChCssEditActivity.mTitleBarConfirm = null;
            sharkPresetChCssEditActivity.mTvTxCss = null;
            sharkPresetChCssEditActivity.mFlTxCss = null;
            sharkPresetChCssEditActivity.mTvRxCss = null;
            sharkPresetChCssEditActivity.mFlRXCss = null;
            sharkPresetChCssEditActivity.channelNumber = null;
            sharkPresetChCssEditActivity.channelName = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
