package com.ifengyu.intercom.p216ui;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager2.widget.ViewPager2;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.google.android.material.tabs.TabLayout;
import com.ifengyu.intercom.R;

/* renamed from: com.ifengyu.intercom.ui.MainFragment_ViewBinding */
/* loaded from: classes2.dex */
public class MainFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private MainFragment f14721a;

    @UiThread
    public MainFragment_ViewBinding(MainFragment mainFragment, View view) {
        this.f14721a = mainFragment;
        mainFragment.viewPager = (ViewPager2) Utils.findRequiredViewAsType(view, R.id.home_container, "field 'viewPager'", ViewPager2.class);
        mainFragment.mTabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.bottom_tab_layout, "field 'mTabLayout'", TabLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MainFragment mainFragment = this.f14721a;
        if (mainFragment != null) {
            this.f14721a = null;
            mainFragment.viewPager = null;
            mainFragment.mTabLayout = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
