package com.ifengyu.intercom.ui.setting.seal;

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
import com.ifengyu.intercom.ui.setting.seal.SealChannelEditActivity;
import com.ifengyu.intercom.ui.widget.view.ClearEditText;

public class SealChannelEditActivity_ViewBinding<T extends SealChannelEditActivity> implements Unbinder {
    protected T a;

    @UiThread
    public SealChannelEditActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.mTitleBarLeft = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_bar_left, "field 'mTitleBarLeft'", ImageView.class);
        t.mTitleBarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_title, "field 'mTitleBarTitle'", TextView.class);
        t.mTitleBarConfirm = (TextView) Utils.findRequiredViewAsType(view, R.id.title_bar_confirm, "field 'mTitleBarConfirm'", TextView.class);
        t.channelIndex = (TextView) Utils.findRequiredViewAsType(view, R.id.channel_index, "field 'channelIndex'", TextView.class);
        t.mEtEditName = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.et_channel_edit_name, "field 'mEtEditName'", ClearEditText.class);
        t.mTvTxFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tx_freq, "field 'mTvTxFreq'", TextView.class);
        t.mFlTxFreq = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_tx_freq, "field 'mFlTxFreq'", FrameLayout.class);
        t.mTvRxFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_rx_freq, "field 'mTvRxFreq'", TextView.class);
        t.mFlRxFreq = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_rx_freq, "field 'mFlRxFreq'", FrameLayout.class);
        t.mTvTxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tx_tone, "field 'mTvTxCss'", TextView.class);
        t.mFlTxCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_tx_tone, "field 'mFlTxCss'", FrameLayout.class);
        t.mTvRxCss = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_rx_tone, "field 'mTvRxCss'", TextView.class);
        t.mFlRXCss = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.fl_rx_tone, "field 'mFlRXCss'", FrameLayout.class);
        t.mDeleteBtn = (Button) Utils.findRequiredViewAsType(view, R.id.btn_delete, "field 'mDeleteBtn'", Button.class);
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
        t.channelIndex = null;
        t.mEtEditName = null;
        t.mTvTxFreq = null;
        t.mFlTxFreq = null;
        t.mTvRxFreq = null;
        t.mFlRxFreq = null;
        t.mTvTxCss = null;
        t.mFlTxCss = null;
        t.mTvRxCss = null;
        t.mFlRXCss = null;
        t.mDeleteBtn = null;
        this.a = null;
    }
}
