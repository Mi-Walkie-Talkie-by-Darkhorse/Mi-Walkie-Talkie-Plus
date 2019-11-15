package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.fragment.MessageFragment;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;

public class MessageFragment_ViewBinding<T extends MessageFragment> implements Unbinder {
    protected T target;

    @UiThread
    public MessageFragment_ViewBinding(T t, View view) {
        this.target = t;
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mIbRight = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_right, "field 'mIbRight'", QMUIAlphaImageButton.class);
        t.mTitleBar = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.title_bar, "field 'mTitleBar'", FrameLayout.class);
        t.mBtnRecord = (ImageButton) Utils.findRequiredViewAsType(view, R.id.btn_record, "field 'mBtnRecord'", ImageButton.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.target;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mIbLeft = null;
        t.mTvTitle = null;
        t.mIbRight = null;
        t.mTitleBar = null;
        t.mBtnRecord = null;
        this.target = null;
    }
}
