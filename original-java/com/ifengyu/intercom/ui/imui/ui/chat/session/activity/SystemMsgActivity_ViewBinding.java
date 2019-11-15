package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.SystemMsgActivity;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;

public class SystemMsgActivity_ViewBinding<T extends SystemMsgActivity> implements Unbinder {
    protected T target;

    @UiThread
    public SystemMsgActivity_ViewBinding(T t, View view) {
        this.target = t;
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mRvMsgList = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_msg_list, "field 'mRvMsgList'", RecyclerViewEmptySupport.class);
        t.mTvEmptyView = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_empty_view, "field 'mTvEmptyView'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.target;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mIbLeft = null;
        t.mTvTitle = null;
        t.mRvMsgList = null;
        t.mTvEmptyView = null;
        this.target = null;
    }
}
