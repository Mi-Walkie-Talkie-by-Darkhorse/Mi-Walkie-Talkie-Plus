package com.ifengyu.intercom.ui;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.design.widget.TabLayout;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.widget.view.NoScrollViewPager;

public class MainActivity_ViewBinding<T extends MainActivity> implements Unbinder {
    protected T a;

    @UiThread
    public MainActivity_ViewBinding(T t, View view) {
        this.a = t;
        t.viewPager = (NoScrollViewPager) Utils.findRequiredViewAsType(view, R.id.home_container, "field 'viewPager'", NoScrollViewPager.class);
        t.mTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.bottom_tab_layout, "field 'mTabLayout'", TabLayout.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.viewPager = null;
        t.mTabLayout = null;
        this.a = null;
    }
}
