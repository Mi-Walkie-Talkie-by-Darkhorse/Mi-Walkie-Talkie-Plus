package com.ifengyu.intercom.ui.imui.ui.chat.session.activity;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.SearchView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.activity.BaseSearchContactActivity;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;

public class BaseSearchContactActivity_ViewBinding<T extends BaseSearchContactActivity> implements Unbinder {
    protected T target;

    @UiThread
    public BaseSearchContactActivity_ViewBinding(T t, View view) {
        this.target = t;
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mTvRight = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'mTvRight'", TextView.class);
        t.mSearchView = (SearchView) Utils.findRequiredViewAsType(view, R.id.search_view, "field 'mSearchView'", SearchView.class);
        t.mRvTopList = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_top_list, "field 'mRvTopList'", RecyclerViewEmptySupport.class);
        t.mRvSearchList = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_search_list, "field 'mRvSearchList'", RecyclerViewEmptySupport.class);
        t.mSearchContent = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.search_content, "field 'mSearchContent'", LinearLayout.class);
        t.mNearbyContent = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.nearby_content, "field 'mNearbyContent'", LinearLayout.class);
        t.mTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.tab_layout, "field 'mTabLayout'", TabLayout.class);
        t.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.view_pager, "field 'mViewPager'", ViewPager.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.target;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mIbLeft = null;
        t.mTvTitle = null;
        t.mTvRight = null;
        t.mSearchView = null;
        t.mRvTopList = null;
        t.mRvSearchList = null;
        t.mSearchContent = null;
        t.mNearbyContent = null;
        t.mTabLayout = null;
        t.mViewPager = null;
        this.target = null;
    }
}
