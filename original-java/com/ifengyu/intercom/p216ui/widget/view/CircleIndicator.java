package com.ifengyu.intercom.p216ui.widget.view;

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
import java.util.Objects;

/* renamed from: com.ifengyu.intercom.ui.widget.view.CircleIndicator */
/* loaded from: classes2.dex */
public class CircleIndicator extends LinearLayout {

    /* renamed from: a */
    private ViewPager f16087a;

    /* renamed from: b */
    private int f16088b;

    /* renamed from: c */
    private int f16089c;

    /* renamed from: d */
    private int f16090d;

    /* renamed from: e */
    private int f16091e;

    /* renamed from: f */
    private int f16092f;

    /* renamed from: g */
    private int f16093g;

    /* renamed from: h */
    private int f16094h;

    /* renamed from: i */
    private Animator f16095i;

    /* renamed from: j */
    private Animator f16096j;

    /* renamed from: k */
    private Animator f16097k;

    /* renamed from: l */
    private Animator f16098l;

    /* renamed from: m */
    private int f16099m;

    /* renamed from: n */
    private final ViewPager.InterfaceC1065h f16100n;

    /* renamed from: o */
    private DataSetObserver f16101o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.view.CircleIndicator$a */
    /* loaded from: classes2.dex */
    public class C4944a implements ViewPager.InterfaceC1065h {
        C4944a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.InterfaceC1065h
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.InterfaceC1065h
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.InterfaceC1065h
        public void onPageSelected(int i) {
            CircleIndicator circleIndicator;
            View childAt;
            if (CircleIndicator.this.f16087a.getAdapter() == null || CircleIndicator.this.f16087a.getAdapter().getCount() <= 0) {
                return;
            }
            if (CircleIndicator.this.f16096j.isRunning()) {
                CircleIndicator.this.f16096j.end();
                CircleIndicator.this.f16096j.cancel();
            }
            if (CircleIndicator.this.f16095i.isRunning()) {
                CircleIndicator.this.f16095i.end();
                CircleIndicator.this.f16095i.cancel();
            }
            if (CircleIndicator.this.f16099m >= 0 && (childAt = (circleIndicator = CircleIndicator.this).getChildAt(circleIndicator.f16099m)) != null) {
                childAt.setBackgroundResource(CircleIndicator.this.f16094h);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                CircleIndicator.this.f16096j.setTarget(childAt);
                CircleIndicator.this.f16096j.start();
            }
            View childAt2 = CircleIndicator.this.getChildAt(i);
            if (childAt2 != null) {
                childAt2.setBackgroundResource(CircleIndicator.this.f16093g);
                childAt2.setLayoutParams((LinearLayout.LayoutParams) childAt2.getLayoutParams());
                childAt2.invalidate();
                CircleIndicator.this.f16095i.setTarget(childAt2);
                CircleIndicator.this.f16095i.start();
            }
            CircleIndicator.this.f16099m = i;
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.view.CircleIndicator$b */
    /* loaded from: classes2.dex */
    class C4945b extends DataSetObserver {
        C4945b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            int count;
            super.onChanged();
            if (CircleIndicator.this.f16087a == null || (count = CircleIndicator.this.f16087a.getAdapter().getCount()) == CircleIndicator.this.getChildCount()) {
                return;
            }
            if (CircleIndicator.this.f16099m >= count) {
                CircleIndicator.this.f16099m = -1;
            } else {
                CircleIndicator circleIndicator = CircleIndicator.this;
                circleIndicator.f16099m = circleIndicator.f16087a.getCurrentItem();
            }
            CircleIndicator.this.m8856m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.ifengyu.intercom.ui.widget.view.CircleIndicator$c  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class animationInterpolatorC4946c implements Interpolator {
        private animationInterpolatorC4946c(CircleIndicator circleIndicator) {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return Math.abs(1.0f - f);
        }

        /* synthetic */ animationInterpolatorC4946c(CircleIndicator circleIndicator, C4944a c4944a) {
            this(circleIndicator);
        }
    }

    public CircleIndicator(Context context) {
        super(context);
        this.f16088b = -1;
        this.f16089c = -1;
        this.f16090d = -1;
        this.f16091e = R.animator.scale_with_alpha;
        this.f16092f = 0;
        this.f16093g = R.drawable.white_radius;
        this.f16094h = R.drawable.white_radius;
        this.f16099m = -1;
        this.f16100n = new C4944a();
        this.f16101o = new C4945b();
        m8853p(context, null);
    }

    /* renamed from: i */
    private void m8860i(@DrawableRes int i, Animator animator) {
        if (animator.isRunning()) {
            animator.end();
            animator.cancel();
        }
        View view = new View(getContext());
        view.setBackgroundResource(i);
        addView(view, this.f16089c, this.f16090d);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        int i2 = this.f16088b;
        layoutParams.leftMargin = i2;
        layoutParams.rightMargin = i2;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: j */
    private void m8859j(Context context) {
        int i = this.f16089c;
        if (i < 0) {
            i = m8855n(5.0f);
        }
        this.f16089c = i;
        int i2 = this.f16090d;
        if (i2 < 0) {
            i2 = m8855n(5.0f);
        }
        this.f16090d = i2;
        int i3 = this.f16088b;
        if (i3 < 0) {
            i3 = m8855n(5.0f);
        }
        this.f16088b = i3;
        int i4 = this.f16091e;
        if (i4 == 0) {
            i4 = R.animator.scale_with_alpha;
        }
        this.f16091e = i4;
        this.f16095i = m8857l(context);
        Animator m8857l = m8857l(context);
        this.f16097k = m8857l;
        m8857l.setDuration(0L);
        this.f16096j = m8858k(context);
        Animator m8858k = m8858k(context);
        this.f16098l = m8858k;
        m8858k.setDuration(0L);
        int i5 = this.f16093g;
        if (i5 == 0) {
            i5 = R.drawable.white_radius;
        }
        this.f16093g = i5;
        int i6 = this.f16094h;
        if (i6 != 0) {
            i5 = i6;
        }
        this.f16094h = i5;
    }

    /* renamed from: k */
    private Animator m8858k(Context context) {
        int i = this.f16092f;
        if (i == 0) {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, this.f16091e);
            loadAnimator.setInterpolator(new animationInterpolatorC4946c(this, null));
            return loadAnimator;
        }
        return AnimatorInflater.loadAnimator(context, i);
    }

    /* renamed from: l */
    private Animator m8857l(Context context) {
        return AnimatorInflater.loadAnimator(context, this.f16091e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m8856m() {
        removeAllViews();
        int count = this.f16087a.getAdapter().getCount();
        if (count <= 0) {
            return;
        }
        int currentItem = this.f16087a.getCurrentItem();
        for (int i = 0; i < count; i++) {
            if (currentItem == i) {
                m8860i(this.f16093g, this.f16097k);
            } else {
                m8860i(this.f16094h, this.f16098l);
            }
        }
    }

    /* renamed from: o */
    private void m8854o(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CircleIndicator);
        this.f16089c = obtainStyledAttributes.getDimensionPixelSize(8, -1);
        this.f16090d = obtainStyledAttributes.getDimensionPixelSize(5, -1);
        this.f16088b = obtainStyledAttributes.getDimensionPixelSize(6, -1);
        this.f16091e = obtainStyledAttributes.getResourceId(0, R.animator.scale_with_alpha);
        this.f16092f = obtainStyledAttributes.getResourceId(1, 0);
        int resourceId = obtainStyledAttributes.getResourceId(2, R.drawable.white_radius);
        this.f16093g = resourceId;
        this.f16094h = obtainStyledAttributes.getResourceId(3, resourceId);
        setOrientation(obtainStyledAttributes.getInt(7, -1) == 1 ? 1 : 0);
        int i = obtainStyledAttributes.getInt(4, -1);
        if (i < 0) {
            i = 17;
        }
        setGravity(i);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: p */
    private void m8853p(Context context, AttributeSet attributeSet) {
        m8854o(context, attributeSet);
        m8859j(context);
    }

    public DataSetObserver getDataSetObserver() {
        return this.f16101o;
    }

    /* renamed from: n */
    public int m8855n(float f) {
        return (int) ((f * getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Deprecated
    public void setOnPageChangeListener(ViewPager.InterfaceC1065h interfaceC1065h) {
        ViewPager viewPager = this.f16087a;
        Objects.requireNonNull(viewPager, "can not find Viewpager , setViewPager first");
        viewPager.removeOnPageChangeListener(interfaceC1065h);
        this.f16087a.addOnPageChangeListener(interfaceC1065h);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f16087a = viewPager;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return;
        }
        this.f16099m = -1;
        m8856m();
        this.f16087a.removeOnPageChangeListener(this.f16100n);
        this.f16087a.addOnPageChangeListener(this.f16100n);
        this.f16100n.onPageSelected(this.f16087a.getCurrentItem());
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16088b = -1;
        this.f16089c = -1;
        this.f16090d = -1;
        this.f16091e = R.animator.scale_with_alpha;
        this.f16092f = 0;
        this.f16093g = R.drawable.white_radius;
        this.f16094h = R.drawable.white_radius;
        this.f16099m = -1;
        this.f16100n = new C4944a();
        this.f16101o = new C4945b();
        m8853p(context, attributeSet);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16088b = -1;
        this.f16089c = -1;
        this.f16090d = -1;
        this.f16091e = R.animator.scale_with_alpha;
        this.f16092f = 0;
        this.f16093g = R.drawable.white_radius;
        this.f16094h = R.drawable.white_radius;
        this.f16099m = -1;
        this.f16100n = new C4944a();
        this.f16101o = new C4945b();
        m8853p(context, attributeSet);
    }
}
