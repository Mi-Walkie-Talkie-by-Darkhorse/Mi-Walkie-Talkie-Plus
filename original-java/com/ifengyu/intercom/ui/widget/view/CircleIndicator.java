package com.ifengyu.intercom.ui.widget.view;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.DrawableRes;
import androidx.viewpager.widget.ViewPager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;

/* loaded from: classes2.dex */
public class CircleIndicator extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private ViewPager f7029a;
    private Animator i;
    private Animator j;
    private Animator k;
    private Animator l;

    /* renamed from: b  reason: collision with root package name */
    private int f7030b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f7031c = -1;
    private int d = -1;
    private int e = R.animator.scale_with_alpha;
    private int f = 0;
    private int g = R.drawable.white_radius;
    private int h = R.drawable.white_radius;
    private int m = -1;
    private final ViewPager.h n = new a();
    private DataSetObserver o = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements ViewPager.h {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageSelected(int i) {
            CircleIndicator circleIndicator;
            View childAt;
            if (CircleIndicator.this.f7029a.getAdapter() != null && CircleIndicator.this.f7029a.getAdapter().getCount() > 0) {
                if (CircleIndicator.this.j.isRunning()) {
                    CircleIndicator.this.j.end();
                    CircleIndicator.this.j.cancel();
                }
                if (CircleIndicator.this.i.isRunning()) {
                    CircleIndicator.this.i.end();
                    CircleIndicator.this.i.cancel();
                }
                if (CircleIndicator.this.m >= 0 && (childAt = (circleIndicator = CircleIndicator.this).getChildAt(circleIndicator.m)) != null) {
                    childAt.setBackgroundResource(CircleIndicator.this.h);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                    CircleIndicator.this.j.setTarget(childAt);
                    CircleIndicator.this.j.start();
                }
                View childAt2 = CircleIndicator.this.getChildAt(i);
                if (childAt2 != null) {
                    childAt2.setBackgroundResource(CircleIndicator.this.g);
                    childAt2.setLayoutParams((LinearLayout.LayoutParams) childAt2.getLayoutParams());
                    childAt2.invalidate();
                    CircleIndicator.this.i.setTarget(childAt2);
                    CircleIndicator.this.i.start();
                }
                CircleIndicator.this.m = i;
            }
        }
    }

    /* loaded from: classes2.dex */
    class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            int count;
            super.onChanged();
            if (CircleIndicator.this.f7029a != null && (count = CircleIndicator.this.f7029a.getAdapter().getCount()) != CircleIndicator.this.getChildCount()) {
                if (CircleIndicator.this.m < count) {
                    CircleIndicator circleIndicator = CircleIndicator.this;
                    circleIndicator.m = circleIndicator.f7029a.getCurrentItem();
                } else {
                    CircleIndicator.this.m = -1;
                }
                CircleIndicator.this.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c implements Interpolator {
        private c() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return Math.abs(1.0f - f);
        }

        /* synthetic */ c(CircleIndicator circleIndicator, a aVar) {
            this();
        }
    }

    public CircleIndicator(Context context) {
        super(context);
        b(context, null);
    }

    public DataSetObserver getDataSetObserver() {
        return this.o;
    }

    @Deprecated
    public void setOnPageChangeListener(ViewPager.h hVar) {
        ViewPager viewPager = this.f7029a;
        if (viewPager != null) {
            viewPager.removeOnPageChangeListener(hVar);
            this.f7029a.addOnPageChangeListener(hVar);
            return;
        }
        throw new NullPointerException("can not find Viewpager , setViewPager first");
    }

    public void setViewPager(ViewPager viewPager) {
        this.f7029a = viewPager;
        if (viewPager != null && viewPager.getAdapter() != null) {
            this.m = -1;
            a();
            this.f7029a.removeOnPageChangeListener(this.n);
            this.f7029a.addOnPageChangeListener(this.n);
            this.n.onPageSelected(this.f7029a.getCurrentItem());
        }
    }

    private void b(Context context, AttributeSet attributeSet) {
        a(context, attributeSet);
        a(context);
    }

    private Animator c(Context context) {
        return AnimatorInflater.loadAnimator(context, this.e);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CircleIndicator);
            this.f7031c = obtainStyledAttributes.getDimensionPixelSize(8, -1);
            this.d = obtainStyledAttributes.getDimensionPixelSize(5, -1);
            this.f7030b = obtainStyledAttributes.getDimensionPixelSize(6, -1);
            int i = 0;
            this.e = obtainStyledAttributes.getResourceId(0, R.animator.scale_with_alpha);
            this.f = obtainStyledAttributes.getResourceId(1, 0);
            int resourceId = obtainStyledAttributes.getResourceId(2, R.drawable.white_radius);
            this.g = resourceId;
            this.h = obtainStyledAttributes.getResourceId(3, resourceId);
            if (obtainStyledAttributes.getInt(7, -1) == 1) {
                i = 1;
            }
            setOrientation(i);
            int i2 = obtainStyledAttributes.getInt(4, -1);
            if (i2 < 0) {
                i2 = 17;
            }
            setGravity(i2);
            obtainStyledAttributes.recycle();
        }
    }

    private Animator b(Context context) {
        int i = this.f;
        if (i != 0) {
            return AnimatorInflater.loadAnimator(context, i);
        }
        Animator loadAnimator = AnimatorInflater.loadAnimator(context, this.e);
        loadAnimator.setInterpolator(new c(this, null));
        return loadAnimator;
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(context, attributeSet);
    }

    private void a(Context context) {
        int i = this.f7031c;
        if (i < 0) {
            i = a(5.0f);
        }
        this.f7031c = i;
        int i2 = this.d;
        if (i2 < 0) {
            i2 = a(5.0f);
        }
        this.d = i2;
        int i3 = this.f7030b;
        if (i3 < 0) {
            i3 = a(5.0f);
        }
        this.f7030b = i3;
        int i4 = this.e;
        if (i4 == 0) {
            i4 = R.animator.scale_with_alpha;
        }
        this.e = i4;
        this.i = c(context);
        Animator c2 = c(context);
        this.k = c2;
        c2.setDuration(0L);
        this.j = b(context);
        Animator b2 = b(context);
        this.l = b2;
        b2.setDuration(0L);
        int i5 = this.g;
        if (i5 == 0) {
            i5 = R.drawable.white_radius;
        }
        this.g = i5;
        int i6 = this.h;
        if (i6 != 0) {
            i5 = i6;
        }
        this.h = i5;
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        removeAllViews();
        int count = this.f7029a.getAdapter().getCount();
        if (count > 0) {
            int currentItem = this.f7029a.getCurrentItem();
            for (int i = 0; i < count; i++) {
                if (currentItem == i) {
                    a(this.g, this.k);
                } else {
                    a(this.h, this.l);
                }
            }
        }
    }

    private void a(@DrawableRes int i, Animator animator) {
        if (animator.isRunning()) {
            animator.end();
            animator.cancel();
        }
        View view = new View(getContext());
        view.setBackgroundResource(i);
        addView(view, this.f7031c, this.d);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        int i2 = this.f7030b;
        layoutParams.leftMargin = i2;
        layoutParams.rightMargin = i2;
        view.setLayoutParams(layoutParams);
    }

    public int a(float f) {
        return (int) ((f * getResources().getDisplayMetrics().density) + 0.5f);
    }
}
