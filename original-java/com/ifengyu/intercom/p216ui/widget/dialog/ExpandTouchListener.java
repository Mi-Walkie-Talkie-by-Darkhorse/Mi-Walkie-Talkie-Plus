package com.ifengyu.intercom.p216ui.widget.dialog;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.h */
/* loaded from: classes2.dex */
class ExpandTouchListener implements View.OnTouchListener {

    /* renamed from: a */
    private final AbsListView f15921a;

    /* renamed from: b */
    private final View f15922b;

    /* renamed from: c */
    private final int f15923c;

    /* renamed from: d */
    private final int f15924d;

    /* renamed from: e */
    private final GestureDetector f15925e;

    /* renamed from: f */
    private final int f15926f;

    /* renamed from: g */
    private float f15927g;

    /* renamed from: h */
    private boolean f15928h;

    /* renamed from: i */
    private boolean f15929i;

    /* renamed from: j */
    private boolean f15930j;

    /* renamed from: k */
    private FrameLayout.LayoutParams f15931k;

    /* compiled from: ExpandTouchListener.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.h$a */
    /* loaded from: classes2.dex */
    class C4899a extends GestureDetector.SimpleOnGestureListener {
        C4899a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            ExpandTouchListener.this.f15930j = f2 > BitmapDescriptorFactory.HUE_RED;
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExpandTouchListener.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.h$b */
    /* loaded from: classes2.dex */
    public class C4900b extends SimpleAnimationListener {
        C4900b() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SimpleAnimationListener, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ExpandTouchListener.this.f15928h = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExpandTouchListener.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.h$c */
    /* loaded from: classes2.dex */
    public class C4901c extends SimpleAnimationListener {
        C4901c() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SimpleAnimationListener, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ExpandTouchListener.this.f15928h = true;
        }
    }

    private ExpandTouchListener(Context context, AbsListView absListView, View view, int i, int i2, int i3) {
        this.f15921a = absListView;
        this.f15922b = view;
        this.f15926f = i;
        this.f15923c = i2;
        this.f15924d = i3;
        this.f15931k = (FrameLayout.LayoutParams) view.getLayoutParams();
        this.f15925e = new GestureDetector(context, new C4899a());
    }

    /* renamed from: c */
    public static ExpandTouchListener m8980c(Context context, AbsListView absListView, View view, int i, int i2, int i3) {
        return new ExpandTouchListener(context, absListView, view, i, i2, i3);
    }

    /* renamed from: d */
    private void m8979d(View view, MotionEvent motionEvent) {
        if (this.f15927g == -1.0f) {
            this.f15927g = motionEvent.getRawY();
        }
        float rawY = this.f15927g - motionEvent.getRawY();
        this.f15929i = rawY > BitmapDescriptorFactory.HUE_RED;
        if (this.f15926f == 48) {
            rawY = -rawY;
        }
        this.f15927g = motionEvent.getRawY();
        FrameLayout.LayoutParams layoutParams = this.f15931k;
        int i = layoutParams.height + ((int) rawY);
        int i2 = this.f15923c;
        if (i > i2) {
            i = i2;
        }
        int i3 = this.f15924d;
        if (i < i3) {
            i = i3;
        }
        layoutParams.height = i;
        this.f15922b.setLayoutParams(layoutParams);
        this.f15928h = this.f15931k.height == this.f15923c;
    }

    /* renamed from: e */
    private void m8978e(View view, MotionEvent motionEvent) {
        int i;
        int i2;
        this.f15927g = -1.0f;
        boolean z = this.f15929i;
        if (!z && (i = this.f15931k.height) < (i2 = this.f15923c) && i > (i2 * 4) / 5) {
            C4934w.m8914a(this.f15922b, i2, new C4900b());
        } else if (z && this.f15931k.height > this.f15924d + 50) {
            C4934w.m8914a(this.f15922b, this.f15923c, new C4901c());
        } else {
            if (z) {
                int i3 = this.f15931k.height;
                int i4 = this.f15924d;
                if (i3 <= i4 + 50) {
                    C4934w.m8914a(this.f15922b, i4, new SimpleAnimationListener());
                    return;
                }
            }
            if (z) {
                return;
            }
            int i5 = this.f15931k.height;
            int i6 = this.f15924d;
            if (i5 > i6) {
                C4934w.m8914a(this.f15922b, i6, new SimpleAnimationListener());
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f15925e.onTouchEvent(motionEvent)) {
            return false;
        }
        if ((this.f15930j || !C4934w.m8911d(this.f15921a)) && this.f15928h) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f15927g = motionEvent.getRawY();
            return true;
        }
        if (action == 1) {
            m8978e(view, motionEvent);
        } else if (action == 2) {
            FrameLayout.LayoutParams layoutParams = this.f15931k;
            int i = layoutParams.height;
            if (i == this.f15923c) {
                layoutParams.height = i - 1;
                this.f15922b.setLayoutParams(layoutParams);
                return false;
            }
            m8979d(view, motionEvent);
        }
        return true;
    }
}
