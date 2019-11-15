package com.flyco.tablayout;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.flyco.tablayout.widget.MsgView;
import java.util.ArrayList;

public class SegmentTabLayout extends FrameLayout implements AnimatorUpdateListener {
    private float A;
    private int B;
    private int C;
    private int D;
    private boolean E;
    private int F;
    private int G;
    private float H;
    private int I;
    private ValueAnimator J;
    private OvershootInterpolator K;
    private com.flyco.tablayout.b.a L;
    private float[] M;
    private boolean N;
    private Paint O;
    private SparseArray<Boolean> P;
    /* access modifiers changed from: private */
    public com.flyco.tablayout.a.b Q;
    private a R;
    private a S;
    private Context a;
    private String[] b;
    private LinearLayout c;
    /* access modifiers changed from: private */
    public int d;
    private int e;
    private int f;
    private Rect g;
    private GradientDrawable h;
    private GradientDrawable i;
    private Paint j;
    private float k;
    private boolean l;
    private float m;
    private int n;
    private float o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private long u;
    private boolean v;
    private boolean w;
    private int x;
    private float y;
    private float z;

    class a {
        public float a;
        public float b;

        a() {
        }
    }

    class b implements TypeEvaluator<a> {
        b() {
        }

        /* renamed from: a */
        public a evaluate(float f, a aVar, a aVar2) {
            float f2 = aVar.a + ((aVar2.a - aVar.a) * f);
            float f3 = aVar.b + ((aVar2.b - aVar.b) * f);
            a aVar3 = new a();
            aVar3.a = f2;
            aVar3.b = f3;
            return aVar3;
        }
    }

    public SegmentTabLayout(Context context) {
        this(context, null, 0);
    }

    public SegmentTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SegmentTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.g = new Rect();
        this.h = new GradientDrawable();
        this.i = new GradientDrawable();
        this.j = new Paint(1);
        this.K = new OvershootInterpolator(0.8f);
        this.M = new float[8];
        this.N = true;
        this.O = new Paint(1);
        this.P = new SparseArray<>();
        this.R = new a();
        this.S = new a();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.a = context;
        this.c = new LinearLayout(context);
        addView(this.c);
        a(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (!attributeValue.equals("-1") && !attributeValue.equals("-2")) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842997});
            this.I = obtainStyledAttributes.getDimensionPixelSize(0, -2);
            obtainStyledAttributes.recycle();
        }
        this.J = ValueAnimator.ofObject(new b(), new Object[]{this.S, this.R});
        this.J.addUpdateListener(this);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SegmentTabLayout);
        this.n = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_indicator_color, Color.parseColor("#222831"));
        this.o = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_height, -1.0f);
        this.p = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_corner_radius, -1.0f);
        this.q = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_left, (float) a(0.0f));
        this.r = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_top, 0.0f);
        this.s = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_right, (float) a(0.0f));
        this.t = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_bottom, 0.0f);
        this.v = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_indicator_anim_enable, false);
        this.w = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_indicator_bounce_enable, true);
        this.u = (long) obtainStyledAttributes.getInt(R.styleable.SegmentTabLayout_tl_indicator_anim_duration, -1);
        this.x = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_divider_color, this.n);
        this.y = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_divider_width, (float) a(1.0f));
        this.z = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_divider_padding, 0.0f);
        this.A = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_textsize, (float) b(13.0f));
        this.B = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.C = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_textUnselectColor, this.n);
        this.D = obtainStyledAttributes.getInt(R.styleable.SegmentTabLayout_tl_textBold, 0);
        this.E = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_textAllCaps, false);
        this.l = obtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_tab_space_equal, true);
        this.m = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_tab_width, (float) a(-1.0f));
        this.k = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_tab_padding, (this.l || this.m > 0.0f) ? (float) a(0.0f) : (float) a(10.0f));
        this.F = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_bar_color, 0);
        this.G = obtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_bar_stroke_color, this.n);
        this.H = obtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_bar_stroke_width, (float) a(1.0f));
        obtainStyledAttributes.recycle();
    }

    public void setTabData(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalStateException("Titles can not be NULL or EMPTY !");
        }
        this.b = strArr;
        a();
    }

    public void setTabData(String[] strArr, FragmentActivity fragmentActivity, int i2, ArrayList<Fragment> arrayList) {
        this.L = new com.flyco.tablayout.b.a(fragmentActivity.getSupportFragmentManager(), i2, arrayList);
        setTabData(strArr);
    }

    public void a() {
        this.c.removeAllViews();
        this.f = this.b.length;
        for (int i2 = 0; i2 < this.f; i2++) {
            View inflate = View.inflate(this.a, R.layout.layout_tab_segment, null);
            inflate.setTag(Integer.valueOf(i2));
            a(i2, inflate);
        }
        b();
    }

    private void a(int i2, View view) {
        ((TextView) view.findViewById(R.id.tv_tab_title)).setText(this.b[i2]);
        view.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                int intValue = ((Integer) view.getTag()).intValue();
                if (SegmentTabLayout.this.d != intValue) {
                    SegmentTabLayout.this.setCurrentTab(intValue);
                    if (SegmentTabLayout.this.Q != null) {
                        SegmentTabLayout.this.Q.a(intValue);
                    }
                } else if (SegmentTabLayout.this.Q != null) {
                    SegmentTabLayout.this.Q.b(intValue);
                }
            }
        });
        LayoutParams layoutParams = this.l ? new LayoutParams(0, -1, 1.0f) : new LayoutParams(-2, -1);
        if (this.m > 0.0f) {
            layoutParams = new LayoutParams((int) this.m, -1);
        }
        this.c.addView(view, i2, layoutParams);
    }

    private void b() {
        int i2 = 0;
        while (i2 < this.f) {
            View childAt = this.c.getChildAt(i2);
            childAt.setPadding((int) this.k, 0, (int) this.k, 0);
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(i2 == this.d ? this.B : this.C);
            textView.setTextSize(0, this.A);
            if (this.E) {
                textView.setText(textView.getText().toString().toUpperCase());
            }
            if (this.D == 2) {
                textView.getPaint().setFakeBoldText(true);
            } else if (this.D == 0) {
                textView.getPaint().setFakeBoldText(false);
            }
            i2++;
        }
    }

    private void a(int i2) {
        boolean z2;
        for (int i3 = 0; i3 < this.f; i3++) {
            View childAt = this.c.getChildAt(i3);
            if (i3 == i2) {
                z2 = true;
            } else {
                z2 = false;
            }
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(z2 ? this.B : this.C);
            if (this.D == 1) {
                textView.getPaint().setFakeBoldText(z2);
            }
        }
    }

    private void c() {
        View childAt = this.c.getChildAt(this.d);
        this.R.a = (float) childAt.getLeft();
        this.R.b = (float) childAt.getRight();
        View childAt2 = this.c.getChildAt(this.e);
        this.S.a = (float) childAt2.getLeft();
        this.S.b = (float) childAt2.getRight();
        if (this.S.a == this.R.a && this.S.b == this.R.b) {
            invalidate();
            return;
        }
        this.J.setObjectValues(new Object[]{this.S, this.R});
        if (this.w) {
            this.J.setInterpolator(this.K);
        }
        if (this.u < 0) {
            this.u = this.w ? 500 : 250;
        }
        this.J.setDuration(this.u);
        this.J.start();
    }

    private void d() {
        View childAt = this.c.getChildAt(this.d);
        float left = (float) childAt.getLeft();
        float right = (float) childAt.getRight();
        this.g.left = (int) left;
        this.g.right = (int) right;
        if (this.v) {
            this.M[0] = this.p;
            this.M[1] = this.p;
            this.M[2] = this.p;
            this.M[3] = this.p;
            this.M[4] = this.p;
            this.M[5] = this.p;
            this.M[6] = this.p;
            this.M[7] = this.p;
        } else if (this.d == 0) {
            this.M[0] = this.p;
            this.M[1] = this.p;
            this.M[2] = 0.0f;
            this.M[3] = 0.0f;
            this.M[4] = 0.0f;
            this.M[5] = 0.0f;
            this.M[6] = this.p;
            this.M[7] = this.p;
        } else if (this.d == this.f - 1) {
            this.M[0] = 0.0f;
            this.M[1] = 0.0f;
            this.M[2] = this.p;
            this.M[3] = this.p;
            this.M[4] = this.p;
            this.M[5] = this.p;
            this.M[6] = 0.0f;
            this.M[7] = 0.0f;
        } else {
            this.M[0] = 0.0f;
            this.M[1] = 0.0f;
            this.M[2] = 0.0f;
            this.M[3] = 0.0f;
            this.M[4] = 0.0f;
            this.M[5] = 0.0f;
            this.M[6] = 0.0f;
            this.M[7] = 0.0f;
        }
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        a aVar = (a) valueAnimator.getAnimatedValue();
        this.g.left = (int) aVar.a;
        this.g.right = (int) aVar.b;
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!isInEditMode() && this.f > 0) {
            int height = getHeight();
            int paddingLeft = getPaddingLeft();
            if (this.o < 0.0f) {
                this.o = (((float) height) - this.r) - this.t;
            }
            if (this.p < 0.0f || this.p > this.o / 2.0f) {
                this.p = this.o / 2.0f;
            }
            this.i.setColor(this.F);
            this.i.setStroke((int) this.H, this.G);
            this.i.setCornerRadius(this.p);
            this.i.setBounds(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
            this.i.draw(canvas);
            if (!this.v && this.y > 0.0f) {
                this.j.setStrokeWidth(this.y);
                this.j.setColor(this.x);
                for (int i2 = 0; i2 < this.f - 1; i2++) {
                    View childAt = this.c.getChildAt(i2);
                    canvas.drawLine((float) (childAt.getRight() + paddingLeft), this.z, (float) (childAt.getRight() + paddingLeft), ((float) height) - this.z, this.j);
                }
            }
            if (!this.v) {
                d();
            } else if (this.N) {
                this.N = false;
                d();
            }
            this.h.setColor(this.n);
            this.h.setBounds(((int) this.q) + paddingLeft + this.g.left, (int) this.r, (int) (((float) (this.g.right + paddingLeft)) - this.s), (int) (this.r + this.o));
            this.h.setCornerRadii(this.M);
            this.h.draw(canvas);
        }
    }

    public void setCurrentTab(int i2) {
        this.e = this.d;
        this.d = i2;
        a(i2);
        if (this.L != null) {
            this.L.a(i2);
        }
        if (this.v) {
            c();
        } else {
            invalidate();
        }
    }

    public void setTabPadding(float f2) {
        this.k = (float) a(f2);
        b();
    }

    public void setTabSpaceEqual(boolean z2) {
        this.l = z2;
        b();
    }

    public void setTabWidth(float f2) {
        this.m = (float) a(f2);
        b();
    }

    public void setIndicatorColor(int i2) {
        this.n = i2;
        invalidate();
    }

    public void setIndicatorHeight(float f2) {
        this.o = (float) a(f2);
        invalidate();
    }

    public void setIndicatorCornerRadius(float f2) {
        this.p = (float) a(f2);
        invalidate();
    }

    public void setIndicatorMargin(float f2, float f3, float f4, float f5) {
        this.q = (float) a(f2);
        this.r = (float) a(f3);
        this.s = (float) a(f4);
        this.t = (float) a(f5);
        invalidate();
    }

    public void setIndicatorAnimDuration(long j2) {
        this.u = j2;
    }

    public void setIndicatorAnimEnable(boolean z2) {
        this.v = z2;
    }

    public void setIndicatorBounceEnable(boolean z2) {
        this.w = z2;
    }

    public void setDividerColor(int i2) {
        this.x = i2;
        invalidate();
    }

    public void setDividerWidth(float f2) {
        this.y = (float) a(f2);
        invalidate();
    }

    public void setDividerPadding(float f2) {
        this.z = (float) a(f2);
        invalidate();
    }

    public void setTextsize(float f2) {
        this.A = (float) b(f2);
        b();
    }

    public void setTextSelectColor(int i2) {
        this.B = i2;
        b();
    }

    public void setTextUnselectColor(int i2) {
        this.C = i2;
        b();
    }

    public void setTextBold(int i2) {
        this.D = i2;
        b();
    }

    public void setTextAllCaps(boolean z2) {
        this.E = z2;
        b();
    }

    public int getTabCount() {
        return this.f;
    }

    public int getCurrentTab() {
        return this.d;
    }

    public float getTabPadding() {
        return this.k;
    }

    public float getTabWidth() {
        return this.m;
    }

    public int getIndicatorColor() {
        return this.n;
    }

    public float getIndicatorHeight() {
        return this.o;
    }

    public float getIndicatorCornerRadius() {
        return this.p;
    }

    public float getIndicatorMarginLeft() {
        return this.q;
    }

    public float getIndicatorMarginTop() {
        return this.r;
    }

    public float getIndicatorMarginRight() {
        return this.s;
    }

    public float getIndicatorMarginBottom() {
        return this.t;
    }

    public long getIndicatorAnimDuration() {
        return this.u;
    }

    public int getDividerColor() {
        return this.x;
    }

    public float getDividerWidth() {
        return this.y;
    }

    public float getDividerPadding() {
        return this.z;
    }

    public float getTextsize() {
        return this.A;
    }

    public int getTextSelectColor() {
        return this.B;
    }

    public int getTextUnselectColor() {
        return this.C;
    }

    public int getTextBold() {
        return this.D;
    }

    public void setMsgMargin(int i2, float f2, float f3) {
        if (i2 >= this.f) {
            i2 = this.f - 1;
        }
        View childAt = this.c.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.O.setTextSize(this.A);
            this.O.measureText(textView.getText().toString());
            float descent = this.O.descent() - this.O.ascent();
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) msgView.getLayoutParams();
            marginLayoutParams.leftMargin = a(f2);
            marginLayoutParams.topMargin = this.I > 0 ? (((int) (((float) this.I) - descent)) / 2) - a(f3) : a(f3);
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(com.flyco.tablayout.a.b bVar) {
        this.Q = bVar;
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.d);
        return bundle;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.d = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.d != 0 && this.c.getChildCount() > 0) {
                a(this.d);
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    /* access modifiers changed from: protected */
    public int a(float f2) {
        return (int) ((this.a.getResources().getDisplayMetrics().density * f2) + 0.5f);
    }

    /* access modifiers changed from: protected */
    public int b(float f2) {
        return (int) ((this.a.getResources().getDisplayMetrics().scaledDensity * f2) + 0.5f);
    }
}
