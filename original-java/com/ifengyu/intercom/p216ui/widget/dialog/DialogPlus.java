package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.Variables;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus */
/* loaded from: classes2.dex */
public class DialogPlus {

    /* renamed from: a */
    private final ViewGroup f15819a;

    /* renamed from: b */
    private final ViewGroup f15820b;

    /* renamed from: c */
    private final boolean f15821c;

    /* renamed from: d */
    private boolean f15822d;

    /* renamed from: f */
    private final InterfaceC4889k f15824f;

    /* renamed from: g */
    private final InterfaceC4887i f15825g;

    /* renamed from: h */
    private final InterfaceC4888j f15826h;

    /* renamed from: i */
    private final InterfaceC4886h f15827i;

    /* renamed from: j */
    private final InterfaceC4885g f15828j;

    /* renamed from: k */
    private final Holder f15829k;

    /* renamed from: l */
    private final ViewGroup f15830l;

    /* renamed from: m */
    private final Animation f15831m;

    /* renamed from: n */
    private final Animation f15832n;

    /* renamed from: o */
    private final View f15833o;

    /* renamed from: e */
    private boolean f15823e = true;

    /* renamed from: p */
    private final View.OnTouchListener f15834p = new View$OnTouchListenerC4884f();

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$OnHolderListener */
    /* loaded from: classes2.dex */
    public interface OnHolderListener {
        /* renamed from: a */
        void mo9065a(Object obj, View view, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$a */
    /* loaded from: classes2.dex */
    public class RunnableC4878a implements Runnable {
        RunnableC4878a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogPlus.this.m9066v();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$b  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class animationAnimation$AnimationListenerC4879b implements Animation.AnimationListener {

        /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$b$a */
        /* loaded from: classes2.dex */
        class RunnableC4880a implements Runnable {
            RunnableC4880a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DialogPlus.this.f15830l.removeView(DialogPlus.this.f15819a);
                DialogPlus.this.f15822d = false;
                if (DialogPlus.this.f15826h != null) {
                    DialogPlus.this.f15826h.m9062a(DialogPlus.this);
                }
            }
        }

        animationAnimation$AnimationListenerC4879b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            DialogPlus.this.f15830l.post(new RunnableC4880a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$c */
    /* loaded from: classes2.dex */
    public class C4881c implements OnHolderListener {
        C4881c() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.DialogPlus.OnHolderListener
        /* renamed from: a */
        public void mo9065a(Object obj, View view, int i) {
            if (DialogPlus.this.f15824f == null) {
                return;
            }
            DialogPlus.this.f15824f.m9061a(DialogPlus.this, obj, view, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$d */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4882d implements View.OnClickListener {
        View$OnClickListenerC4882d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DialogPlus.this.f15825g == null) {
                return;
            }
            DialogPlus.this.f15825g.mo9015a(DialogPlus.this, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$e */
    /* loaded from: classes2.dex */
    public class View$OnKeyListenerC4883e implements View.OnKeyListener {
        View$OnKeyListenerC4883e() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 1 && i == 4) {
                if (DialogPlus.this.f15828j != null) {
                    DialogPlus.this.f15828j.m9064a(DialogPlus.this);
                }
                if (DialogPlus.this.f15821c) {
                    DialogPlus dialogPlus = DialogPlus.this;
                    dialogPlus.m9068t(dialogPlus);
                }
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$f */
    /* loaded from: classes2.dex */
    class View$OnTouchListenerC4884f implements View.OnTouchListener {
        View$OnTouchListenerC4884f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                if (DialogPlus.this.f15827i != null) {
                    DialogPlus.this.f15827i.m9063a(DialogPlus.this);
                }
                DialogPlus.this.m9076l();
                return false;
            }
            return false;
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$g */
    /* loaded from: classes2.dex */
    public interface InterfaceC4885g {
        /* renamed from: a */
        void m9064a(DialogPlus dialogPlus);
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$h */
    /* loaded from: classes2.dex */
    public interface InterfaceC4886h {
        /* renamed from: a */
        void m9063a(DialogPlus dialogPlus);
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$i */
    /* loaded from: classes2.dex */
    public interface InterfaceC4887i {
        /* renamed from: a */
        void mo9015a(DialogPlus dialogPlus, View view);
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$j */
    /* loaded from: classes2.dex */
    public interface InterfaceC4888j {
        /* renamed from: a */
        void m9062a(DialogPlus dialogPlus);
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.DialogPlus$k */
    /* loaded from: classes2.dex */
    public interface InterfaceC4889k {
        /* renamed from: a */
        void m9061a(DialogPlus dialogPlus, Object obj, View view, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogPlus(DialogPlusBuilder dialogPlusBuilder) {
        LayoutInflater from = LayoutInflater.from(dialogPlusBuilder.m9005g());
        Activity activity = (Activity) dialogPlusBuilder.m9005g();
        this.f15829k = dialogPlusBuilder.m9001k();
        this.f15824f = dialogPlusBuilder.m8994r();
        this.f15825g = dialogPlusBuilder.m8996p();
        this.f15826h = dialogPlusBuilder.m8995q();
        this.f15827i = dialogPlusBuilder.m8997o();
        this.f15828j = dialogPlusBuilder.m8998n();
        this.f15821c = dialogPlusBuilder.m8990v();
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290);
        this.f15830l = viewGroup;
        ViewGroup viewGroup2 = (ViewGroup) from.inflate(R.layout.dialog_container, viewGroup, false);
        this.f15819a = viewGroup2;
        viewGroup2.setLayoutParams(dialogPlusBuilder.m8992t());
        View findViewById = viewGroup2.findViewById(R.id.dialog_container);
        this.f15833o = findViewById;
        findViewById.setBackgroundResource(dialogPlusBuilder.m8991u());
        ViewGroup viewGroup3 = (ViewGroup) viewGroup2.findViewById(R.id.dialog_content_container);
        this.f15820b = viewGroup3;
        viewGroup3.setLayoutParams(dialogPlusBuilder.m9006f());
        this.f15831m = dialogPlusBuilder.m8993s();
        this.f15832n = dialogPlusBuilder.m9000l();
        m9073o(from, dialogPlusBuilder.m9002j(), dialogPlusBuilder.m9003i(), dialogPlusBuilder.m9010b(), dialogPlusBuilder.m9007e(), dialogPlusBuilder.m9008d());
        m9074n();
        if (dialogPlusBuilder.m8989w()) {
            m9072p(activity, dialogPlusBuilder.m9004h(), dialogPlusBuilder.m9006f().gravity);
        }
    }

    /* renamed from: j */
    private void m9078j(View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                m9078j(viewGroup.getChildAt(childCount));
            }
        }
        m9067u(view);
    }

    /* renamed from: k */
    private View m9077k(LayoutInflater layoutInflater, View view, View view2, BaseAdapter baseAdapter) {
        View mo8907e = this.f15829k.mo8907e(layoutInflater, this.f15819a);
        if (this.f15829k instanceof C4935x) {
            m9078j(mo8907e);
        }
        m9078j(view);
        this.f15829k.mo8906f(view);
        m9078j(view2);
        this.f15829k.mo8908d(view2);
        if (baseAdapter != null) {
            Holder holder = this.f15829k;
            if (holder instanceof HolderAdapter) {
                HolderAdapter holderAdapter = (HolderAdapter) holder;
                holderAdapter.mo8933b(baseAdapter);
                holderAdapter.setOnItemClickListener(new C4881c());
            }
        }
        return mo8907e;
    }

    /* renamed from: n */
    private void m9074n() {
        if (this.f15821c) {
            this.f15819a.findViewById(R.id.dialog_container).setOnTouchListener(this.f15834p);
        }
    }

    /* renamed from: o */
    private void m9073o(LayoutInflater layoutInflater, View view, View view2, BaseAdapter baseAdapter, int[] iArr, int[] iArr2) {
        View m9077k = m9077k(layoutInflater, view, view2, baseAdapter);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(iArr2[0], iArr2[1], iArr2[2], iArr2[3]);
        m9077k.setLayoutParams(layoutParams);
        m9075m().setPadding(iArr[0], iArr[1], iArr[2], iArr[3]);
        this.f15820b.addView(m9077k);
    }

    /* renamed from: p */
    private void m9072p(Activity activity, int i, int i2) {
        int height = activity.getWindowManager().getDefaultDisplay().getHeight() - Variables.m12428a();
        if (i == 0) {
            i = (height * 2) / 5;
        }
        int i3 = i;
        View mo8910a = this.f15829k.mo8910a();
        if (mo8910a instanceof AbsListView) {
            mo8910a.setOnTouchListener(ExpandTouchListener.m8980c(activity, (AbsListView) mo8910a, this.f15820b, i2, height, i3));
        }
    }

    /* renamed from: r */
    public static DialogPlusBuilder m9070r(Context context) {
        return new DialogPlusBuilder(context);
    }

    /* renamed from: s */
    private void m9069s(View view) {
        this.f15830l.addView(view);
        this.f15820b.startAnimation(this.f15832n);
        this.f15820b.requestFocus();
        this.f15829k.setOnKeyListener(new View$OnKeyListenerC4883e());
    }

    /* renamed from: u */
    private void m9067u(View view) {
        if (view.getId() == -1 || (view instanceof AdapterView)) {
            return;
        }
        view.setOnClickListener(new View$OnClickListenerC4882d());
    }

    /* renamed from: l */
    public void m9076l() {
        if (this.f15822d) {
            return;
        }
        this.f15831m.setAnimationListener(new animationAnimation$AnimationListenerC4879b());
        this.f15820b.startAnimation(this.f15831m);
        this.f15822d = true;
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setDuration(this.f15831m.getDuration());
        this.f15833o.startAnimation(alphaAnimation);
    }

    /* renamed from: m */
    public View m9075m() {
        return this.f15829k.mo8910a();
    }

    /* renamed from: q */
    public boolean m9071q() {
        return this.f15830l.findViewById(R.id.dialog_container) != null;
    }

    /* renamed from: t */
    public void m9068t(DialogPlus dialogPlus) {
        InterfaceC4886h interfaceC4886h = this.f15827i;
        if (interfaceC4886h != null) {
            interfaceC4886h.m9063a(this);
        }
        m9076l();
    }

    /* renamed from: v */
    public void m9066v() {
        if (m9071q()) {
            if (this.f15823e) {
                this.f15830l.postDelayed(new RunnableC4878a(), (long) (this.f15831m.getDuration() * 1.1d));
                this.f15823e = false;
                return;
            }
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
        alphaAnimation.setDuration(300L);
        this.f15833o.startAnimation(alphaAnimation);
        m9069s(this.f15819a);
    }
}
