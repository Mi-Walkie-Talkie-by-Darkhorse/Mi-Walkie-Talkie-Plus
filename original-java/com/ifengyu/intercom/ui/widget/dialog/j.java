package com.ifengyu.intercom.ui.widget.dialog;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.widget.AbsListView;
import android.widget.FrameLayout;

/* compiled from: ExpandTouchListener.java */
/* loaded from: classes2.dex */
class j implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private final AbsListView f6952a;

    /* renamed from: b  reason: collision with root package name */
    private final View f6953b;

    /* renamed from: c  reason: collision with root package name */
    private final int f6954c;
    private final int d;
    private final GestureDetector e;
    private final int f;
    private float g;
    private boolean h;
    private boolean i;
    private boolean j;
    private FrameLayout.LayoutParams k;

    /* compiled from: ExpandTouchListener.java */
    /* loaded from: classes2.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            j.this.j = f2 > 0.0f;
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExpandTouchListener.java */
    /* loaded from: classes2.dex */
    public class b extends x {
        b() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.x, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            j.this.h = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExpandTouchListener.java */
    /* loaded from: classes2.dex */
    public class c extends x {
        c() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.x, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            j.this.h = true;
        }
    }

    private j(Context context, AbsListView absListView, View view, int i, int i2, int i3) {
        this.f6952a = absListView;
        this.f6953b = view;
        this.f = i;
        this.f6954c = i2;
        this.d = i3;
        this.k = (FrameLayout.LayoutParams) view.getLayoutParams();
        this.e = new GestureDetector(context, new a());
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.e.onTouchEvent(motionEvent)) {
            return false;
        }
        if ((this.j || !b0.a(this.f6952a)) && this.h) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                b(view, motionEvent);
            } else if (action == 2) {
                FrameLayout.LayoutParams layoutParams = this.k;
                int i = layoutParams.height;
                if (i == this.f6954c) {
                    layoutParams.height = i - 1;
                    this.f6953b.setLayoutParams(layoutParams);
                    return false;
                }
                a(view, motionEvent);
            }
            return true;
        }
        this.g = motionEvent.getRawY();
        return true;
    }

    public static j a(Context context, AbsListView absListView, View view, int i, int i2, int i3) {
        return new j(context, absListView, view, i, i2, i3);
    }

    private void b(View view, MotionEvent motionEvent) {
        int i;
        int i2;
        this.g = -1.0f;
        if (!this.i && (i = this.k.height) < (i2 = this.f6954c) && i > (i2 * 4) / 5) {
            b0.a(this.f6953b, i2, new b());
        } else if (!this.i || this.k.height <= this.d + 50) {
            if (this.i) {
                int i3 = this.k.height;
                int i4 = this.d;
                if (i3 <= i4 + 50) {
                    b0.a(this.f6953b, i4, new x());
                    return;
                }
            }
            if (!this.i) {
                int i5 = this.k.height;
                int i6 = this.d;
                if (i5 > i6) {
                    b0.a(this.f6953b, i6, new x());
                }
            }
        } else {
            b0.a(this.f6953b, this.f6954c, new c());
        }
    }

    private void a(View view, MotionEvent motionEvent) {
        if (this.g == -1.0f) {
            this.g = motionEvent.getRawY();
        }
        float rawY = this.g - motionEvent.getRawY();
        boolean z = true;
        this.i = rawY > 0.0f;
        if (this.f == 48) {
            rawY = -rawY;
        }
        this.g = motionEvent.getRawY();
        int i = this.k.height + ((int) rawY);
        int i2 = this.f6954c;
        if (i > i2) {
            i = i2;
        }
        int i3 = this.d;
        if (i < i3) {
            i = i3;
        }
        FrameLayout.LayoutParams layoutParams = this.k;
        layoutParams.height = i;
        this.f6953b.setLayoutParams(layoutParams);
        if (this.k.height != this.f6954c) {
            z = false;
        }
        this.h = z;
    }
}
