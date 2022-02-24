package com.ifengyu.intercom.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.layout.QMUIConstraintLayout;

/* loaded from: classes2.dex */
public class MyInfoSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private MyInfoSettingActivity f6086a;

    /* renamed from: b  reason: collision with root package name */
    private View f6087b;

    /* renamed from: c  reason: collision with root package name */
    private View f6088c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;

    /* loaded from: classes2.dex */
    class a extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MyInfoSettingActivity f6089a;

        a(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f6089a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6089a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class b extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MyInfoSettingActivity f6090a;

        b(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f6090a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6090a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class c extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MyInfoSettingActivity f6091a;

        c(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f6091a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6091a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class d extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MyInfoSettingActivity f6092a;

        d(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f6092a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6092a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class e extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MyInfoSettingActivity f6093a;

        e(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f6093a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6093a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class f extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MyInfoSettingActivity f6094a;

        f(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f6094a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6094a.onClick(view);
        }
    }

    /* loaded from: classes2.dex */
    class g extends DebouncingOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MyInfoSettingActivity f6095a;

        g(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f6095a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6095a.onClick(view);
        }
    }

    @UiThread
    public MyInfoSettingActivity_ViewBinding(MyInfoSettingActivity myInfoSettingActivity, View view) {
        this.f6086a = myInfoSettingActivity;
        myInfoSettingActivity.mIvPhoneArrow = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_phone_arrow, "field 'mIvPhoneArrow'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_password, "field 'mItemPassword' and method 'onClick'");
        myInfoSettingActivity.mItemPassword = (QMUIConstraintLayout) Utils.castView(findRequiredView, R.id.item_password, "field 'mItemPassword'", QMUIConstraintLayout.class);
        this.f6087b = findRequiredView;
        findRequiredView.setOnClickListener(new a(this, myInfoSettingActivity));
        myInfoSettingActivity.mTvIdValue = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_id_value, "field 'mTvIdValue'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_avatar, "method 'onClick'");
        this.f6088c = findRequiredView2;
        findRequiredView2.setOnClickListener(new b(this, myInfoSettingActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.set_my_name, "method 'onClick'");
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new c(this, myInfoSettingActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.set_my_sex, "method 'onClick'");
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new d(this, myInfoSettingActivity));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.set_my_phone, "method 'onClick'");
        this.f = findRequiredView5;
        findRequiredView5.setOnClickListener(new e(this, myInfoSettingActivity));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.set_my_email, "method 'onClick'");
        this.g = findRequiredView6;
        findRequiredView6.setOnClickListener(new f(this, myInfoSettingActivity));
        View findRequiredView7 = Utils.findRequiredView(view, R.id.item_id, "method 'onClick'");
        this.h = findRequiredView7;
        findRequiredView7.setOnClickListener(new g(this, myInfoSettingActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyInfoSettingActivity myInfoSettingActivity = this.f6086a;
        if (myInfoSettingActivity != null) {
            this.f6086a = null;
            myInfoSettingActivity.mIvPhoneArrow = null;
            myInfoSettingActivity.mItemPassword = null;
            myInfoSettingActivity.mTvIdValue = null;
            this.f6087b.setOnClickListener(null);
            this.f6087b = null;
            this.f6088c.setOnClickListener(null);
            this.f6088c = null;
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
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
