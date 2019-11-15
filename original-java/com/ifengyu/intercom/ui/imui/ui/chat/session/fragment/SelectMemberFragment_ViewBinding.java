package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.fragment.SelectMemberFragment;
import com.ifengyu.library.widget.view.ClearEditText;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;

public class SelectMemberFragment_ViewBinding<T extends SelectMemberFragment> implements Unbinder {
    protected T target;

    @UiThread
    public SelectMemberFragment_ViewBinding(T t, View view) {
        this.target = t;
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mTitleBar = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.title_bar, "field 'mTitleBar'", FrameLayout.class);
        t.mSearchEditText = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.search_edit_text, "field 'mSearchEditText'", ClearEditText.class);
        t.mRvSearchList = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'mRvSearchList'", RecyclerViewEmptySupport.class);
        t.mLlNoSearchResult = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_no_search_result, "field 'mLlNoSearchResult'", LinearLayout.class);
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
        t.mSearchEditText = null;
        t.mRvSearchList = null;
        t.mLlNoSearchResult = null;
        this.target = null;
    }
}
