package com.ifengyu.intercom.ui.setting.shark;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.setting.shark.SharkPresetChCssEditActivity;

public class SharkPresetChCssEditActivity_ViewBinding<T extends SharkPresetChCssEditActivity> implements Unbinder {
    protected T a;

    @UiThread
    public SharkPresetChCssEditActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.mTitleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mTitleBarLeft'", ImageView.class);
        t.mTitleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'mTitleBarTitle'", TextView.class);
        t.mTitleBarConfirm = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_confirm, "field 'mTitleBarConfirm'", TextView.class);
        t.mTvTxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tx_tone, "field 'mTvTxCss'", TextView.class);
        t.mFlTxCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_tx_tone, "field 'mFlTxCss'", FrameLayout.class);
        t.mTvRxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_rx_tone, "field 'mTvRxCss'", TextView.class);
        t.mFlRXCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_rx_tone, "field 'mFlRXCss'", FrameLayout.class);
        t.channelNumber = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_number, "field 'channelNumber'", TextView.class);
        t.channelName = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_name, "field 'channelName'", TextView.class);
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
        t.mTvTxCss = null;
        t.mFlTxCss = null;
        t.mTvRxCss = null;
        t.mFlRXCss = null;
        t.channelNumber = null;
        t.channelName = null;
        this.a = null;
    }
}
