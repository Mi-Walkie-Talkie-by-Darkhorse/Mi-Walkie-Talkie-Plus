package com.ifengyu.intercom.ui.widget.view;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.support.annotation.DrawableRes;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.ifengyu.intercom.R;

public class CircleIndicator extends LinearLayout {
    /* access modifiers changed from: private */
    public ViewPager a;
    private int b = -1;
    private int c = -1;
    private int d = -1;
    private int e = R.animator.scale_with_alpha;
    private int f = 0;
    /* access modifiers changed from: private */
    public int g = R.drawable.white_radius;
    /* access modifiers changed from: private */
    public int h = R.drawable.white_radius;
    /* access modifiers changed from: private */
    public Animator i;
    /* access modifiers changed from: private */
    public Animator j;
    private Animator k;
    private Animator l;
    /* access modifiers changed from: private */
    public int m = -1;
    private final OnPageChangeListener n = new OnPageChangeListener() {
        public void onPageScrolled(int i, float f, int i2) {
        }

        public void onPageSelected(int i) {
            if (CircleIndicator.this.a.getAdapter() != null && CircleIndicator.this.a.getAdapter().getCount() > 0) {
                if (CircleIndicator.this.j.isRunning()) {
                    CircleIndicator.this.j.end();
                    CircleIndicator.this.j.cancel();
                }
                if (CircleIndicator.this.i.isRunning()) {
                    CircleIndicator.this.i.end();
                    CircleIndicator.this.i.cancel();
                }
                if (CircleIndicator.this.m >= 0) {
                    View childAt = CircleIndicator.this.getChildAt(CircleIndicator.this.m);
                    if (childAt != null) {
                        childAt.setBackgroundResource(CircleIndicator.this.h);
                        LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                        CircleIndicator.this.j.setTarget(childAt);
                        CircleIndicator.this.j.start();
                    }
                }
                View childAt2 = CircleIndicator.this.getChildAt(i);
                if (childAt2 != null) {
                    childAt2.setBackgroundResource(CircleIndicator.this.g);
                    childAt2.setLayoutParams((LayoutParams) childAt2.getLayoutParams());
                    childAt2.invalidate();
                    CircleIndicator.this.i.setTarget(childAt2);
                    CircleIndicator.this.i.start();
                }
                CircleIndicator.this.m = i;
            }
        }

        public void onPageScrollStateChanged(int i) {
        }
    };
    private DataSetObserver o = new DataSetObserver() {
        public void onChanged() {
            super.onChanged();
            if (CircleIndicator.this.a != null) {
                int count = CircleIndicator.this.a.getAdapter().getCount();
                if (count != CircleIndicator.this.getChildCount()) {
                    if (CircleIndicator.this.m < count) {
                        CircleIndicator.this.m = CircleIndicator.this.a.getCurrentItem();
                    } else {
                        CircleIndicator.this.m = -1;
                    }
                    CircleIndicator.this.a();
                }
            }
        }
    };

    private class a implements Interpolator {
        private a() {
        }

        public float getInterpolation(float f) {
            return Math.abs(1.0f - f);
        }
    }

    public CircleIndicator(Context context) {
        super(context);
        a(context, (AttributeSet) null);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet);
    }

    @TargetApi(21)
    public CircleIndicator(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        b(context, attributeSet);
        a(context);
    }

    private void b(Context context, AttributeSet attributeSet) {
        int i2 = 1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleIndicator);
            this.c = obtainStyledAttributes.getDimensionPixelSize(0, -1);
            this.d = obtainStyledAttributes.getDimensionPixelSize(1, -1);
            this.b = obtainStyledAttributes.getDimensionPixelSize(2, -1);
            this.e = obtainStyledAttributes.getResourceId(3, R.animator.scale_with_alpha);
            this.f = obtainStyledAttributes.getResourceId(4, 0);
            this.g = obtainStyledAttributes.getResourceId(5, R.drawable.white_radius);
            this.h = obtainStyledAttributes.getResourceId(6, this.g);
            if (obtainStyledAttributes.getInt(7, -1) != 1) {
                i2 = 0;
            }
            setOrientation(i2);
            int i3 = obtainStyledAttributes.getInt(8, -1);
            if (i3 < 0) {
                i3 = 17;
            }
            setGravity(i3);
            obtainStyledAttributes.recycle();
        }
    }

    private void a(Context context) {
        this.c = this.c < 0 ? a(5.0f) : this.c;
        this.d = this.d < 0 ? a(5.0f) : this.d;
        this.b = this.b < 0 ? a(5.0f) : this.b;
        this.e = this.e == 0 ? R.animator.scale_with_alpha : this.e;
        this.i = b(context);
        this.k = b(context);
        this.k.setDuration(0);
        this.j = c(context);
        this.l = c(context);
        this.l.setDuration(0);
        this.g = this.g == 0 ? R.drawable.white_radius : this.g;
        this.h = this.h == 0 ? this.g : this.h;
    }

    private Animator b(Context context) {
        return AnimatorInflater.loadAnimator(context, this.e);
    }

    private Animator c(Context context) {
        if (this.f != 0) {
            return AnimatorInflater.loadAnimator(context, this.f);
        }
        Animator loadAnimator = AnimatorInflater.loadAnimator(context, this.e);
        loadAnimator.setInterpolator(new a());
        return loadAnimator;
    }

    public void setViewPager(ViewPager viewPager) {
        this.a = viewPager;
        if (this.a != null && this.a.getAdapter() != null) {
            this.m = -1;
            a();
            this.a.removeOnPageChangeListener(this.n);
            this.a.addOnPageChangeListener(this.n);
            this.n.onPageSelected(this.a.getCurrentItem());
        }
    }

    public DataSetObserver getDataSetObserver() {
        return this.o;
    }

    @Deprecated
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        if (this.a == null) {
            throw new NullPointerException("can not find Viewpager , setViewPager first");
        }
        this.a.removeOnPageChangeListener(onPageChangeListener);
        this.a.addOnPageChangeListener(onPageChangeListener);
    }

    /* access modifiers changed from: private */
    public void a() {
        removeAllViews();
        int count = this.a.getAdapter().getCount();
        if (count > 0) {
            int currentItem = this.a.getCurrentItem();
            for (int i2 = 0; i2 < count; i2++) {
                if (currentItem == i2) {
                    a(this.g, this.k);
                } else {
                    a(this.h, this.l);
                }
            }
        }
    }

    private void a(@DrawableRes int i2, Animator animator) {
        if (animator.isRunning()) {
            animator.end();
            animator.cancel();
        }
        View view = new View(getContext());
        view.setBackgroundResource(i2);
        addView(view, this.c, this.d);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        layoutParams.leftMargin = this.b;
        layoutParams.rightMargin = this.b;
        view.setLayoutParams(layoutParams);
    }

    public int a(float f2) {
        return (int) ((getResources().getDisplayMetrics().density * f2) + 0.5f);
    }
}
