package com.ifengyu.intercom.p216ui.activity;

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
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

/* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity_ViewBinding */
/* loaded from: classes2.dex */
public class MyInfoSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    private MyInfoSettingActivity f14850a;

    /* renamed from: b */
    private View f14851b;

    /* renamed from: c */
    private View f14852c;

    /* renamed from: d */
    private View f14853d;

    /* renamed from: e */
    private View f14854e;

    /* renamed from: f */
    private View f14855f;

    /* renamed from: g */
    private View f14856g;

    /* renamed from: h */
    private View f14857h;

    /* renamed from: i */
    private View f14858i;

    /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity_ViewBinding$a */
    /* loaded from: classes2.dex */
    class C4361a extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ MyInfoSettingActivity f14859a;

        C4361a(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f14859a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f14859a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity_ViewBinding$b */
    /* loaded from: classes2.dex */
    class C4362b extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ MyInfoSettingActivity f14860a;

        C4362b(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f14860a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f14860a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity_ViewBinding$c */
    /* loaded from: classes2.dex */
    class C4363c extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ MyInfoSettingActivity f14861a;

        C4363c(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f14861a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f14861a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity_ViewBinding$d */
    /* loaded from: classes2.dex */
    class C4364d extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ MyInfoSettingActivity f14862a;

        C4364d(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f14862a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f14862a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity_ViewBinding$e */
    /* loaded from: classes2.dex */
    class C4365e extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ MyInfoSettingActivity f14863a;

        C4365e(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f14863a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f14863a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity_ViewBinding$f */
    /* loaded from: classes2.dex */
    class C4366f extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ MyInfoSettingActivity f14864a;

        C4366f(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f14864a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f14864a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity_ViewBinding$g */
    /* loaded from: classes2.dex */
    class C4367g extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ MyInfoSettingActivity f14865a;

        C4367g(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f14865a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f14865a.onClick(view);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.MyInfoSettingActivity_ViewBinding$h */
    /* loaded from: classes2.dex */
    class C4368h extends DebouncingOnClickListener {

        /* renamed from: a */
        final /* synthetic */ MyInfoSettingActivity f14866a;

        C4368h(MyInfoSettingActivity_ViewBinding myInfoSettingActivity_ViewBinding, MyInfoSettingActivity myInfoSettingActivity) {
            this.f14866a = myInfoSettingActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f14866a.onClick(view);
        }
    }

    @UiThread
    public MyInfoSettingActivity_ViewBinding(MyInfoSettingActivity myInfoSettingActivity, View view) {
        this.f14850a = myInfoSettingActivity;
        myInfoSettingActivity.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        myInfoSettingActivity.mIvPhoneArrow = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_phone_arrow, "field 'mIvPhoneArrow'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_password, "field 'mItemPassword' and method 'onClick'");
        myInfoSettingActivity.mItemPassword = (QMUIConstraintLayout) Utils.castView(findRequiredView, R.id.item_password, "field 'mItemPassword'", QMUIConstraintLayout.class);
        this.f14851b = findRequiredView;
        findRequiredView.setOnClickListener(new C4361a(this, myInfoSettingActivity));
        myInfoSettingActivity.mTvIdValue = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_id_value, "field 'mTvIdValue'", TextView.class);
        myInfoSettingActivity.mCivPortrait = (QMUIRadiusImageView) Utils.findRequiredViewAsType(view, R.id.edit_my_portrait, "field 'mCivPortrait'", QMUIRadiusImageView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.btn_bottom, "field 'btnBottom' and method 'onClick'");
        myInfoSettingActivity.btnBottom = (QMUIRoundButton) Utils.castView(findRequiredView2, R.id.btn_bottom, "field 'btnBottom'", QMUIRoundButton.class);
        this.f14852c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4362b(this, myInfoSettingActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_avatar, "method 'onClick'");
        this.f14853d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C4363c(this, myInfoSettingActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.set_my_name, "method 'onClick'");
        this.f14854e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C4364d(this, myInfoSettingActivity));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.set_my_sex, "method 'onClick'");
        this.f14855f = findRequiredView5;
        findRequiredView5.setOnClickListener(new C4365e(this, myInfoSettingActivity));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.set_my_phone, "method 'onClick'");
        this.f14856g = findRequiredView6;
        findRequiredView6.setOnClickListener(new C4366f(this, myInfoSettingActivity));
        View findRequiredView7 = Utils.findRequiredView(view, R.id.set_my_email, "method 'onClick'");
        this.f14857h = findRequiredView7;
        findRequiredView7.setOnClickListener(new C4367g(this, myInfoSettingActivity));
        View findRequiredView8 = Utils.findRequiredView(view, R.id.item_id, "method 'onClick'");
        this.f14858i = findRequiredView8;
        findRequiredView8.setOnClickListener(new C4368h(this, myInfoSettingActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyInfoSettingActivity myInfoSettingActivity = this.f14850a;
        if (myInfoSettingActivity != null) {
            this.f14850a = null;
            myInfoSettingActivity.mTopbar = null;
            myInfoSettingActivity.mIvPhoneArrow = null;
            myInfoSettingActivity.mItemPassword = null;
            myInfoSettingActivity.mTvIdValue = null;
            myInfoSettingActivity.mCivPortrait = null;
            myInfoSettingActivity.btnBottom = null;
            this.f14851b.setOnClickListener(null);
            this.f14851b = null;
            this.f14852c.setOnClickListener(null);
            this.f14852c = null;
            this.f14853d.setOnClickListener(null);
            this.f14853d = null;
            this.f14854e.setOnClickListener(null);
            this.f14854e = null;
            this.f14855f.setOnClickListener(null);
            this.f14855f = null;
            this.f14856g.setOnClickListener(null);
            this.f14856g = null;
            this.f14857h.setOnClickListener(null);
            this.f14857h = null;
            this.f14858i.setOnClickListener(null);
            this.f14858i = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
