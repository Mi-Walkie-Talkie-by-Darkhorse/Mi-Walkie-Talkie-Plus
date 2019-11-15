package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ScrollView;

public class ElasticScrollView extends ScrollView {
    private int a = 0;
    private int b = 0;
    private int c = 0;
    private int d = 0;
    private View e;
    private Rect f = new Rect();

    public ElasticScrollView(Context context) {
        super(context);
    }

    public ElasticScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ElasticScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        if (getChildCount() > 0) {
            this.e = getChildAt(0);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.e == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.b = (int) motionEvent.getY();
                this.a = this.b;
                break;
            case 1:
                if (!this.f.isEmpty()) {
                    a();
                    this.e.layout(this.f.left, this.f.top, this.f.right, this.f.bottom);
                }
                this.b = 0;
                this.c = 0;
                this.f.setEmpty();
                break;
            case 2:
                this.c = (int) motionEvent.getY();
                this.d = this.a - this.c;
                this.a = this.c;
                if (getScrollY() == 0 || this.e.getMeasuredHeight() - getHeight() <= getScrollY()) {
                    if (this.f.isEmpty()) {
                        this.f.set(this.e.getLeft(), this.e.getTop(), this.e.getRight(), this.e.getBottom());
                    }
                    this.e.layout(this.e.getLeft(), this.e.getTop() - (this.d / 3), this.e.getRight(), this.e.getBottom() - (this.d / 3));
                    break;
                }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private void a() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, (float) this.e.getTop(), (float) this.f.top);
        translateAnimation.setDuration(200);
        translateAnimation.setInterpolator(new AccelerateInterpolator());
        this.e.setAnimation(translateAnimation);
    }
}
