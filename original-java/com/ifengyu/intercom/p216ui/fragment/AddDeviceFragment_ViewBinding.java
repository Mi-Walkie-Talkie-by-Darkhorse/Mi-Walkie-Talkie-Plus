package com.ifengyu.intercom.p216ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.fragment.AddDeviceFragment_ViewBinding */
/* loaded from: classes2.dex */
public class AddDeviceFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private AddDeviceFragment f15125a;

    /* renamed from: b */
    private View f15126b;

    /* renamed from: c */
    private View f15127c;

    /* renamed from: d */
    private View f15128d;

    /* renamed from: e */
    private View f15129e;

    /* renamed from: f */
    private View f15130f;

    /* renamed from: g */
    private View f15131g;

    /* renamed from: com.ifengyu.intercom.ui.fragment.AddDeviceFragment_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C4477a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AddDeviceFragment f15132a;

        C4477a(AddDeviceFragment_ViewBinding addDeviceFragment_ViewBinding, AddDeviceFragment addDeviceFragment) {
            this.f15132a = addDeviceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15132a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.fragment.AddDeviceFragment_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C4478b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AddDeviceFragment f15133a;

        C4478b(AddDeviceFragment_ViewBinding addDeviceFragment_ViewBinding, AddDeviceFragment addDeviceFragment) {
            this.f15133a = addDeviceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15133a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.fragment.AddDeviceFragment_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C4479c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AddDeviceFragment f15134a;

        C4479c(AddDeviceFragment_ViewBinding addDeviceFragment_ViewBinding, AddDeviceFragment addDeviceFragment) {
            this.f15134a = addDeviceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15134a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.fragment.AddDeviceFragment_ViewBinding$d */
    /* loaded from: classes2.dex */
    class C4480d extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AddDeviceFragment f15135a;

        C4480d(AddDeviceFragment_ViewBinding addDeviceFragment_ViewBinding, AddDeviceFragment addDeviceFragment) {
            this.f15135a = addDeviceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15135a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.fragment.AddDeviceFragment_ViewBinding$e */
    /* loaded from: classes2.dex */
    class C4481e extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AddDeviceFragment f15136a;

        C4481e(AddDeviceFragment_ViewBinding addDeviceFragment_ViewBinding, AddDeviceFragment addDeviceFragment) {
            this.f15136a = addDeviceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15136a.onViewClicked(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.fragment.AddDeviceFragment_ViewBinding$f */
    /* loaded from: classes2.dex */
    class C4482f extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ AddDeviceFragment f15137a;

        C4482f(AddDeviceFragment_ViewBinding addDeviceFragment_ViewBinding, AddDeviceFragment addDeviceFragment) {
            this.f15137a = addDeviceFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f15137a.onViewClicked(view);
        }
    }

    @UiThread
    public AddDeviceFragment_ViewBinding(AddDeviceFragment addDeviceFragment, View view) {
        this.f15125a = addDeviceFragment;
        addDeviceFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.dolphin_layout_bottom_shadow, "field 'dolphinBottomShadow' and method 'onViewClicked'");
        addDeviceFragment.dolphinBottomShadow = (QMUILinearLayout) Utils.castView(findRequiredView, R.id.dolphin_layout_bottom_shadow, "field 'dolphinBottomShadow'", QMUILinearLayout.class);
        this.f15126b = findRequiredView;
        findRequiredView.setOnClickListener(new C4477a(this, addDeviceFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.seal_layout_bottom_shadow, "field 'sealBottomShadow' and method 'onViewClicked'");
        addDeviceFragment.sealBottomShadow = (QMUILinearLayout) Utils.castView(findRequiredView2, R.id.seal_layout_bottom_shadow, "field 'sealBottomShadow'", QMUILinearLayout.class);
        this.f15127c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4478b(this, addDeviceFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.shark_layout_bottom_shadow, "field 'sharkBottomShadow' and method 'onViewClicked'");
        addDeviceFragment.sharkBottomShadow = (QMUILinearLayout) Utils.castView(findRequiredView3, R.id.shark_layout_bottom_shadow, "field 'sharkBottomShadow'", QMUILinearLayout.class);
        this.f15128d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C4479c(this, addDeviceFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.lite_layout_bottom_shadow, "field 'liteBottomShadow' and method 'onViewClicked'");
        addDeviceFragment.liteBottomShadow = (QMUILinearLayout) Utils.castView(findRequiredView4, R.id.lite_layout_bottom_shadow, "field 'liteBottomShadow'", QMUILinearLayout.class);
        this.f15129e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C4480d(this, addDeviceFragment));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.net_device_layout_bottom_shadow, "field 'netDeviceBottomShadow' and method 'onViewClicked'");
        addDeviceFragment.netDeviceBottomShadow = (QMUILinearLayout) Utils.castView(findRequiredView5, R.id.net_device_layout_bottom_shadow, "field 'netDeviceBottomShadow'", QMUILinearLayout.class);
        this.f15130f = findRequiredView5;
        findRequiredView5.setOnClickListener(new C4481e(this, addDeviceFragment));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.mi3_layout_bottom_shadow, "field 'mi3BottomShadow' and method 'onViewClicked'");
        addDeviceFragment.mi3BottomShadow = (QMUILinearLayout) Utils.castView(findRequiredView6, R.id.mi3_layout_bottom_shadow, "field 'mi3BottomShadow'", QMUILinearLayout.class);
        this.f15131g = findRequiredView6;
        findRequiredView6.setOnClickListener(new C4482f(this, addDeviceFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AddDeviceFragment addDeviceFragment = this.f15125a;
        if (addDeviceFragment != null) {
            this.f15125a = null;
            addDeviceFragment.mTopbar = null;
            addDeviceFragment.dolphinBottomShadow = null;
            addDeviceFragment.sealBottomShadow = null;
            addDeviceFragment.sharkBottomShadow = null;
            addDeviceFragment.liteBottomShadow = null;
            addDeviceFragment.netDeviceBottomShadow = null;
            addDeviceFragment.mi3BottomShadow = null;
            this.f15126b.setOnClickListener(null);
            this.f15126b = null;
            this.f15127c.setOnClickListener(null);
            this.f15127c = null;
            this.f15128d.setOnClickListener(null);
            this.f15128d = null;
            this.f15129e.setOnClickListener(null);
            this.f15129e = null;
            this.f15130f.setOnClickListener(null);
            this.f15130f = null;
            this.f15131g.setOnClickListener(null);
            this.f15131g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
