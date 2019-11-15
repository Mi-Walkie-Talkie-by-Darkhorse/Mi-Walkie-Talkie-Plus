package com.flyco.tablayout;

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
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.flyco.tablayout.a.b;
import com.flyco.tablayout.widget.MsgView;
import java.util.ArrayList;
import java.util.Collections;

public class SlidingTabLayout extends HorizontalScrollView implements OnPageChangeListener {
    private int A;
    private boolean B;
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
    private int N;
    private int O;
    /* access modifiers changed from: private */
    public boolean P;
    private float Q;
    private Paint R;
    private SparseArray<Boolean> S;
    /* access modifiers changed from: private */
    public b T;
    private Context a;
    /* access modifiers changed from: private */
    public ViewPager b;
    private ArrayList<String> c;
    /* access modifiers changed from: private */
    public LinearLayout d;
    private int e;
    private float f;
    private int g;
    private Rect h;
    private Rect i;
    private GradientDrawable j;
    private Paint k;
    private Paint l;
    private Paint m;
    private Path n;
    private int o;
    private float p;
    private boolean q;
    private float r;
    private int s;
    private float t;
    private float u;
    private float v;
    private float w;
    private float x;
    private float y;
    private float z;

    class a extends FragmentPagerAdapter {
        private ArrayList<Fragment> b = new ArrayList<>();
        private String[] c;

        public a(FragmentManager fragmentManager, ArrayList<Fragment> arrayList, String[] strArr) {
            super(fragmentManager);
            this.b = arrayList;
            this.c = strArr;
        }

        public int getCount() {
            return this.b.size();
        }

        public CharSequence getPageTitle(int i) {
            return this.c[i];
        }

        public Fragment getItem(int i) {
            return (Fragment) this.b.get(i);
        }

        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        }

        public int getItemPosition(Object obj) {
            return -2;
        }
    }

    public SlidingTabLayout(Context context) {
        this(context, null, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.h = new Rect();
        this.i = new Rect();
        this.j = new GradientDrawable();
        this.k = new Paint(1);
        this.l = new Paint(1);
        this.m = new Paint(1);
        this.n = new Path();
        this.o = 0;
        this.R = new Paint(1);
        this.S = new SparseArray<>();
        setFillViewport(true);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.a = context;
        this.d = new LinearLayout(context);
        addView(this.d);
        a(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (!attributeValue.equals("-1") && !attributeValue.equals("-2")) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842997});
            this.O = obtainStyledAttributes.getDimensionPixelSize(0, -2);
            obtainStyledAttributes.recycle();
        }
    }

    private void a(Context context, AttributeSet attributeSet) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6 = 7.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingTabLayout);
        this.o = obtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_indicator_style, 0);
        this.s = obtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_indicator_color, Color.parseColor(this.o == 2 ? "#4B6A87" : "#ffffff"));
        int i2 = R.styleable.SlidingTabLayout_tl_indicator_height;
        if (this.o == 1) {
            f2 = 4.0f;
        } else {
            f2 = (float) (this.o == 2 ? -1 : 2);
        }
        this.t = obtainStyledAttributes.getDimension(i2, (float) a(f2));
        int i3 = R.styleable.SlidingTabLayout_tl_indicator_width;
        if (this.o == 1) {
            f3 = 10.0f;
        } else {
            f3 = -1.0f;
        }
        this.u = obtainStyledAttributes.getDimension(i3, (float) a(f3));
        int i4 = R.styleable.SlidingTabLayout_tl_indicator_corner_radius;
        if (this.o == 2) {
            f4 = -1.0f;
        } else {
            f4 = 0.0f;
        }
        this.v = obtainStyledAttributes.getDimension(i4, (float) a(f4));
        this.w = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_left, (float) a(0.0f));
        int i5 = R.styleable.SlidingTabLayout_tl_indicator_margin_top;
        if (this.o == 2) {
            f5 = 7.0f;
        } else {
            f5 = 0.0f;
        }
        this.x = obtainStyledAttributes.getDimension(i5, (float) a(f5));
        this.y = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_right, (float) a(0.0f));
        int i6 = R.styleable.SlidingTabLayout_tl_indicator_margin_bottom;
        if (this.o != 2) {
            f6 = 0.0f;
        }
        this.z = obtainStyledAttributes.getDimension(i6, (float) a(f6));
        this.A = obtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_indicator_gravity, 80);
        this.B = obtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_indicator_width_equal_title, false);
        this.C = obtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_underline_color, Color.parseColor("#ffffff"));
        this.D = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_underline_height, (float) a(0.0f));
        this.E = obtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_underline_gravity, 80);
        this.F = obtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_divider_color, Color.parseColor("#ffffff"));
        this.G = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_divider_width, (float) a(0.0f));
        this.H = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_divider_padding, (float) a(12.0f));
        this.I = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_textsize, (float) b(14.0f));
        this.J = obtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.K = obtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_textUnselectColor, Color.parseColor("#AAffffff"));
        this.L = obtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_textBold, 0);
        this.M = obtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_textAllCaps, false);
        this.q = obtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_tab_space_equal, false);
        this.r = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_tab_width, (float) a(-1.0f));
        this.p = obtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_tab_padding, (this.q || this.r > 0.0f) ? (float) a(0.0f) : (float) a(20.0f));
        obtainStyledAttributes.recycle();
    }

    public void setViewPager(ViewPager viewPager) {
        if (viewPager == null || viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
        }
        this.b = viewPager;
        this.b.removeOnPageChangeListener(this);
        this.b.addOnPageChangeListener(this);
        a();
    }

    public void setViewPager(ViewPager viewPager, String[] strArr) {
        if (viewPager == null || viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
        } else if (strArr == null || strArr.length == 0) {
            throw new IllegalStateException("Titles can not be EMPTY !");
        } else if (strArr.length != viewPager.getAdapter().getCount()) {
            throw new IllegalStateException("Titles length must be the same as the page count !");
        } else {
            this.b = viewPager;
            this.c = new ArrayList<>();
            Collections.addAll(this.c, strArr);
            this.b.removeOnPageChangeListener(this);
            this.b.addOnPageChangeListener(this);
            a();
        }
    }

    public void setViewPager(ViewPager viewPager, String[] strArr, FragmentActivity fragmentActivity, ArrayList<Fragment> arrayList) {
        if (viewPager == null) {
            throw new IllegalStateException("ViewPager can not be NULL !");
        } else if (strArr == null || strArr.length == 0) {
            throw new IllegalStateException("Titles can not be EMPTY !");
        } else {
            this.b = viewPager;
            this.b.setAdapter(new a(fragmentActivity.getSupportFragmentManager(), arrayList, strArr));
            this.b.removeOnPageChangeListener(this);
            this.b.addOnPageChangeListener(this);
            a();
        }
    }

    public void a() {
        this.d.removeAllViews();
        this.g = this.c == null ? this.b.getAdapter().getCount() : this.c.size();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.g) {
                a(i3, (this.c == null ? this.b.getAdapter().getPageTitle(i3) : (CharSequence) this.c.get(i3)).toString(), View.inflate(this.a, R.layout.layout_tab, null));
                i2 = i3 + 1;
            } else {
                b();
                return;
            }
        }
    }

    private void a(int i2, String str, View view) {
        TextView textView = (TextView) view.findViewById(R.id.tv_tab_title);
        if (!(textView == null || str == null)) {
            textView.setText(str);
        }
        view.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                int indexOfChild = SlidingTabLayout.this.d.indexOfChild(view);
                if (indexOfChild == -1) {
                    return;
                }
                if (SlidingTabLayout.this.b.getCurrentItem() != indexOfChild) {
                    if (SlidingTabLayout.this.P) {
                        SlidingTabLayout.this.b.setCurrentItem(indexOfChild, false);
                    } else {
                        SlidingTabLayout.this.b.setCurrentItem(indexOfChild);
                    }
                    if (SlidingTabLayout.this.T != null) {
                        SlidingTabLayout.this.T.a(indexOfChild);
                    }
                } else if (SlidingTabLayout.this.T != null) {
                    SlidingTabLayout.this.T.b(indexOfChild);
                }
            }
        });
        LayoutParams layoutParams = this.q ? new LayoutParams(0, -1, 1.0f) : new LayoutParams(-2, -1);
        if (this.r > 0.0f) {
            layoutParams = new LayoutParams((int) this.r, -1);
        }
        this.d.addView(view, i2, layoutParams);
    }

    private void b() {
        int i2 = 0;
        while (i2 < this.g) {
            TextView textView = (TextView) this.d.getChildAt(i2).findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(i2 == this.e ? this.J : this.K);
                textView.setTextSize(0, this.I);
                textView.setPadding((int) this.p, 0, (int) this.p, 0);
                if (this.M) {
                    textView.setText(textView.getText().toString().toUpperCase());
                }
                if (this.L == 2) {
                    textView.getPaint().setFakeBoldText(true);
                } else if (this.L == 0) {
                    textView.getPaint().setFakeBoldText(false);
                }
            }
            i2++;
        }
    }

    public void onPageScrolled(int i2, float f2, int i3) {
        this.e = i2;
        this.f = f2;
        c();
        invalidate();
    }

    public void onPageSelected(int i2) {
        a(i2);
    }

    public void onPageScrollStateChanged(int i2) {
    }

    private void c() {
        if (this.g > 0) {
            int width = (int) (this.f * ((float) this.d.getChildAt(this.e).getWidth()));
            int left = this.d.getChildAt(this.e).getLeft() + width;
            if (this.e > 0 || width > 0) {
                int width2 = left - ((getWidth() / 2) - getPaddingLeft());
                d();
                left = width2 + ((this.i.right - this.i.left) / 2);
            }
            if (left != this.N) {
                this.N = left;
                scrollTo(left, 0);
            }
        }
    }

    private void a(int i2) {
        boolean z2;
        for (int i3 = 0; i3 < this.g; i3++) {
            View childAt = this.d.getChildAt(i3);
            if (i3 == i2) {
                z2 = true;
            } else {
                z2 = false;
            }
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(z2 ? this.J : this.K);
                if (this.L == 1) {
                    textView.getPaint().setFakeBoldText(z2);
                }
            }
        }
    }

    private void d() {
        View childAt = this.d.getChildAt(this.e);
        float left = (float) childAt.getLeft();
        float right = (float) childAt.getRight();
        if (this.o == 0 && this.B) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.R.setTextSize(this.I);
            this.Q = ((right - left) - this.R.measureText(textView.getText().toString())) / 2.0f;
        }
        if (this.e < this.g - 1) {
            View childAt2 = this.d.getChildAt(this.e + 1);
            float left2 = (float) childAt2.getLeft();
            float right2 = (float) childAt2.getRight();
            left += this.f * (left2 - left);
            right += this.f * (right2 - right);
            if (this.o == 0 && this.B) {
                TextView textView2 = (TextView) childAt2.findViewById(R.id.tv_tab_title);
                this.R.setTextSize(this.I);
                float measureText = ((right2 - left2) - this.R.measureText(textView2.getText().toString())) / 2.0f;
                this.Q = ((measureText - this.Q) * this.f) + this.Q;
            }
        }
        float f2 = right;
        float f3 = left;
        this.h.left = (int) f3;
        this.h.right = (int) f2;
        if (this.o == 0 && this.B) {
            this.h.left = (int) ((this.Q + f3) - 1.0f);
            this.h.right = (int) ((f2 - this.Q) - 1.0f);
        }
        this.i.left = (int) f3;
        this.i.right = (int) f2;
        if (this.u >= 0.0f) {
            float left3 = ((float) childAt.getLeft()) + ((((float) childAt.getWidth()) - this.u) / 2.0f);
            if (this.e < this.g - 1) {
                View childAt3 = this.d.getChildAt(this.e + 1);
                left3 += ((float) ((childAt3.getWidth() / 2) + (childAt.getWidth() / 2))) * this.f;
            }
            this.h.left = (int) left3;
            this.h.right = (int) (((float) this.h.left) + this.u);
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!isInEditMode() && this.g > 0) {
            int height = getHeight();
            int paddingLeft = getPaddingLeft();
            if (this.G > 0.0f) {
                this.l.setStrokeWidth(this.G);
                this.l.setColor(this.F);
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 >= this.g - 1) {
                        break;
                    }
                    View childAt = this.d.getChildAt(i3);
                    canvas.drawLine((float) (childAt.getRight() + paddingLeft), this.H, (float) (childAt.getRight() + paddingLeft), ((float) height) - this.H, this.l);
                    i2 = i3 + 1;
                }
            }
            if (this.D > 0.0f) {
                this.k.setColor(this.C);
                if (this.E == 80) {
                    canvas.drawRect((float) paddingLeft, ((float) height) - this.D, (float) (this.d.getWidth() + paddingLeft), (float) height, this.k);
                } else {
                    canvas.drawRect((float) paddingLeft, 0.0f, (float) (this.d.getWidth() + paddingLeft), this.D, this.k);
                }
            }
            d();
            if (this.o == 1) {
                if (this.t > 0.0f) {
                    this.m.setColor(this.s);
                    this.n.reset();
                    this.n.moveTo((float) (this.h.left + paddingLeft), (float) height);
                    this.n.lineTo((float) ((this.h.left / 2) + paddingLeft + (this.h.right / 2)), ((float) height) - this.t);
                    this.n.lineTo((float) (this.h.right + paddingLeft), (float) height);
                    this.n.close();
                    canvas.drawPath(this.n, this.m);
                }
            } else if (this.o == 2) {
                if (this.t < 0.0f) {
                    this.t = (((float) height) - this.x) - this.z;
                }
                if (this.t > 0.0f) {
                    if (this.v < 0.0f || this.v > this.t / 2.0f) {
                        this.v = this.t / 2.0f;
                    }
                    this.j.setColor(this.s);
                    this.j.setBounds(((int) this.w) + paddingLeft + this.h.left, (int) this.x, (int) (((float) (this.h.right + paddingLeft)) - this.y), (int) (this.x + this.t));
                    this.j.setCornerRadius(this.v);
                    this.j.draw(canvas);
                }
            } else if (this.t > 0.0f) {
                this.j.setColor(this.s);
                if (this.A == 80) {
                    this.j.setBounds(((int) this.w) + paddingLeft + this.h.left, (height - ((int) this.t)) - ((int) this.z), (this.h.right + paddingLeft) - ((int) this.y), height - ((int) this.z));
                } else {
                    this.j.setBounds(((int) this.w) + paddingLeft + this.h.left, (int) this.x, (this.h.right + paddingLeft) - ((int) this.y), ((int) this.t) + ((int) this.x));
                }
                this.j.setCornerRadius(this.v);
                this.j.draw(canvas);
            }
        }
    }

    public void setCurrentTab(int i2) {
        this.e = i2;
        this.b.setCurrentItem(i2);
    }

    public void setCurrentTab(int i2, boolean z2) {
        this.e = i2;
        this.b.setCurrentItem(i2, z2);
    }

    public void setIndicatorStyle(int i2) {
        this.o = i2;
        invalidate();
    }

    public void setTabPadding(float f2) {
        this.p = (float) a(f2);
        b();
    }

    public void setTabSpaceEqual(boolean z2) {
        this.q = z2;
        b();
    }

    public void setTabWidth(float f2) {
        this.r = (float) a(f2);
        b();
    }

    public void setIndicatorColor(int i2) {
        this.s = i2;
        invalidate();
    }

    public void setIndicatorHeight(float f2) {
        this.t = (float) a(f2);
        invalidate();
    }

    public void setIndicatorWidth(float f2) {
        this.u = (float) a(f2);
        invalidate();
    }

    public void setIndicatorCornerRadius(float f2) {
        this.v = (float) a(f2);
        invalidate();
    }

    public void setIndicatorGravity(int i2) {
        this.A = i2;
        invalidate();
    }

    public void setIndicatorMargin(float f2, float f3, float f4, float f5) {
        this.w = (float) a(f2);
        this.x = (float) a(f3);
        this.y = (float) a(f4);
        this.z = (float) a(f5);
        invalidate();
    }

    public void setIndicatorWidthEqualTitle(boolean z2) {
        this.B = z2;
        invalidate();
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

    public void setTextAllCaps(boolean z2) {
        this.M = z2;
        b();
    }

    public void setSnapOnTabClick(boolean z2) {
        this.P = z2;
    }

    public int getTabCount() {
        return this.g;
    }

    public int getCurrentTab() {
        return this.e;
    }

    public int getIndicatorStyle() {
        return this.o;
    }

    public float getTabPadding() {
        return this.p;
    }

    public float getTabWidth() {
        return this.r;
    }

    public int getIndicatorColor() {
        return this.s;
    }

    public float getIndicatorHeight() {
        return this.t;
    }

    public float getIndicatorWidth() {
        return this.u;
    }

    public float getIndicatorCornerRadius() {
        return this.v;
    }

    public float getIndicatorMarginLeft() {
        return this.w;
    }

    public float getIndicatorMarginTop() {
        return this.x;
    }

    public float getIndicatorMarginRight() {
        return this.y;
    }

    public float getIndicatorMarginBottom() {
        return this.z;
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

    public void setMsgMargin(int i2, float f2, float f3) {
        if (i2 >= this.g) {
            i2 = this.g - 1;
        }
        View childAt = this.d.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.R.setTextSize(this.I);
            float measureText = this.R.measureText(textView.getText().toString());
            float descent = this.R.descent() - this.R.ascent();
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) msgView.getLayoutParams();
            marginLayoutParams.leftMargin = this.r >= 0.0f ? (int) ((measureText / 2.0f) + (this.r / 2.0f) + ((float) a(f2))) : (int) (measureText + this.p + ((float) a(f2)));
            marginLayoutParams.topMargin = this.O > 0 ? (((int) (((float) this.O) - descent)) / 2) - a(f3) : 0;
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(b bVar) {
        this.T = bVar;
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.e);
        return bundle;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.e = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.e != 0 && this.d.getChildCount() > 0) {
                a(this.e);
                c();
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
