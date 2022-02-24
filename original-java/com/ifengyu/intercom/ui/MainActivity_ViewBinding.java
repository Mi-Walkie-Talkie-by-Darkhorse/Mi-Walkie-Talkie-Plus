package com.ifengyu.intercom.ui;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.google.android.material.tabs.TabLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.NoScrollViewPager;

/* loaded from: classes2.dex */
public class MainActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private MainActivity f5994a;

    @UiThread
    public MainActivity_ViewBinding(MainActivity mainActivity, View view) {
        this.f5994a = mainActivity;
        mainActivity.viewPager = (NoScrollViewPager) Utils.findRequiredViewAsType(view, R.id.home_container, "field 'viewPager'", NoScrollViewPager.class);
        mainActivity.mTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.bottom_tab_layout, "field 'mTabLayout'", TabLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MainActivity mainActivity = this.f5994a;
        if (mainActivity != null) {
            this.f5994a = null;
            mainActivity.viewPager = null;
            mainActivity.mTabLayout = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
