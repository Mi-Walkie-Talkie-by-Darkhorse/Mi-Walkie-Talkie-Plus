package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.v7.widget.SearchView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.GroupJoinActivity;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;

public class GroupJoinActivity_ViewBinding<T extends GroupJoinActivity> implements Unbinder {
    protected T target;

    @UiThread
    public GroupJoinActivity_ViewBinding(T t, View view) {
        this.target = t;
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mIbRight = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_right, "field 'mIbRight'", QMUIAlphaImageButton.class);
        t.mSearchView = (SearchView) Utils.findRequiredViewAsType(view, R.id.search_view, "field 'mSearchView'", SearchView.class);
        t.mRvSearchList = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rvSearchList, "field 'mRvSearchList'", RecyclerViewEmptySupport.class);
        t.mLlContent = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_content, "field 'mLlContent'", LinearLayout.class);
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
        t.mSearchView = null;
        t.mRvSearchList = null;
        t.mLlContent = null;
        this.target = null;
    }
}
