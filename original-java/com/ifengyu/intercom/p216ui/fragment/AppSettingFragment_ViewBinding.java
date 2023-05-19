package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.AppSettingFragment_ViewBinding */
/* loaded from: classes2.dex */
public class AppSettingFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private AppSettingFragment f15139a;

    /* renamed from: b */
    private View f15140b;

    /* renamed from: c */
    private View f15141c;

    /* renamed from: com.ifengyu.intercom.ui.fragment.AppSettingFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C4483a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AppSettingFragment f15142a;

        C4483a(AppSettingFragment_ViewBinding appSettingFragment_ViewBinding, AppSettingFragment appSettingFragment) {
            this.f15142a = appSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15142a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.fragment.AppSettingFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C4484b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AppSettingFragment f15143a;

        C4484b(AppSettingFragment_ViewBinding appSettingFragment_ViewBinding, AppSettingFragment appSettingFragment) {
            this.f15143a = appSettingFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15143a.onViewClicked(view);
        }
    }

    @UiThread
    public AppSettingFragment_ViewBinding(AppSettingFragment appSettingFragment, View view) {
        this.f15139a = appSettingFragment;
        appSettingFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        appSettingFragment.appCacheSize = (TextView) Utils.findRequiredViewAsType(view, R.id.appCacheSize, "field 'appCacheSize'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.ll_system_permission, "method 'onViewClicked'");
        this.f15140b = findRequiredView;
        findRequiredView.setOnClickListener(new C4483a(this, appSettingFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.ll_clear_cache, "method 'onViewClicked'");
        this.f15141c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4484b(this, appSettingFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AppSettingFragment appSettingFragment = this.f15139a;
        if (appSettingFragment != null) {
            this.f15139a = null;
            appSettingFragment.mTopbar = null;
            appSettingFragment.appCacheSize = null;
            this.f15140b.setOnClickListener(null);
            this.f15140b = null;
            this.f15141c.setOnClickListener(null);
            this.f15141c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
