package com.ifengyu.intercom.ui.imui.ui.chat.guide;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.guide.BluetoothGuideFragment;
import com.ifengyu.intercom.ui.widget.view.WaterRippleView;
import com.ifengyu.library.widget.view.QMUIAlphaButton;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.QMUIAlphaTextView;

public class BluetoothGuideFragment_ViewBinding<T extends BluetoothGuideFragment> implements Unbinder {
    protected T target;

    @UiThread
    public BluetoothGuideFragment_ViewBinding(T t, View view) {
        this.target = t;
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mTitleBar = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.title_bar, "field 'mTitleBar'", FrameLayout.class);
        t.mStartPage = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.start_page, "field 'mStartPage'", LinearLayout.class);
        t.mWv = (WaterRippleView) Utils.findRequiredViewAsType(view, R.id.wv, "field 'mWv'", WaterRippleView.class);
        t.mConnectingPage = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.connecting_page, "field 'mConnectingPage'", FrameLayout.class);
        t.mConnectSuccessPage = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.connect_success_page, "field 'mConnectSuccessPage'", LinearLayout.class);
        t.mConnectFailedPage = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.connect_failed_page, "field 'mConnectFailedPage'", LinearLayout.class);
        t.mTvLookHelp = (QMUIAlphaTextView) Utils.findRequiredViewAsType(view, R.id.tv_look_help, "field 'mTvLookHelp'", QMUIAlphaTextView.class);
        t.mBtnAction = (QMUIAlphaButton) Utils.findRequiredViewAsType(view, R.id.btn_action, "field 'mBtnAction'", QMUIAlphaButton.class);
        t.mTvTips = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_tips, "field 'mTvTips'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.target;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mIbLeft = null;
        t.mTvTitle = null;
        t.mTitleBar = null;
        t.mStartPage = null;
        t.mWv = null;
        t.mConnectingPage = null;
        t.mConnectSuccessPage = null;
        t.mConnectFailedPage = null;
        t.mTvLookHelp = null;
        t.mBtnAction = null;
        t.mTvTips = null;
        this.target = null;
    }
}
