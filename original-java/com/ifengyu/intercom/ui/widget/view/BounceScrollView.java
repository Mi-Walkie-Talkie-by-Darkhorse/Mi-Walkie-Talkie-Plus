package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.ScrollView;

/* loaded from: classes2.dex */
public class BounceScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    private View f7026a;

    /* renamed from: b  reason: collision with root package name */
    private float f7027b;

    /* renamed from: c  reason: collision with root package name */
    private Rect f7028c = new Rect();
    private boolean d = false;
    private float e = 0.0f;
    private float f = 0.0f;
    private float g = 0.0f;
    private float h = 0.0f;
    private float i = 0.0f;
    private float j = 0.0f;
    private boolean k = false;

    public BounceScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void d() {
        this.e = 0.0f;
        this.f = 0.0f;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = false;
    }

    public void a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int i = 0;
        if (action == 1) {
            if (b()) {
                a();
                this.d = false;
            }
            d();
        } else if (action == 2) {
            float f = this.f7027b;
            float y = motionEvent.getY();
            i = (int) (f - y);
            if (this.d) {
            }
            this.f7027b = y;
            if (c()) {
                if (this.f7028c.isEmpty()) {
                    this.f7028c.set(this.f7026a.getLeft(), this.f7026a.getTop(), this.f7026a.getRight(), this.f7026a.getBottom());
                }
                View view = this.f7026a;
                int i2 = i / 2;
                view.layout(view.getLeft(), this.f7026a.getTop() - i2, this.f7026a.getRight(), this.f7026a.getBottom() - i2);
            }
            this.d = true;
        }
    }

    public boolean b() {
        return !this.f7028c.isEmpty();
    }

    public boolean c() {
        int measuredHeight = this.f7026a.getMeasuredHeight() - getHeight();
        int scrollY = getScrollY();
        return scrollY == 0 || scrollY == measuredHeight;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.g = motionEvent.getX();
        this.h = motionEvent.getY();
        if (motionEvent.getAction() == 2) {
            float f = this.g - this.e;
            this.i = f;
            this.j = this.h - this.f;
            if (Math.abs(f) < Math.abs(this.j) && Math.abs(this.j) > 12.0f) {
                this.k = true;
            }
        }
        this.e = this.g;
        this.f = this.h;
        if (this.k && this.f7026a != null) {
            a(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        if (getChildCount() > 0) {
            this.f7026a = getChildAt(0);
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public void a() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, this.f7026a.getTop(), this.f7028c.top);
        translateAnimation.setDuration(200L);
        this.f7026a.startAnimation(translateAnimation);
        View view = this.f7026a;
        Rect rect = this.f7028c;
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
        this.f7028c.setEmpty();
    }
}
