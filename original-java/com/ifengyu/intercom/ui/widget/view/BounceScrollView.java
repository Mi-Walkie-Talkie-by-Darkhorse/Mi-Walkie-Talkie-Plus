package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.ScrollView;

public class BounceScrollView extends ScrollView {
    private View a;
    private float b;
    private Rect c = new Rect();
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

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        if (getChildCount() > 0) {
            this.a = getChildAt(0);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.g = motionEvent.getX();
        this.h = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 2:
                this.i = this.g - this.e;
                this.j = this.h - this.f;
                if (Math.abs(this.i) < Math.abs(this.j) && Math.abs(this.j) > 12.0f) {
                    this.k = true;
                    break;
                }
        }
        this.e = this.g;
        this.f = this.h;
        if (this.k && this.a != null) {
            a(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public void a(MotionEvent motionEvent) {
        int i2 = 0;
        switch (motionEvent.getAction()) {
            case 1:
                if (b()) {
                    a();
                    this.d = false;
                }
                d();
                return;
            case 2:
                float f2 = this.b;
                float y = motionEvent.getY();
                int i3 = (int) (f2 - y);
                if (this.d) {
                    i2 = i3;
                }
                this.b = y;
                if (c()) {
                    if (this.c.isEmpty()) {
                        this.c.set(this.a.getLeft(), this.a.getTop(), this.a.getRight(), this.a.getBottom());
                    }
                    this.a.layout(this.a.getLeft(), this.a.getTop() - (i2 / 2), this.a.getRight(), this.a.getBottom() - (i2 / 2));
                }
                this.d = true;
                return;
            default:
                return;
        }
    }

    public void a() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, (float) this.a.getTop(), (float) this.c.top);
        translateAnimation.setDuration(200);
        this.a.startAnimation(translateAnimation);
        this.a.layout(this.c.left, this.c.top, this.c.right, this.c.bottom);
        this.c.setEmpty();
    }

    public boolean b() {
        return !this.c.isEmpty();
    }

    public boolean c() {
        int measuredHeight = this.a.getMeasuredHeight() - getHeight();
        int scrollY = getScrollY();
        if (scrollY == 0 || scrollY == measuredHeight) {
            return true;
        }
        return false;
    }

    private void d() {
        this.e = 0.0f;
        this.f = 0.0f;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = false;
    }
}
