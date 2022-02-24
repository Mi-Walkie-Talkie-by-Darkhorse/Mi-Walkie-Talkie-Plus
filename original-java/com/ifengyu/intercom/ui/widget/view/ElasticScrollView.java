package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ScrollView;

/* loaded from: classes2.dex */
public class ElasticScrollView extends ScrollView {
    private View e;

    /* renamed from: a  reason: collision with root package name */
    private int f7050a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f7051b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f7052c = 0;
    private int d = 0;
    private Rect f = new Rect();

    public ElasticScrollView(Context context) {
        super(context);
    }

    private void a() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, this.e.getTop(), this.f.top);
        translateAnimation.setDuration(200L);
        translateAnimation.setInterpolator(new AccelerateInterpolator());
        this.e.setAnimation(translateAnimation);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.e == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            int y = (int) motionEvent.getY();
            this.f7051b = y;
            this.f7050a = y;
        } else if (action == 1) {
            if (!this.f.isEmpty()) {
                a();
                View view = this.e;
                Rect rect = this.f;
                view.layout(rect.left, rect.top, rect.right, rect.bottom);
            }
            this.f7051b = 0;
            this.f7052c = 0;
            this.f.setEmpty();
        } else if (action == 2) {
            int y2 = (int) motionEvent.getY();
            this.f7052c = y2;
            this.d = this.f7050a - y2;
            this.f7050a = y2;
            if (getScrollY() == 0 || this.e.getMeasuredHeight() - getHeight() <= getScrollY()) {
                if (this.f.isEmpty()) {
                    this.f.set(this.e.getLeft(), this.e.getTop(), this.e.getRight(), this.e.getBottom());
                }
                View view2 = this.e;
                view2.layout(view2.getLeft(), this.e.getTop() - (this.d / 3), this.e.getRight(), this.e.getBottom() - (this.d / 3));
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        if (getChildCount() > 0) {
            this.e = getChildAt(0);
        }
    }

    public ElasticScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ElasticScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
