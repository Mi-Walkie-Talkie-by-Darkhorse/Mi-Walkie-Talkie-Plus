package com.ifengyu.intercom.ui.imui.ui.qrcode;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cn.bingoogolapple.qrcode.zxing.ZXingView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.qrcode.BaseScanActivity;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;

public class BaseScanActivity_ViewBinding<T extends BaseScanActivity> implements Unbinder {
    protected T a;

    @UiThread
    public BaseScanActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mIbRight = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_right, "field 'mIbRight'", QMUIAlphaImageButton.class);
        t.mTitleBar = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.title_bar, "field 'mTitleBar'", FrameLayout.class);
        t.mZxingview = (ZXingView) Utils.findRequiredViewAsType(view, R.id.zxing_view, "field 'mZxingview'", ZXingView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mIbLeft = null;
        t.mTvTitle = null;
        t.mIbRight = null;
        t.mTitleBar = null;
        t.mZxingview = null;
        this.a = null;
    }
}
