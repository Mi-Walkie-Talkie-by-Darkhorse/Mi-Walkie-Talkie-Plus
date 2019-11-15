package com.afollestad.materialdialogs.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.ScrollView;
import com.afollestad.materialdialogs.GravityEnum;
import com.afollestad.materialdialogs.R;
import com.afollestad.materialdialogs.StackingBehavior;
import com.afollestad.materialdialogs.a.a;

public class MDRootLayout extends ViewGroup {
    /* access modifiers changed from: private */
    public final MDButton[] a = new MDButton[3];
    private int b;
    private View c;
    private View d;
    /* access modifiers changed from: private */
    public boolean e = false;
    /* access modifiers changed from: private */
    public boolean f = false;
    private StackingBehavior g = StackingBehavior.ADAPTIVE;
    private boolean h = false;
    private boolean i = true;
    private boolean j;
    private boolean k;
    private int l;
    private int m;
    private int n;
    private GravityEnum o = GravityEnum.START;
    private int p;
    private Paint q;
    private OnScrollChangedListener r;
    private OnScrollChangedListener s;
    private int t;

    public MDRootLayout(Context context) {
        super(context);
        a(context, (AttributeSet) null, 0);
    }

    public MDRootLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    @TargetApi(11)
    public MDRootLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet, i2);
    }

    @TargetApi(21)
    public MDRootLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        a(context, attributeSet, i2);
    }

    private static boolean a(View view) {
        boolean z;
        if (view == null || view.getVisibility() == 8) {
            z = false;
        } else {
            z = true;
        }
        if (!z || !(view instanceof MDButton)) {
            return z;
        }
        return ((MDButton) view).getText().toString().trim().length() > 0;
    }

    public static boolean a(RecyclerView recyclerView) {
        return (recyclerView == null || recyclerView.getLayoutManager() == null || !recyclerView.getLayoutManager().canScrollVertically()) ? false : true;
    }

    private static boolean a(ScrollView scrollView) {
        if (scrollView.getChildCount() != 0 && (scrollView.getMeasuredHeight() - scrollView.getPaddingTop()) - scrollView.getPaddingBottom() < scrollView.getChildAt(0).getMeasuredHeight()) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: private */
    public static boolean b(WebView webView) {
        return ((float) webView.getMeasuredHeight()) < ((float) webView.getContentHeight()) * webView.getScale();
    }

    private static boolean a(AdapterView adapterView) {
        boolean z;
        if (adapterView.getLastVisiblePosition() == -1) {
            return false;
        }
        boolean z2 = adapterView.getFirstVisiblePosition() == 0;
        if (adapterView.getLastVisiblePosition() == adapterView.getCount() - 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z2 || !z || adapterView.getChildCount() <= 0 || adapterView.getChildAt(0).getTop() < adapterView.getPaddingTop() || adapterView.getChildAt(adapterView.getChildCount() - 1).getBottom() > adapterView.getHeight() - adapterView.getPaddingBottom()) {
            return true;
        }
        return false;
    }

    @Nullable
    private static View a(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() == 0) {
            return null;
        }
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getVisibility() == 0 && childAt.getBottom() == viewGroup.getMeasuredHeight()) {
                return childAt;
            }
        }
        return null;
    }

    @Nullable
    private static View b(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() == 0) {
            return null;
        }
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getVisibility() == 0 && childAt.getTop() == 0) {
                return childAt;
            }
        }
        return null;
    }

    private void a(Context context, AttributeSet attributeSet, int i2) {
        Resources resources = context.getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MDRootLayout, i2, 0);
        this.j = obtainStyledAttributes.getBoolean(R.styleable.MDRootLayout_md_reduce_padding_no_title_no_buttons, true);
        obtainStyledAttributes.recycle();
        this.l = resources.getDimensionPixelSize(R.dimen.md_notitle_vertical_padding);
        this.m = resources.getDimensionPixelSize(R.dimen.md_button_frame_vertical_padding);
        this.p = resources.getDimensionPixelSize(R.dimen.md_button_padding_frame_side);
        this.n = resources.getDimensionPixelSize(R.dimen.md_button_height);
        this.q = new Paint();
        this.t = resources.getDimensionPixelSize(R.dimen.md_divider_height);
        this.q.setColor(a.a(context, R.attr.md_divider_color));
        setWillNotDraw(false);
    }

    public void setMaxHeight(int i2) {
        this.b = i2;
    }

    public void a() {
        this.k = true;
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getId() == R.id.md_titleFrame) {
                this.c = childAt;
            } else if (childAt.getId() == R.id.md_buttonDefaultNeutral) {
                this.a[0] = (MDButton) childAt;
            } else if (childAt.getId() == R.id.md_buttonDefaultNegative) {
                this.a[1] = (MDButton) childAt;
            } else if (childAt.getId() == R.id.md_buttonDefaultPositive) {
                this.a[2] = (MDButton) childAt;
            } else {
                this.d = childAt;
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        MDButton[] mDButtonArr;
        boolean z;
        boolean z2;
        int i4;
        boolean z3;
        int i5;
        int i6;
        int i7;
        MDButton[] mDButtonArr2;
        int i8 = 0;
        int size = MeasureSpec.getSize(i2);
        int size2 = MeasureSpec.getSize(i3);
        if (size2 > this.b) {
            size2 = this.b;
        }
        this.i = true;
        if (this.g == StackingBehavior.ALWAYS) {
            z2 = true;
            z = false;
        } else if (this.g == StackingBehavior.NEVER) {
            z2 = false;
            z = false;
        } else {
            int i9 = 0;
            z = false;
            for (MDButton mDButton : this.a) {
                if (mDButton != null && a((View) mDButton)) {
                    mDButton.a(false, false);
                    measureChild(mDButton, i2, i3);
                    i9 += mDButton.getMeasuredWidth();
                    z = true;
                }
            }
            z2 = i9 > size - (getContext().getResources().getDimensionPixelSize(R.dimen.md_neutral_button_margin) * 2);
        }
        this.h = z2;
        if (z2) {
            i4 = 0;
            for (MDButton mDButton2 : this.a) {
                if (mDButton2 != null && a((View) mDButton2)) {
                    mDButton2.a(true, false);
                    measureChild(mDButton2, i2, i3);
                    i4 += mDButton2.getMeasuredHeight();
                    z = true;
                }
            }
            z3 = z;
        } else {
            i4 = 0;
            z3 = z;
        }
        if (!z3) {
            i5 = (this.m * 2) + 0;
            i6 = size2;
            i7 = 0;
        } else if (this.h) {
            i6 = size2 - i4;
            i5 = 0 + (this.m * 2);
            i7 = (this.m * 2) + 0;
        } else {
            i6 = size2 - this.n;
            i5 = (this.m * 2) + 0;
            i7 = 0;
        }
        if (a(this.c)) {
            this.c.measure(MeasureSpec.makeMeasureSpec(size, 1073741824), 0);
            i6 -= this.c.getMeasuredHeight();
        } else if (!this.k) {
            i5 += this.l;
        }
        if (a(this.d)) {
            this.d.measure(MeasureSpec.makeMeasureSpec(size, 1073741824), MeasureSpec.makeMeasureSpec(i6 - i7, Integer.MIN_VALUE));
            if (this.d.getMeasuredHeight() > i6 - i5) {
                this.i = false;
            } else if (!this.j || a(this.c) || z3) {
                this.i = true;
                i8 = i6 - (this.d.getMeasuredHeight() + i5);
            } else {
                this.i = false;
                i8 = i6 - (i7 + this.d.getMeasuredHeight());
            }
        } else {
            i8 = i6;
        }
        setMeasuredDimension(size, size2 - i8);
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.d != null) {
            if (this.e) {
                int top = this.d.getTop();
                canvas.drawRect(0.0f, (float) (top - this.t), (float) getMeasuredWidth(), (float) top, this.q);
            }
            if (this.f) {
                int bottom = this.d.getBottom();
                canvas.drawRect(0.0f, (float) bottom, (float) getMeasuredWidth(), (float) (bottom + this.t), this.q);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int measuredWidth;
        int i10;
        int measuredWidth2;
        MDButton[] mDButtonArr;
        if (a(this.c)) {
            int measuredHeight = this.c.getMeasuredHeight();
            this.c.layout(i2, i3, i4, i3 + measuredHeight);
            i3 += measuredHeight;
        } else if (!this.k && this.i) {
            i3 += this.l;
        }
        if (a(this.d)) {
            this.d.layout(i2, i3, i4, this.d.getMeasuredHeight() + i3);
        }
        if (this.h) {
            int i11 = i5 - this.m;
            for (MDButton mDButton : this.a) {
                if (a((View) mDButton)) {
                    mDButton.layout(i2, i11 - mDButton.getMeasuredHeight(), i4, i11);
                    i11 -= mDButton.getMeasuredHeight();
                }
            }
        } else {
            if (this.i) {
                i5 -= this.m;
            }
            int i12 = i5 - this.n;
            int i13 = this.p;
            if (a((View) this.a[2])) {
                if (this.o == GravityEnum.END) {
                    measuredWidth2 = i2 + i13;
                    i10 = this.a[2].getMeasuredWidth() + measuredWidth2;
                    i6 = -1;
                } else {
                    i10 = i4 - i13;
                    measuredWidth2 = i10 - this.a[2].getMeasuredWidth();
                    i6 = measuredWidth2;
                }
                this.a[2].layout(measuredWidth2, i12, i10, i5);
                i7 = this.a[2].getMeasuredWidth() + i13;
            } else {
                i6 = -1;
                i7 = i13;
            }
            if (a((View) this.a[1])) {
                if (this.o == GravityEnum.END) {
                    i9 = i2 + i7;
                    measuredWidth = this.a[1].getMeasuredWidth() + i9;
                    i8 = -1;
                } else if (this.o == GravityEnum.START) {
                    measuredWidth = i4 - i7;
                    i9 = measuredWidth - this.a[1].getMeasuredWidth();
                    i8 = -1;
                } else {
                    i9 = i2 + this.p;
                    measuredWidth = this.a[1].getMeasuredWidth() + i9;
                    i8 = measuredWidth;
                }
                this.a[1].layout(i9, i12, measuredWidth, i5);
            } else {
                i8 = -1;
            }
            if (a((View) this.a[0])) {
                if (this.o == GravityEnum.END) {
                    i6 = i4 - this.p;
                    i8 = i6 - this.a[0].getMeasuredWidth();
                } else if (this.o == GravityEnum.START) {
                    i8 = i2 + this.p;
                    i6 = i8 + this.a[0].getMeasuredWidth();
                } else if (i8 == -1 && i6 != -1) {
                    i8 = i6 - this.a[0].getMeasuredWidth();
                } else if (i6 == -1 && i8 != -1) {
                    i6 = i8 + this.a[0].getMeasuredWidth();
                } else if (i6 == -1) {
                    i8 = ((i4 - i2) / 2) - (this.a[0].getMeasuredWidth() / 2);
                    i6 = i8 + this.a[0].getMeasuredWidth();
                }
                this.a[0].layout(i8, i12, i6, i5);
            }
        }
        a(this.d, true, true);
    }

    public void setStackingBehavior(StackingBehavior stackingBehavior) {
        this.g = stackingBehavior;
        invalidate();
    }

    public void setDividerColor(int i2) {
        this.q.setColor(i2);
        invalidate();
    }

    public void setButtonGravity(GravityEnum gravityEnum) {
        this.o = gravityEnum;
        b();
    }

    private void b() {
        if (VERSION.SDK_INT >= 17 && getResources().getConfiguration().getLayoutDirection() == 1) {
            switch (this.o) {
                case START:
                    this.o = GravityEnum.END;
                    return;
                case END:
                    this.o = GravityEnum.START;
                    return;
                default:
                    return;
            }
        }
    }

    public void setButtonStackedGravity(GravityEnum gravityEnum) {
        MDButton[] mDButtonArr;
        for (MDButton mDButton : this.a) {
            if (mDButton != null) {
                mDButton.setStackedGravity(gravityEnum);
            }
        }
    }

    private void a(final View view, final boolean z, final boolean z2) {
        if (view != null) {
            if (view instanceof ScrollView) {
                ScrollView scrollView = (ScrollView) view;
                if (a(scrollView)) {
                    a((ViewGroup) scrollView, z, z2);
                    return;
                }
                if (z) {
                    this.e = false;
                }
                if (z2) {
                    this.f = false;
                }
            } else if (view instanceof AdapterView) {
                AdapterView adapterView = (AdapterView) view;
                if (a(adapterView)) {
                    a((ViewGroup) adapterView, z, z2);
                    return;
                }
                if (z) {
                    this.e = false;
                }
                if (z2) {
                    this.f = false;
                }
            } else if (view instanceof WebView) {
                view.getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
                    public boolean onPreDraw() {
                        if (view.getMeasuredHeight() != 0) {
                            if (!MDRootLayout.b((WebView) view)) {
                                if (z) {
                                    MDRootLayout.this.e = false;
                                }
                                if (z2) {
                                    MDRootLayout.this.f = false;
                                }
                            } else {
                                MDRootLayout.this.a((ViewGroup) view, z, z2);
                            }
                            view.getViewTreeObserver().removeOnPreDrawListener(this);
                        }
                        return true;
                    }
                });
            } else if (view instanceof RecyclerView) {
                boolean a2 = a((RecyclerView) view);
                if (z) {
                    this.e = a2;
                }
                if (z2) {
                    this.f = a2;
                }
                if (a2) {
                    a((ViewGroup) view, z, z2);
                }
            } else if (view instanceof ViewGroup) {
                View b2 = b((ViewGroup) view);
                a(b2, z, z2);
                View a3 = a((ViewGroup) view);
                if (a3 != b2) {
                    a(a3, false, true);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(final ViewGroup viewGroup, final boolean z, final boolean z2) {
        if ((!z2 && this.r == null) || (z2 && this.s == null)) {
            if (viewGroup instanceof RecyclerView) {
                AnonymousClass2 r1 = new OnScrollListener() {
                    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                        boolean z = false;
                        super.onScrolled(recyclerView, i, i2);
                        MDButton[] a2 = MDRootLayout.this.a;
                        int length = a2.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length) {
                                break;
                            }
                            MDButton mDButton = a2[i3];
                            if (mDButton != null && mDButton.getVisibility() != 8) {
                                z = true;
                                break;
                            }
                            i3++;
                        }
                        MDRootLayout.this.a(viewGroup, z, z2, z);
                        MDRootLayout.this.invalidate();
                    }
                };
                ((RecyclerView) viewGroup).addOnScrollListener(r1);
                r1.onScrolled((RecyclerView) viewGroup, 0, 0);
                return;
            }
            AnonymousClass3 r0 = new OnScrollChangedListener() {
                public void onScrollChanged() {
                    boolean z;
                    MDButton[] a2 = MDRootLayout.this.a;
                    int length = a2.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z = false;
                            break;
                        }
                        MDButton mDButton = a2[i];
                        if (mDButton != null && mDButton.getVisibility() != 8) {
                            z = true;
                            break;
                        }
                        i++;
                    }
                    if (viewGroup instanceof WebView) {
                        MDRootLayout.this.a((WebView) viewGroup, z, z2, z);
                    } else {
                        MDRootLayout.this.a(viewGroup, z, z2, z);
                    }
                    MDRootLayout.this.invalidate();
                }
            };
            if (!z2) {
                this.r = r0;
                viewGroup.getViewTreeObserver().addOnScrollChangedListener(this.r);
            } else {
                this.s = r0;
                viewGroup.getViewTreeObserver().addOnScrollChangedListener(this.s);
            }
            r0.onScrollChanged();
        }
    }

    /* access modifiers changed from: private */
    public void a(ViewGroup viewGroup, boolean z, boolean z2, boolean z3) {
        boolean z4 = true;
        if (z && viewGroup.getChildCount() > 0) {
            this.e = (this.c == null || this.c.getVisibility() == 8 || viewGroup.getScrollY() + viewGroup.getPaddingTop() <= viewGroup.getChildAt(0).getTop()) ? false : true;
        }
        if (z2 && viewGroup.getChildCount() > 0) {
            if (!z3 || (viewGroup.getScrollY() + viewGroup.getHeight()) - viewGroup.getPaddingBottom() >= viewGroup.getChildAt(viewGroup.getChildCount() - 1).getBottom()) {
                z4 = false;
            }
            this.f = z4;
        }
    }

    /* access modifiers changed from: private */
    public void a(WebView webView, boolean z, boolean z2, boolean z3) {
        boolean z4 = true;
        if (z) {
            this.e = (this.c == null || this.c.getVisibility() == 8 || webView.getScrollY() + webView.getPaddingTop() <= 0) ? false : true;
        }
        if (z2) {
            if (!z3 || ((float) ((webView.getScrollY() + webView.getMeasuredHeight()) - webView.getPaddingBottom())) >= ((float) webView.getContentHeight()) * webView.getScale()) {
                z4 = false;
            }
            this.f = z4;
        }
    }
}
