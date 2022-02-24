package com.ifengyu.intercom.ui.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class SystemPermissionActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private SystemPermissionActivity f6180a;

    /* renamed from: b  reason: collision with root package name */
    private View f6181b;

    /* renamed from: c  reason: collision with root package name */
    private View f6182c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;
    private View i;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SystemPermissionActivity f6183a;

        a(SystemPermissionActivity_ViewBinding systemPermissionActivity_ViewBinding, SystemPermissionActivity systemPermissionActivity) {
            this.f6183a = systemPermissionActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6183a.onViewClicked(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SystemPermissionActivity f6184a;

        b(SystemPermissionActivity_ViewBinding systemPermissionActivity_ViewBinding, SystemPermissionActivity systemPermissionActivity) {
            this.f6184a = systemPermissionActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6184a.onViewClicked(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SystemPermissionActivity f6185a;

        c(SystemPermissionActivity_ViewBinding systemPermissionActivity_ViewBinding, SystemPermissionActivity systemPermissionActivity) {
            this.f6185a = systemPermissionActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6185a.onViewClicked(view);
        }
    }

    /* loaded from: classes2.dex */
    class d extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SystemPermissionActivity f6186a;

        d(SystemPermissionActivity_ViewBinding systemPermissionActivity_ViewBinding, SystemPermissionActivity systemPermissionActivity) {
            this.f6186a = systemPermissionActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6186a.onViewClicked(view);
        }
    }

    /* loaded from: classes2.dex */
    class e extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SystemPermissionActivity f6187a;

        e(SystemPermissionActivity_ViewBinding systemPermissionActivity_ViewBinding, SystemPermissionActivity systemPermissionActivity) {
            this.f6187a = systemPermissionActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6187a.onViewClicked(view);
        }
    }

    /* loaded from: classes2.dex */
    class f extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SystemPermissionActivity f6188a;

        f(SystemPermissionActivity_ViewBinding systemPermissionActivity_ViewBinding, SystemPermissionActivity systemPermissionActivity) {
            this.f6188a = systemPermissionActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6188a.onViewClicked(view);
        }
    }

    /* loaded from: classes2.dex */
    class g extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SystemPermissionActivity f6189a;

        g(SystemPermissionActivity_ViewBinding systemPermissionActivity_ViewBinding, SystemPermissionActivity systemPermissionActivity) {
            this.f6189a = systemPermissionActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6189a.onViewClicked(view);
        }
    }

    /* loaded from: classes2.dex */
    class h extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SystemPermissionActivity f6190a;

        h(SystemPermissionActivity_ViewBinding systemPermissionActivity_ViewBinding, SystemPermissionActivity systemPermissionActivity) {
            this.f6190a = systemPermissionActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6190a.onViewClicked(view);
        }
    }

    @UiThread
    public SystemPermissionActivity_ViewBinding(SystemPermissionActivity systemPermissionActivity, View view) {
        this.f6180a = systemPermissionActivity;
        systemPermissionActivity.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopBar'", QMUITopBarLayout.class);
        systemPermissionActivity.notifyValue = (TextView) Utils.findRequiredViewAsType(view, R.id.notifyValue, "field 'notifyValue'", TextView.class);
        systemPermissionActivity.cameraValue = (TextView) Utils.findRequiredViewAsType(view, R.id.cameraValue, "field 'cameraValue'", TextView.class);
        systemPermissionActivity.locationValue = (TextView) Utils.findRequiredViewAsType(view, R.id.locationValue, "field 'locationValue'", TextView.class);
        systemPermissionActivity.storageValue = (TextView) Utils.findRequiredViewAsType(view, R.id.storageValue, "field 'storageValue'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.locationLeftLayout, "method 'onViewClicked'");
        this.f6181b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, systemPermissionActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.storageLeftLayout, "method 'onViewClicked'");
        this.f6182c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, systemPermissionActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.cameraLeftLayout, "method 'onViewClicked'");
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, systemPermissionActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.notifyLeftLayout, "method 'onViewClicked'");
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new d(this, systemPermissionActivity));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.locationRightLayout, "method 'onViewClicked'");
        this.f = findRequiredView5;
        findRequiredView5.setOnClickListener(new e(this, systemPermissionActivity));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.storageRightLayout, "method 'onViewClicked'");
        this.g = findRequiredView6;
        findRequiredView6.setOnClickListener(new f(this, systemPermissionActivity));
        View findRequiredView7 = Utils.findRequiredView(view, R.id.cameraRightLayout, "method 'onViewClicked'");
        this.h = findRequiredView7;
        findRequiredView7.setOnClickListener(new g(this, systemPermissionActivity));
        View findRequiredView8 = Utils.findRequiredView(view, R.id.notifyRightLayout, "method 'onViewClicked'");
        this.i = findRequiredView8;
        findRequiredView8.setOnClickListener(new h(this, systemPermissionActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SystemPermissionActivity systemPermissionActivity = this.f6180a;
        if (systemPermissionActivity != null) {
            this.f6180a = null;
            systemPermissionActivity.mTopBar = null;
            systemPermissionActivity.notifyValue = null;
            systemPermissionActivity.cameraValue = null;
            systemPermissionActivity.locationValue = null;
            systemPermissionActivity.storageValue = null;
            this.f6181b.setOnClickListener(null);
            this.f6181b = null;
            this.f6182c.setOnClickListener(null);
            this.f6182c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            this.f.setOnClickListener(null);
            this.f = null;
            this.g.setOnClickListener(null);
            this.g = null;
            this.h.setOnClickListener(null);
            this.h = null;
            this.i.setOnClickListener(null);
            this.i = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
