package com.flyco.tablayout;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.flyco.tablayout.widget.MsgView;
import java.util.ArrayList;

public class CommonTabLayout extends FrameLayout implements AnimatorUpdateListener {
    private boolean A;
    private int B;
    private int C;
    private float D;
    private int E;
    private int F;
    private float G;
    private float H;
    private float I;
    private int J;
    private int K;
    private int L;
    private boolean M;
    private boolean N;
    private int O;
    private float P;
    private float Q;
    private float R;
    private int S;
    private ValueAnimator T;
    private OvershootInterpolator U;
    private com.flyco.tablayout.b.a V;
    private boolean W;
    private Context a;
    private Paint aa;
    private SparseArray<Boolean> ab;
    /* access modifiers changed from: private */
    public com.flyco.tablayout.a.b ac;
    private a ad;
    private a ae;
    private ArrayList<com.flyco.tablayout.a.a> b;
    private LinearLayout c;
    /* access modifiers changed from: private */
    public int d;
    private int e;
    private int f;
    private Rect g;
    private GradientDrawable h;
    private Paint i;
    private Paint j;
    private Paint k;
    private Path l;
    private int m;
    private float n;
    private boolean o;
    private float p;
    private int q;
    private float r;
    private float s;
    private float t;
    private float u;
    private float v;
    private float w;
    private float x;
    private long y;
    private boolean z;

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

    public CommonTabLayout(Context context) {
        this(context, null, 0);
    }

    public CommonTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CommonTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = new ArrayList<>();
        this.g = new Rect();
        this.h = new GradientDrawable();
        this.i = new Paint(1);
        this.j = new Paint(1);
        this.k = new Paint(1);
        this.l = new Path();
        this.m = 0;
        this.U = new OvershootInterpolator(1.5f);
        this.W = true;
        this.aa = new Paint(1);
        this.ab = new SparseArray<>();
        this.ad = new a();
        this.ae = new a();
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
            this.S = obtainStyledAttributes.getDimensionPixelSize(0, -2);
            obtainStyledAttributes.recycle();
        }
        this.T = ValueAnimator.ofObject(new b(), new Object[]{this.ae, this.ad});
        this.T.addUpdateListener(this);
    }

    private void a(Context context, AttributeSet attributeSet) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CommonTabLayout);
        this.m = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_style, 0);
        this.q = obtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_indicator_color, Color.parseColor(this.m == 2 ? "#4B6A87" : "#ffffff"));
        int i2 = R.styleable.CommonTabLayout_tl_indicator_height;
        if (this.m == 1) {
            f2 = 4.0f;
        } else {
            f2 = (float) (this.m == 2 ? -1 : 2);
        }
        this.r = obtainStyledAttributes.getDimension(i2, (float) a(f2));
        int i3 = R.styleable.CommonTabLayout_tl_indicator_width;
        if (this.m == 1) {
            f3 = 10.0f;
        } else {
            f3 = -1.0f;
        }
        this.s = obtainStyledAttributes.getDimension(i3, (float) a(f3));
        int i4 = R.styleable.CommonTabLayout_tl_indicator_corner_radius;
        if (this.m == 2) {
            f4 = -1.0f;
        } else {
            f4 = 0.0f;
        }
        this.t = obtainStyledAttributes.getDimension(i4, (float) a(f4));
        this.u = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_left, (float) a(0.0f));
        int i5 = R.styleable.CommonTabLayout_tl_indicator_margin_top;
        if (this.m == 2) {
            f5 = 7.0f;
        } else {
            f5 = 0.0f;
        }
        this.v = obtainStyledAttributes.getDimension(i5, (float) a(f5));
        this.w = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_right, (float) a(0.0f));
        int i6 = R.styleable.CommonTabLayout_tl_indicator_margin_bottom;
        if (this.m == 2) {
            f6 = 7.0f;
        } else {
            f6 = 0.0f;
        }
        this.x = obtainStyledAttributes.getDimension(i6, (float) a(f6));
        this.z = obtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_indicator_anim_enable, true);
        this.A = obtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_indicator_bounce_enable, true);
        this.y = (long) obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_anim_duration, -1);
        this.B = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_gravity, 80);
        this.C = obtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_underline_color, Color.parseColor("#ffffff"));
        this.D = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_underline_height, (float) a(0.0f));
        this.E = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_underline_gravity, 80);
        this.F = obtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_divider_color, Color.parseColor("#ffffff"));
        this.G = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_divider_width, (float) a(0.0f));
        this.H = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_divider_padding, (float) a(12.0f));
        this.I = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_textsize, (float) b(13.0f));
        this.J = obtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.K = obtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_textUnselectColor, Color.parseColor("#AAffffff"));
        this.L = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_textBold, 0);
        this.M = obtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_textAllCaps, false);
        this.N = obtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_iconVisible, true);
        this.O = obtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_iconGravity, 48);
        this.P = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconWidth, (float) a(0.0f));
        this.Q = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconHeight, (float) a(0.0f));
        this.R = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconMargin, (float) a(2.5f));
        this.o = obtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_tab_space_equal, true);
        this.p = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_tab_width, (float) a(-1.0f));
        this.n = obtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_tab_padding, (this.o || this.p > 0.0f) ? (float) a(0.0f) : (float) a(10.0f));
        obtainStyledAttributes.recycle();
    }

    public void setTabData(ArrayList<com.flyco.tablayout.a.a> arrayList) {
        if (arrayList == null || arrayList.size() == 0) {
            throw new IllegalStateException("TabEntitys can not be NULL or EMPTY !");
        }
        this.b.clear();
        this.b.addAll(arrayList);
        a();
    }

    public void setTabData(ArrayList<com.flyco.tablayout.a.a> arrayList, FragmentActivity fragmentActivity, int i2, ArrayList<Fragment> arrayList2) {
        this.V = new com.flyco.tablayout.b.a(fragmentActivity.getSupportFragmentManager(), i2, arrayList2);
        setTabData(arrayList);
    }

    public void a() {
        View inflate;
        this.c.removeAllViews();
        this.f = this.b.size();
        for (int i2 = 0; i2 < this.f; i2++) {
            if (this.O == 3) {
                inflate = View.inflate(this.a, R.layout.layout_tab_left, null);
            } else if (this.O == 5) {
                inflate = View.inflate(this.a, R.layout.layout_tab_right, null);
            } else if (this.O == 80) {
                inflate = View.inflate(this.a, R.layout.layout_tab_bottom, null);
            } else {
                inflate = View.inflate(this.a, R.layout.layout_tab_top, null);
            }
            inflate.setTag(Integer.valueOf(i2));
            a(i2, inflate);
        }
        b();
    }

    private void a(int i2, View view) {
        ((TextView) view.findViewById(R.id.tv_tab_title)).setText(((com.flyco.tablayout.a.a) this.b.get(i2)).a());
        ((ImageView) view.findViewById(R.id.iv_tab_icon)).setImageResource(((com.flyco.tablayout.a.a) this.b.get(i2)).c());
        view.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                int intValue = ((Integer) view.getTag()).intValue();
                if (CommonTabLayout.this.d != intValue) {
                    CommonTabLayout.this.setCurrentTab(intValue);
                    if (CommonTabLayout.this.ac != null) {
                        CommonTabLayout.this.ac.a(intValue);
                    }
                } else if (CommonTabLayout.this.ac != null) {
                    CommonTabLayout.this.ac.b(intValue);
                }
            }
        });
        LayoutParams layoutParams = this.o ? new LayoutParams(0, -1, 1.0f) : new LayoutParams(-2, -1);
        if (this.p > 0.0f) {
            layoutParams = new LayoutParams((int) this.p, -1);
        }
        this.c.addView(view, i2, layoutParams);
    }

    private void b() {
        int i2 = 0;
        while (i2 < this.f) {
            View childAt = this.c.getChildAt(i2);
            childAt.setPadding((int) this.n, 0, (int) this.n, 0);
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(i2 == this.d ? this.J : this.K);
            textView.setTextSize(0, this.I);
            if (this.M) {
                textView.setText(textView.getText().toString().toUpperCase());
            }
            if (this.L == 2) {
                textView.getPaint().setFakeBoldText(true);
            } else if (this.L == 0) {
                textView.getPaint().setFakeBoldText(false);
            }
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_tab_icon);
            if (this.N) {
                imageView.setVisibility(0);
                com.flyco.tablayout.a.a aVar = (com.flyco.tablayout.a.a) this.b.get(i2);
                imageView.setImageResource(i2 == this.d ? aVar.b() : aVar.c());
                LayoutParams layoutParams = new LayoutParams(this.P <= 0.0f ? -2 : (int) this.P, this.Q <= 0.0f ? -2 : (int) this.Q);
                if (this.O == 3) {
                    layoutParams.rightMargin = (int) this.R;
                } else if (this.O == 5) {
                    layoutParams.leftMargin = (int) this.R;
                } else if (this.O == 80) {
                    layoutParams.topMargin = (int) this.R;
                } else {
                    layoutParams.bottomMargin = (int) this.R;
                }
                imageView.setLayoutParams(layoutParams);
            } else {
                imageView.setVisibility(8);
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
            textView.setTextColor(z2 ? this.J : this.K);
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_tab_icon);
            com.flyco.tablayout.a.a aVar = (com.flyco.tablayout.a.a) this.b.get(i3);
            imageView.setImageResource(z2 ? aVar.b() : aVar.c());
            if (this.L == 1) {
                textView.getPaint().setFakeBoldText(z2);
            }
        }
    }

    private void c() {
        View childAt = this.c.getChildAt(this.d);
        this.ad.a = (float) childAt.getLeft();
        this.ad.b = (float) childAt.getRight();
        View childAt2 = this.c.getChildAt(this.e);
        this.ae.a = (float) childAt2.getLeft();
        this.ae.b = (float) childAt2.getRight();
        if (this.ae.a == this.ad.a && this.ae.b == this.ad.b) {
            invalidate();
            return;
        }
        this.T.setObjectValues(new Object[]{this.ae, this.ad});
        if (this.A) {
            this.T.setInterpolator(this.U);
        }
        if (this.y < 0) {
            this.y = this.A ? 500 : 250;
        }
        this.T.setDuration(this.y);
        this.T.start();
    }

    private void d() {
        View childAt = this.c.getChildAt(this.d);
        float right = (float) childAt.getRight();
        this.g.left = (int) ((float) childAt.getLeft());
        this.g.right = (int) right;
        if (this.s >= 0.0f) {
            this.g.left = (int) (((((float) childAt.getWidth()) - this.s) / 2.0f) + ((float) childAt.getLeft()));
            this.g.right = (int) (((float) this.g.left) + this.s);
        }
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        View childAt = this.c.getChildAt(this.d);
        a aVar = (a) valueAnimator.getAnimatedValue();
        this.g.left = (int) aVar.a;
        this.g.right = (int) aVar.b;
        if (this.s >= 0.0f) {
            this.g.left = (int) (aVar.a + ((((float) childAt.getWidth()) - this.s) / 2.0f));
            this.g.right = (int) (((float) this.g.left) + this.s);
        }
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!isInEditMode() && this.f > 0) {
            int height = getHeight();
            int paddingLeft = getPaddingLeft();
            if (this.G > 0.0f) {
                this.j.setStrokeWidth(this.G);
                this.j.setColor(this.F);
                for (int i2 = 0; i2 < this.f - 1; i2++) {
                    View childAt = this.c.getChildAt(i2);
                    canvas.drawLine((float) (childAt.getRight() + paddingLeft), this.H, (float) (childAt.getRight() + paddingLeft), ((float) height) - this.H, this.j);
                }
            }
            if (this.D > 0.0f) {
                this.i.setColor(this.C);
                if (this.E == 80) {
                    canvas.drawRect((float) paddingLeft, ((float) height) - this.D, (float) (this.c.getWidth() + paddingLeft), (float) height, this.i);
                } else {
                    canvas.drawRect((float) paddingLeft, 0.0f, (float) (this.c.getWidth() + paddingLeft), this.D, this.i);
                }
            }
            if (!this.z) {
                d();
            } else if (this.W) {
                this.W = false;
                d();
            }
            if (this.m == 1) {
                if (this.r > 0.0f) {
                    this.k.setColor(this.q);
                    this.l.reset();
                    this.l.moveTo((float) (this.g.left + paddingLeft), (float) height);
                    this.l.lineTo((float) ((this.g.left / 2) + paddingLeft + (this.g.right / 2)), ((float) height) - this.r);
                    this.l.lineTo((float) (this.g.right + paddingLeft), (float) height);
                    this.l.close();
                    canvas.drawPath(this.l, this.k);
                }
            } else if (this.m == 2) {
                if (this.r < 0.0f) {
                    this.r = (((float) height) - this.v) - this.x;
                }
                if (this.r > 0.0f) {
                    if (this.t < 0.0f || this.t > this.r / 2.0f) {
                        this.t = this.r / 2.0f;
                    }
                    this.h.setColor(this.q);
                    this.h.setBounds(((int) this.u) + paddingLeft + this.g.left, (int) this.v, (int) (((float) (this.g.right + paddingLeft)) - this.w), (int) (this.v + this.r));
                    this.h.setCornerRadius(this.t);
                    this.h.draw(canvas);
                }
            } else if (this.r > 0.0f) {
                this.h.setColor(this.q);
                if (this.B == 80) {
                    this.h.setBounds(((int) this.u) + paddingLeft + this.g.left, (height - ((int) this.r)) - ((int) this.x), (this.g.right + paddingLeft) - ((int) this.w), height - ((int) this.x));
                } else {
                    this.h.setBounds(((int) this.u) + paddingLeft + this.g.left, (int) this.v, (this.g.right + paddingLeft) - ((int) this.w), ((int) this.r) + ((int) this.v));
                }
                this.h.setCornerRadius(this.t);
                this.h.draw(canvas);
            }
        }
    }

    public void setCurrentTab(int i2) {
        this.e = this.d;
        this.d = i2;
        a(i2);
        if (this.V != null) {
            this.V.a(i2);
        }
        if (this.z) {
            c();
        } else {
            invalidate();
        }
    }

    public void setIndicatorStyle(int i2) {
        this.m = i2;
        invalidate();
    }

    public void setTabPadding(float f2) {
        this.n = (float) a(f2);
        b();
    }

    public void setTabSpaceEqual(boolean z2) {
        this.o = z2;
        b();
    }

    public void setTabWidth(float f2) {
        this.p = (float) a(f2);
        b();
    }

    public void setIndicatorColor(int i2) {
        this.q = i2;
        invalidate();
    }

    public void setIndicatorHeight(float f2) {
        this.r = (float) a(f2);
        invalidate();
    }

    public void setIndicatorWidth(float f2) {
        this.s = (float) a(f2);
        invalidate();
    }

    public void setIndicatorCornerRadius(float f2) {
        this.t = (float) a(f2);
        invalidate();
    }

    public void setIndicatorGravity(int i2) {
        this.B = i2;
        invalidate();
    }

    public void setIndicatorMargin(float f2, float f3, float f4, float f5) {
        this.u = (float) a(f2);
        this.v = (float) a(f3);
        this.w = (float) a(f4);
        this.x = (float) a(f5);
        invalidate();
    }

    public void setIndicatorAnimDuration(long j2) {
        this.y = j2;
    }

    public void setIndicatorAnimEnable(boolean z2) {
        this.z = z2;
    }

    public void setIndicatorBounceEnable(boolean z2) {
        this.A = z2;
    }

    public void setUnderlineColor(int i2) {
        this.C = i2;
        invalidate();
    }

    public void setUnderlineHeight(float f2) {
        this.D = (float) a(f2);
        invalidate();
    }

    public void setUnderlineGravity(int i2) {
        this.E = i2;
        invalidate();
    }

    public void setDividerColor(int i2) {
        this.F = i2;
        invalidate();
    }

    public void setDividerWidth(float f2) {
        this.G = (float) a(f2);
        invalidate();
    }

    public void setDividerPadding(float f2) {
        this.H = (float) a(f2);
        invalidate();
    }

    public void setTextsize(float f2) {
        this.I = (float) b(f2);
        b();
    }

    public void setTextSelectColor(int i2) {
        this.J = i2;
        b();
    }

    public void setTextUnselectColor(int i2) {
        this.K = i2;
        b();
    }

    public void setTextBold(int i2) {
        this.L = i2;
        b();
    }

    public void setIconVisible(boolean z2) {
        this.N = z2;
        b();
    }

    public void setIconGravity(int i2) {
        this.O = i2;
        a();
    }

    public void setIconWidth(float f2) {
        this.P = (float) a(f2);
        b();
    }

    public void setIconHeight(float f2) {
        this.Q = (float) a(f2);
        b();
    }

    public void setIconMargin(float f2) {
        this.R = (float) a(f2);
        b();
    }

    public void setTextAllCaps(boolean z2) {
        this.M = z2;
        b();
    }

    public int getTabCount() {
        return this.f;
    }

    public int getCurrentTab() {
        return this.d;
    }

    public int getIndicatorStyle() {
        return this.m;
    }

    public float getTabPadding() {
        return this.n;
    }

    public float getTabWidth() {
        return this.p;
    }

    public int getIndicatorColor() {
        return this.q;
    }

    public float getIndicatorHeight() {
        return this.r;
    }

    public float getIndicatorWidth() {
        return this.s;
    }

    public float getIndicatorCornerRadius() {
        return this.t;
    }

    public float getIndicatorMarginLeft() {
        return this.u;
    }

    public float getIndicatorMarginTop() {
        return this.v;
    }

    public float getIndicatorMarginRight() {
        return this.w;
    }

    public float getIndicatorMarginBottom() {
        return this.x;
    }

    public long getIndicatorAnimDuration() {
        return this.y;
    }

    public int getUnderlineColor() {
        return this.C;
    }

    public float getUnderlineHeight() {
        return this.D;
    }

    public int getDividerColor() {
        return this.F;
    }

    public float getDividerWidth() {
        return this.G;
    }

    public float getDividerPadding() {
        return this.H;
    }

    public float getTextsize() {
        return this.I;
    }

    public int getTextSelectColor() {
        return this.J;
    }

    public int getTextUnselectColor() {
        return this.K;
    }

    public int getTextBold() {
        return this.L;
    }

    public int getIconGravity() {
        return this.O;
    }

    public float getIconWidth() {
        return this.P;
    }

    public float getIconHeight() {
        return this.Q;
    }

    public float getIconMargin() {
        return this.R;
    }

    public void setMsgMargin(int i2, float f2, float f3) {
        float f4;
        float f5;
        if (i2 >= this.f) {
            i2 = this.f - 1;
        }
        View childAt = this.c.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.aa.setTextSize(this.I);
            this.aa.measureText(textView.getText().toString());
            float descent = this.aa.descent() - this.aa.ascent();
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) msgView.getLayoutParams();
            float f6 = this.Q;
            if (this.N) {
                if (f6 <= 0.0f) {
                    f6 = (float) this.a.getResources().getDrawable(((com.flyco.tablayout.a.a) this.b.get(i2)).b()).getIntrinsicHeight();
                }
                f4 = f6;
                f5 = this.R;
            } else {
                f4 = f6;
                f5 = 0.0f;
            }
            if (this.O == 48 || this.O == 80) {
                marginLayoutParams.leftMargin = a(f2);
                marginLayoutParams.topMargin = this.S > 0 ? (((int) (((((float) this.S) - descent) - f4) - f5)) / 2) - a(f3) : a(f3);
            } else {
                marginLayoutParams.leftMargin = a(f2);
                marginLayoutParams.topMargin = this.S > 0 ? (((int) (((float) this.S) - Math.max(descent, f4))) / 2) - a(f3) : a(f3);
            }
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(com.flyco.tablayout.a.b bVar) {
        this.ac = bVar;
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
