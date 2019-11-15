package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.SwitchTalkActivity;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;

public class SwitchTalkActivity_ViewBinding<T extends SwitchTalkActivity> implements Unbinder {
    protected T target;

    @UiThread
    public SwitchTalkActivity_ViewBinding(T t, View view) {
        this.target = t;
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mTitleBar = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.title_bar, "field 'mTitleBar'", FrameLayout.class);
        t.mTvTalkGroupName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_talk_group_name, "field 'mTvTalkGroupName'", TextView.class);
        t.mTvTalkGroupId = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_talk_group_id, "field 'mTvTalkGroupId'", TextView.class);
        t.mEmptyLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.empty_layout, "field 'mEmptyLayout'", LinearLayout.class);
        t.mRvGroupList = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_group_list, "field 'mRvGroupList'", RecyclerViewEmptySupport.class);
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
        t.mTvTalkGroupName = null;
        t.mTvTalkGroupId = null;
        t.mEmptyLayout = null;
        t.mRvGroupList = null;
        this.target = null;
    }
}
