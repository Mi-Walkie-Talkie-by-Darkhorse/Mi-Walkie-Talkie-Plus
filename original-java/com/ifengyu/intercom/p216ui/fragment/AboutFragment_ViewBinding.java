package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.AboutFragment_ViewBinding */
/* loaded from: classes2.dex */
public class AboutFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private AboutFragment f15116a;

    /* renamed from: b */
    private View f15117b;

    /* renamed from: c */
    private View f15118c;

    /* renamed from: d */
    private View f15119d;

    /* renamed from: e */
    private View f15120e;

    /* renamed from: com.ifengyu.intercom.ui.fragment.AboutFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C4473a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AboutFragment f15121a;

        C4473a(AboutFragment_ViewBinding aboutFragment_ViewBinding, AboutFragment aboutFragment) {
            this.f15121a = aboutFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15121a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.fragment.AboutFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C4474b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AboutFragment f15122a;

        C4474b(AboutFragment_ViewBinding aboutFragment_ViewBinding, AboutFragment aboutFragment) {
            this.f15122a = aboutFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15122a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.fragment.AboutFragment_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C4475c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AboutFragment f15123a;

        C4475c(AboutFragment_ViewBinding aboutFragment_ViewBinding, AboutFragment aboutFragment) {
            this.f15123a = aboutFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15123a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.fragment.AboutFragment_ViewBinding$d */
    /* loaded from: classes2.dex */
    class C4476d extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AboutFragment f15124a;

        C4476d(AboutFragment_ViewBinding aboutFragment_ViewBinding, AboutFragment aboutFragment) {
            this.f15124a = aboutFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15124a.onViewClicked(view);
        }
    }

    @UiThread
    public AboutFragment_ViewBinding(AboutFragment aboutFragment, View view) {
        this.f15116a = aboutFragment;
        aboutFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        aboutFragment.aboutIcon = (ImageView) Utils.findRequiredViewAsType(view, R.id.about_icon, "field 'aboutIcon'", ImageView.class);
        aboutFragment.appVersionName = (TextView) Utils.findRequiredViewAsType(view, R.id.about_app_versionName, "field 'appVersionName'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.check_app_update, "method 'onViewClicked'");
        this.f15117b = findRequiredView;
        findRequiredView.setOnClickListener(new C4473a(this, aboutFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.user_protocol, "method 'onViewClicked'");
        this.f15118c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4474b(this, aboutFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.user_improve_plan_layout, "method 'onViewClicked'");
        this.f15119d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C4475c(this, aboutFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.user_power_center_layout, "method 'onViewClicked'");
        this.f15120e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C4476d(this, aboutFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AboutFragment aboutFragment = this.f15116a;
        if (aboutFragment != null) {
            this.f15116a = null;
            aboutFragment.mTopbar = null;
            aboutFragment.aboutIcon = null;
            aboutFragment.appVersionName = null;
            this.f15117b.setOnClickListener(null);
            this.f15117b = null;
            this.f15118c.setOnClickListener(null);
            this.f15118c = null;
            this.f15119d.setOnClickListener(null);
            this.f15119d = null;
            this.f15120e.setOnClickListener(null);
            this.f15120e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
