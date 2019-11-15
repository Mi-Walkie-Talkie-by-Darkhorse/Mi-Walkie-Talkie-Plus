package com.ifengyu.intercom.ui.imui.ui.qrcode;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.qrcode.SelfQRCodeActivity;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;

public class SelfQRCodeActivity_ViewBinding<T extends SelfQRCodeActivity> implements Unbinder {
    protected T a;

    @UiThread
    public SelfQRCodeActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mIbRight = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_right, "field 'mIbRight'", QMUIAlphaImageButton.class);
        t.mIvQRCode = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_qr_code, "field 'mIvQRCode'", ImageView.class);
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
        t.mIvQRCode = null;
        this.a = null;
    }
}
