package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout.LayoutParams;
import com.ifengyu.intercom.R;

public class DialogPlus {
    /* access modifiers changed from: private */
    public final ViewGroup a;
    private final ViewGroup b;
    /* access modifiers changed from: private */
    public final boolean c;
    /* access modifiers changed from: private */
    public boolean d;
    private boolean e = true;
    /* access modifiers changed from: private */
    public final e f;
    /* access modifiers changed from: private */
    public final c g;
    /* access modifiers changed from: private */
    public final d h;
    /* access modifiers changed from: private */
    public final b i;
    /* access modifiers changed from: private */
    public final a j;
    private final m k;
    /* access modifiers changed from: private */
    public final ViewGroup l;
    private final Animation m;
    private final Animation n;
    private final View o;
    private final OnTouchListener p = new OnTouchListener() {
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                if (DialogPlus.this.i != null) {
                    DialogPlus.this.i.a(DialogPlus.this);
                }
                DialogPlus.this.c();
            }
            return false;
        }
    };

    public interface OnHolderListener {
        void a(Object obj, View view, int i);
    }

    public interface a {
        void a(DialogPlus dialogPlus);
    }

    public interface b {
        void a(DialogPlus dialogPlus);
    }

    public interface c {
        void a(DialogPlus dialogPlus, View view);
    }

    public interface d {
        void a(DialogPlus dialogPlus);
    }

    public interface e {
        void a(DialogPlus dialogPlus, Object obj, View view, int i);
    }

    DialogPlus(g gVar) {
        LayoutInflater from = LayoutInflater.from(gVar.e());
        Activity activity = (Activity) gVar.e();
        this.k = gVar.d();
        this.f = gVar.m();
        this.g = gVar.n();
        this.h = gVar.o();
        this.i = gVar.p();
        this.j = gVar.q();
        this.c = gVar.l();
        this.l = (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290);
        this.a = (ViewGroup) from.inflate(R.layout.dialog_container, this.l, false);
        this.a.setLayoutParams(gVar.k());
        this.o = this.a.findViewById(R.id.dialog_container);
        this.o.setBackgroundResource(gVar.u());
        this.b = (ViewGroup) this.a.findViewById(R.id.dialog_content_container);
        this.b.setLayoutParams(gVar.i());
        this.m = gVar.h();
        this.n = gVar.g();
        a(from, gVar.c(), gVar.b(), gVar.f(), gVar.s(), gVar.r());
        e();
        if (gVar.j()) {
            a(activity, gVar.t(), gVar.i().gravity);
        }
    }

    public static g a(Context context) {
        return new g(context);
    }

    public void a() {
        if (!b()) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
            alphaAnimation.setDuration(300);
            this.o.startAnimation(alphaAnimation);
            c((View) this.a);
        } else if (this.e) {
            this.l.postDelayed(new Runnable() {
                public void run() {
                    DialogPlus.this.a();
                }
            }, (long) (((double) this.m.getDuration()) * 1.1d));
            this.e = false;
        }
    }

    public boolean b() {
        return this.l.findViewById(R.id.dialog_container) != null;
    }

    public void c() {
        if (!this.d) {
            this.m.setAnimationListener(new AnimationListener() {
                public void onAnimationStart(Animation animation) {
                }

                public void onAnimationEnd(Animation animation) {
                    DialogPlus.this.l.post(new Runnable() {
                        public void run() {
                            DialogPlus.this.l.removeView(DialogPlus.this.a);
                            DialogPlus.this.d = false;
                            if (DialogPlus.this.h != null) {
                                DialogPlus.this.h.a(DialogPlus.this);
                            }
                        }
                    });
                }

                public void onAnimationRepeat(Animation animation) {
                }
            });
            this.b.startAnimation(this.m);
            this.d = true;
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(this.m.getDuration());
            this.o.startAnimation(alphaAnimation);
        }
    }

    public View d() {
        return this.k.a();
    }

    private void a(Activity activity, int i2, int i3) {
        int i4;
        int height = activity.getWindowManager().getDefaultDisplay().getHeight() - com.ifengyu.intercom.a.a();
        if (i2 == 0) {
            i4 = (height * 2) / 5;
        } else {
            i4 = i2;
        }
        View a2 = this.k.a();
        if (a2 instanceof AbsListView) {
            a2.setOnTouchListener(i.a(activity, (AbsListView) a2, this.b, i3, height, i4));
        }
    }

    private void a(LayoutInflater layoutInflater, View view, View view2, BaseAdapter baseAdapter, int[] iArr, int[] iArr2) {
        View a2 = a(layoutInflater, view, view2, baseAdapter);
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.setMargins(iArr2[0], iArr2[1], iArr2[2], iArr2[3]);
        a2.setLayoutParams(layoutParams);
        d().setPadding(iArr[0], iArr[1], iArr[2], iArr[3]);
        this.b.addView(a2);
    }

    private void e() {
        if (this.c) {
            this.a.findViewById(R.id.dialog_container).setOnTouchListener(this.p);
        }
    }

    private View a(LayoutInflater layoutInflater, View view, View view2, BaseAdapter baseAdapter) {
        View a2 = this.k.a(layoutInflater, this.a);
        if (this.k instanceof ae) {
            a(a2);
        }
        a(view);
        this.k.a(view);
        a(view2);
        this.k.b(view2);
        if (baseAdapter != null && (this.k instanceof n)) {
            n nVar = (n) this.k;
            nVar.a(baseAdapter);
            nVar.setOnItemClickListener(new OnHolderListener() {
                public void a(Object obj, View view, int i) {
                    if (DialogPlus.this.f != null) {
                        DialogPlus.this.f.a(DialogPlus.this, obj, view, i);
                    }
                }
            });
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
            b(view);
        }
    }

    private void b(View view) {
        if (view.getId() != -1 && !(view instanceof AdapterView)) {
            view.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (DialogPlus.this.g != null) {
                        DialogPlus.this.g.a(DialogPlus.this, view);
                    }
                }
            });
        }
    }

    private void c(View view) {
        this.l.addView(view);
        this.b.startAnimation(this.n);
        this.b.requestFocus();
        this.k.setOnKeyListener(new OnKeyListener() {
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                switch (keyEvent.getAction()) {
                    case 1:
                        if (i == 4) {
                            if (DialogPlus.this.j != null) {
                                DialogPlus.this.j.a(DialogPlus.this);
                            }
                            if (DialogPlus.this.c) {
                                DialogPlus.this.a(DialogPlus.this);
                            }
                            return true;
                        }
                        break;
                }
                return false;
            }
        });
    }

    public void a(DialogPlus dialogPlus) {
        if (this.i != null) {
            this.i.a(this);
        }
        c();
    }
}
