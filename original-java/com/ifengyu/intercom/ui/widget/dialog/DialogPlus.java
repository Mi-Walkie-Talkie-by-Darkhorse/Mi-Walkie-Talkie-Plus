package com.ifengyu.intercom.ui.widget.dialog;

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
import com.ifengyu.intercom.R;

/* loaded from: classes2.dex */
public class DialogPlus {

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroup f6892a;

    /* renamed from: b  reason: collision with root package name */
    private final ViewGroup f6893b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f6894c;
    private boolean d;
    private final k f;
    private final i g;
    private final j h;
    private final h i;
    private final g j;
    private final m k;
    private final ViewGroup l;
    private final Animation m;
    private final Animation n;
    private final View o;
    private boolean e = true;
    private final View.OnTouchListener p = new f();

    /* loaded from: classes2.dex */
    public interface OnHolderListener {
        void a(Object obj, View view, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogPlus.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Animation.AnimationListener {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DialogPlus.this.l.removeView(DialogPlus.this.f6892a);
                DialogPlus.this.d = false;
                if (DialogPlus.this.h != null) {
                    DialogPlus.this.h.a(DialogPlus.this);
                }
            }
        }

        b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            DialogPlus.this.l.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements OnHolderListener {
        c() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.DialogPlus.OnHolderListener
        public void a(Object obj, View view, int i) {
            if (DialogPlus.this.f != null) {
                DialogPlus.this.f.a(DialogPlus.this, obj, view, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DialogPlus.this.g != null) {
                DialogPlus.this.g.a(DialogPlus.this, view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements View.OnKeyListener {
        e() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (keyEvent.getAction() != 1 || i != 4) {
                return false;
            }
            if (DialogPlus.this.j != null) {
                DialogPlus.this.j.a(DialogPlus.this);
            }
            if (DialogPlus.this.f6894c) {
                DialogPlus dialogPlus = DialogPlus.this;
                dialogPlus.a(dialogPlus);
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    class f implements View.OnTouchListener {
        f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (DialogPlus.this.i != null) {
                DialogPlus.this.i.a(DialogPlus.this);
            }
            DialogPlus.this.a();
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public interface g {
        void a(DialogPlus dialogPlus);
    }

    /* loaded from: classes2.dex */
    public interface h {
        void a(DialogPlus dialogPlus);
    }

    /* loaded from: classes2.dex */
    public interface i {
        void a(DialogPlus dialogPlus, View view);
    }

    /* loaded from: classes2.dex */
    public interface j {
        void a(DialogPlus dialogPlus);
    }

    /* loaded from: classes2.dex */
    public interface k {
        void a(DialogPlus dialogPlus, Object obj, View view, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogPlus(h hVar) {
        LayoutInflater from = LayoutInflater.from(hVar.g());
        Activity activity = (Activity) hVar.g();
        this.k = hVar.k();
        this.f = hVar.q();
        this.g = hVar.o();
        this.h = hVar.p();
        this.i = hVar.n();
        this.j = hVar.m();
        this.f6894c = hVar.u();
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290);
        this.l = viewGroup;
        ViewGroup viewGroup2 = (ViewGroup) from.inflate(R.layout.dialog_container, viewGroup, false);
        this.f6892a = viewGroup2;
        viewGroup2.setLayoutParams(hVar.s());
        View findViewById = this.f6892a.findViewById(R.id.dialog_container);
        this.o = findViewById;
        findViewById.setBackgroundResource(hVar.t());
        ViewGroup viewGroup3 = (ViewGroup) this.f6892a.findViewById(R.id.dialog_content_container);
        this.f6893b = viewGroup3;
        viewGroup3.setLayoutParams(hVar.f());
        this.m = hVar.r();
        this.n = hVar.l();
        a(from, hVar.j(), hVar.i(), hVar.b(), hVar.e(), hVar.d());
        e();
        if (hVar.v()) {
            a(activity, hVar.h(), hVar.f().gravity);
        }
    }

    public static h a(Context context) {
        return new h(context);
    }

    private void e() {
        if (this.f6894c) {
            this.f6892a.findViewById(R.id.dialog_container).setOnTouchListener(this.p);
        }
    }

    public View b() {
        return this.k.a();
    }

    public boolean c() {
        return this.l.findViewById(R.id.dialog_container) != null;
    }

    public void d() {
        if (!c()) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
            alphaAnimation.setDuration(300L);
            this.o.startAnimation(alphaAnimation);
            b(this.f6892a);
        } else if (this.e) {
            this.l.postDelayed(new a(), (long) (this.m.getDuration() * 1.1d));
            this.e = false;
        }
    }

    private void b(View view) {
        this.l.addView(view);
        this.f6893b.startAnimation(this.n);
        this.f6893b.requestFocus();
        this.k.setOnKeyListener(new e());
    }

    private void c(View view) {
        if (view.getId() != -1 && !(view instanceof AdapterView)) {
            view.setOnClickListener(new d());
        }
    }

    public void a() {
        if (!this.d) {
            this.m.setAnimationListener(new b());
            this.f6893b.startAnimation(this.m);
            this.d = true;
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(this.m.getDuration());
            this.o.startAnimation(alphaAnimation);
        }
    }

    private void a(Activity activity, int i2, int i3) {
        int height = activity.getWindowManager().getDefaultDisplay().getHeight() - com.ifengyu.intercom.d.a();
        if (i2 == 0) {
            i2 = (height * 2) / 5;
        }
        View a2 = this.k.a();
        if (a2 instanceof AbsListView) {
            a2.setOnTouchListener(j.a(activity, (AbsListView) a2, this.f6893b, i3, height, i2));
        }
    }

    private void a(LayoutInflater layoutInflater, View view, View view2, BaseAdapter baseAdapter, int[] iArr, int[] iArr2) {
        View a2 = a(layoutInflater, view, view2, baseAdapter);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(iArr2[0], iArr2[1], iArr2[2], iArr2[3]);
        a2.setLayoutParams(layoutParams);
        b().setPadding(iArr[0], iArr[1], iArr[2], iArr[3]);
        this.f6893b.addView(a2);
    }

    private View a(LayoutInflater layoutInflater, View view, View view2, BaseAdapter baseAdapter) {
        View a2 = this.k.a(layoutInflater, this.f6892a);
        if (this.k instanceof c0) {
            a(a2);
        }
        a(view);
        this.k.b(view);
        a(view2);
        this.k.a(view2);
        if (baseAdapter != null) {
            m mVar = this.k;
            if (mVar instanceof n) {
                n nVar = (n) mVar;
                nVar.a(baseAdapter);
                nVar.setOnItemClickListener(new c());
            }
        }
        return a2;
    }

    private void a(View view) {
        if (view != null) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    a(viewGroup.getChildAt(childCount));
                }
            }
            c(view);
        }
    }

    public void a(DialogPlus dialogPlus) {
        h hVar = this.i;
        if (hVar != null) {
            hVar.a(this);
        }
        a();
    }
}
