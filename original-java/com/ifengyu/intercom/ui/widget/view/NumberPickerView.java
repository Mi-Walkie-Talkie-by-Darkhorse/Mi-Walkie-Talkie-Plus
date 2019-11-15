package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import org.bouncycastle.crypto.tls.CipherSuite;

public class NumberPickerView extends View {
    private int A = 0;
    /* access modifiers changed from: private */
    public int B = 0;
    private int C = CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA;
    private int D = 8;
    private String E;
    private String F;
    private String G;
    private String H;
    private float I = 1.0f;
    private float J = 0.0f;
    private float K = 0.0f;
    private float L = 0.0f;
    private boolean M = true;
    private boolean N = true;
    private boolean O = false;
    private boolean P = false;
    private boolean Q = true;
    private boolean R = false;
    private boolean S = false;
    /* access modifiers changed from: private */
    public boolean T = true;
    /* access modifiers changed from: private */
    public ScrollerCompat U;
    private VelocityTracker V;
    private Paint W = new Paint();
    private int a = -13421773;
    private float aA;
    private int aB = 0;
    /* access modifiers changed from: private */
    public int aC = 0;
    /* access modifiers changed from: private */
    public int aD = 0;
    private int aE = 0;
    private int aF = 0;
    private TextPaint aa = new TextPaint();
    private Paint ab = new Paint();
    private String[] ac;
    private CharSequence[] ad;
    private CharSequence[] ae;
    private HandlerThread af;
    /* access modifiers changed from: private */
    public Handler ag;
    /* access modifiers changed from: private */
    public Handler ah;
    private d ai;
    private b aj;
    private a ak;
    private c al;
    /* access modifiers changed from: private */
    public int am = 0;
    private int an;
    private int ao;
    private int ap;
    private int aq;
    private float ar = 0.0f;
    private float as = 0.0f;
    private float at = 0.0f;
    private boolean au = false;
    private int av;
    private int aw;
    /* access modifiers changed from: private */
    public int ax;
    private float ay;
    private float az;
    private int b = -16746753;
    private int c = -16746753;
    private int d = 0;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private int i = 0;
    private int j = 0;
    private int k = 0;
    private int l = 0;
    private int m = -695533;
    private int n = 2;
    private int o = 0;
    private int p = 0;
    private int q = 3;
    private int r = 0;
    private int s = 0;
    private int t = -1;
    private int u = -1;
    private int v = 0;
    private int w = 0;
    private int x = 0;
    private int y = 0;
    private int z = 0;

    public interface a {
        void a(NumberPickerView numberPickerView, int i);
    }

    public interface b {
        void a(NumberPickerView numberPickerView, int i, int i2);
    }

    public interface c {
        void a(NumberPickerView numberPickerView, int i, int i2);
    }

    public interface d {
        void a(NumberPickerView numberPickerView, int i, int i2, String[] strArr);
    }

    public NumberPickerView(Context context) {
        super(context);
        a(context);
    }

    public NumberPickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
        a(context);
    }

    public NumberPickerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet);
        a(context);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NumberPickerView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == 0) {
                    this.q = obtainStyledAttributes.getInt(index, 3);
                } else if (index == 2) {
                    this.m = obtainStyledAttributes.getColor(index, -695533);
                } else if (index == 5) {
                    this.n = obtainStyledAttributes.getDimensionPixelSize(index, 2);
                } else if (index == 3) {
                    this.o = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.p = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 12) {
                    this.ac = a(obtainStyledAttributes.getTextArray(index));
                } else if (index == 6) {
                    this.a = obtainStyledAttributes.getColor(index, -13421773);
                } else if (index == 7) {
                    this.b = obtainStyledAttributes.getColor(index, -16746753);
                } else if (index == 8) {
                    this.c = obtainStyledAttributes.getColor(index, -16746753);
                } else if (index == 9) {
                    this.d = obtainStyledAttributes.getDimensionPixelSize(index, a(context, 14.0f));
                } else if (index == 10) {
                    this.e = obtainStyledAttributes.getDimensionPixelSize(index, a(context, 16.0f));
                } else if (index == 11) {
                    this.f = obtainStyledAttributes.getDimensionPixelSize(index, a(context, 14.0f));
                } else if (index == 13) {
                    this.t = obtainStyledAttributes.getInteger(index, 0);
                } else if (index == 14) {
                    this.u = obtainStyledAttributes.getInteger(index, 0);
                } else if (index == 15) {
                    this.N = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 1) {
                    this.M = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 17) {
                    this.E = obtainStyledAttributes.getString(index);
                } else if (index == 27) {
                    this.H = obtainStyledAttributes.getString(index);
                } else if (index == 18) {
                    this.G = obtainStyledAttributes.getString(index);
                } else if (index == 19) {
                    this.i = obtainStyledAttributes.getDimensionPixelSize(index, b(context, 8.0f));
                } else if (index == 20) {
                    this.j = obtainStyledAttributes.getDimensionPixelSize(index, b(context, 8.0f));
                } else if (index == 22) {
                    this.k = obtainStyledAttributes.getDimensionPixelSize(index, b(context, 2.0f));
                } else if (index == 21) {
                    this.l = obtainStyledAttributes.getDimensionPixelSize(index, b(context, 5.0f));
                } else if (index == 25) {
                    this.ad = obtainStyledAttributes.getTextArray(index);
                } else if (index == 26) {
                    this.ae = obtainStyledAttributes.getTextArray(index);
                } else if (index == 16) {
                    this.S = obtainStyledAttributes.getBoolean(index, false);
                } else if (index == 23) {
                    this.T = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 24) {
                    this.F = obtainStyledAttributes.getString(index);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    private void a(Context context) {
        this.U = ScrollerCompat.create(context);
        this.C = ViewConfiguration.get(getContext()).getScaledMinimumFlingVelocity();
        this.D = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        if (this.d == 0) {
            this.d = a(context, 14.0f);
        }
        if (this.e == 0) {
            this.e = a(context, 16.0f);
        }
        if (this.f == 0) {
            this.f = a(context, 14.0f);
        }
        if (this.i == 0) {
            this.i = b(context, 8.0f);
        }
        if (this.j == 0) {
            this.j = b(context, 8.0f);
        }
        this.W.setColor(this.m);
        this.W.setAntiAlias(true);
        this.W.setStyle(Style.STROKE);
        this.W.setStrokeWidth((float) this.n);
        this.aa.setColor(this.a);
        this.aa.setAntiAlias(true);
        this.aa.setTextAlign(Align.CENTER);
        this.ab.setColor(this.c);
        this.ab.setAntiAlias(true);
        this.ab.setTextAlign(Align.CENTER);
        this.ab.setTextSize((float) this.f);
        if (this.q % 2 == 0) {
            this.q++;
        }
        if (this.t == -1 || this.u == -1) {
            l();
        }
        b();
    }

    private void b() {
        this.af = new HandlerThread("HandlerThread-For-Refreshing");
        this.af.start();
        this.ag = new Handler(this.af.getLooper()) {
            public void handleMessage(Message message) {
                int b;
                int i = 0;
                switch (message.what) {
                    case 1:
                        if (!NumberPickerView.this.U.isFinished()) {
                            if (NumberPickerView.this.am == 0) {
                                NumberPickerView.this.b(1);
                            }
                            NumberPickerView.this.ag.sendMessageDelayed(NumberPickerView.this.a(1, 0, 0, message.obj), 32);
                            return;
                        }
                        if (NumberPickerView.this.aC != 0) {
                            if (NumberPickerView.this.am == 0) {
                                NumberPickerView.this.b(1);
                            }
                            if (NumberPickerView.this.aC < (-NumberPickerView.this.ax) / 2) {
                                int e = (int) ((((float) (NumberPickerView.this.ax + NumberPickerView.this.aC)) * 300.0f) / ((float) NumberPickerView.this.ax));
                                NumberPickerView.this.U.startScroll(0, NumberPickerView.this.aD, 0, NumberPickerView.this.aC + NumberPickerView.this.ax, e * 3);
                                b = NumberPickerView.this.c(NumberPickerView.this.aD + NumberPickerView.this.ax + NumberPickerView.this.aC);
                                i = e;
                            } else {
                                int e2 = (int) ((((float) (-NumberPickerView.this.aC)) * 300.0f) / ((float) NumberPickerView.this.ax));
                                NumberPickerView.this.U.startScroll(0, NumberPickerView.this.aD, 0, NumberPickerView.this.aC, e2 * 3);
                                b = NumberPickerView.this.c(NumberPickerView.this.aD + NumberPickerView.this.aC);
                                i = e2;
                            }
                            NumberPickerView.this.postInvalidate();
                        } else {
                            NumberPickerView.this.b(0);
                            b = NumberPickerView.this.c(NumberPickerView.this.aD);
                        }
                        Message a2 = NumberPickerView.this.a(2, NumberPickerView.this.B, b, message.obj);
                        if (NumberPickerView.this.T) {
                            NumberPickerView.this.ah.sendMessageDelayed(a2, (long) (i * 2));
                            return;
                        } else {
                            NumberPickerView.this.ag.sendMessageDelayed(a2, (long) (i * 2));
                            return;
                        }
                    case 2:
                        NumberPickerView.this.a(message.arg1, message.arg2, message.obj);
                        return;
                    default:
                        return;
                }
            }
        };
        this.ah = new Handler() {
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 2:
                        NumberPickerView.this.a(message.arg1, message.arg2, message.obj);
                        return;
                    case 3:
                        NumberPickerView.this.requestLayout();
                        return;
                    default:
                        return;
                }
            }
        };
    }

    private void a(int i2, int i3) {
        this.al.a(this, i2, i3);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        a(false);
        setMeasuredDimension(f(i2), g(i3));
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        boolean z2 = false;
        super.onSizeChanged(i2, i3, i4, i5);
        this.av = i2;
        this.aw = i3;
        this.ax = this.aw / this.q;
        this.aA = ((float) ((this.av + getPaddingLeft()) - getPaddingRight())) / 2.0f;
        int i6 = getOneRecycleSize() > 1 ? this.P ? getValue() - this.v : this.O ? this.aB + ((this.q - 1) / 2) : 0 : 0;
        if (this.N && this.Q) {
            z2 = true;
        }
        b(i6, z2);
        e();
        f();
        d();
        this.P = true;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.af == null || !this.af.isAlive()) {
            b();
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.af.quit();
        if (this.ax != 0) {
            if (!this.U.isFinished()) {
                this.U.abortAnimation();
                this.aD = this.U.getCurrY();
                g();
                if (this.aC != 0) {
                    if (this.aC < (-this.ax) / 2) {
                        this.aD = this.aD + this.ax + this.aC;
                    } else {
                        this.aD += this.aC;
                    }
                    g();
                }
                b(0);
            }
            int c2 = c(this.aD);
            if (c2 != this.B && this.S) {
                try {
                    if (this.aj != null) {
                        this.aj.a(this, this.B + this.v, this.v + c2);
                    }
                    if (this.ai != null) {
                        this.ai.a(this, this.B, c2, this.ac);
                    }
                } catch (Exception e2) {
                    ThrowableExtension.printStackTrace(e2);
                }
            }
            this.B = c2;
        }
    }

    public int getOneRecycleSize() {
        return (this.u - this.t) + 1;
    }

    public int getRawContentSize() {
        if (this.ac != null) {
            return this.ac.length;
        }
        return 0;
    }

    public void setDisplayedValuesAndPickedIndex(String[] strArr, int i2, boolean z2) {
        a();
        if (strArr == null) {
            throw new IllegalArgumentException("newDisplayedValues should not be null.");
        } else if (i2 < 0) {
            throw new IllegalArgumentException("pickedIndex should not be negative, now pickedIndex is " + i2);
        } else {
            b(strArr);
            a(true);
            f();
            k();
            this.B = this.t + i2;
            b(i2, this.N && this.Q);
            if (z2) {
                this.ag.sendMessageDelayed(h(1), 0);
                postInvalidate();
            }
        }
    }

    public void setDisplayedValues(String[] strArr, boolean z2) {
        setDisplayedValuesAndPickedIndex(strArr, 0, z2);
    }

    public void setDisplayedValues(String[] strArr) {
        boolean z2 = true;
        o();
        a();
        if (strArr == null) {
            throw new IllegalArgumentException("newDisplayedValues should not be null.");
        } else if ((this.w - this.v) + 1 > strArr.length) {
            throw new IllegalArgumentException("mMaxValue - mMinValue + 1 should not be greater than mDisplayedValues.length, now ((mMaxValue - mMinValue + 1) is " + ((this.w - this.v) + 1) + " newDisplayedValues.length is " + strArr.length + ", you need to set MaxValue and MinValue before setDisplayedValues(String[])");
        } else {
            b(strArr);
            a(true);
            this.B = this.t + 0;
            if (!this.N || !this.Q) {
                z2 = false;
            }
            b(0, z2);
            postInvalidate();
            this.ah.sendEmptyMessage(3);
        }
    }

    public String[] getDisplayedValues() {
        return this.ac;
    }

    public void setWrapSelectorWheel(boolean z2) {
        if (this.N == z2) {
            return;
        }
        if (z2) {
            this.N = z2;
            n();
            postInvalidate();
        } else if (this.am == 0) {
            c();
        } else {
            this.R = true;
        }
    }

    public void a(String[] strArr) {
        int minValue = getMinValue();
        int length = strArr.length - 1;
        if ((length - minValue) + 1 > (getMaxValue() - minValue) + 1) {
            setDisplayedValues(strArr);
            setMaxValue(length);
            return;
        }
        setMaxValue(length);
        setDisplayedValues(strArr);
    }

    /* access modifiers changed from: private */
    public void a(int i2, int i3, Object obj) {
        b(0);
        if (i2 != i3 && (obj == null || !(obj instanceof Boolean) || ((Boolean) obj).booleanValue())) {
            if (this.aj != null) {
                this.aj.a(this, this.v + i2, this.v + i3);
            }
            if (this.ai != null) {
                this.ai.a(this, i2, i3, this.ac);
            }
        }
        this.B = i3;
        if (this.R) {
            this.R = false;
            c();
        }
    }

    private void a(int i2) {
        a(i2, true);
    }

    private void a(int i2, boolean z2) {
        int i3;
        int i4;
        int i5;
        int i6 = 600;
        if (!this.N || !this.Q) {
            int pickedIndexRelativeToRaw = getPickedIndexRelativeToRaw();
            if (pickedIndexRelativeToRaw + i2 > this.u) {
                i2 = this.u - pickedIndexRelativeToRaw;
            } else if (pickedIndexRelativeToRaw + i2 < this.t) {
                i2 = this.t - pickedIndexRelativeToRaw;
            }
        }
        if (this.aC < (-this.ax) / 2) {
            i3 = this.ax + this.aC;
            int i7 = (int) ((((float) (this.ax + this.aC)) * 300.0f) / ((float) this.ax));
            if (i2 < 0) {
                i4 = (-i7) - (i2 * 300);
            } else {
                i4 = i7 + (i2 * 300);
            }
        } else {
            i3 = this.aC;
            int i8 = (int) ((((float) (-this.aC)) * 300.0f) / ((float) this.ax));
            if (i2 < 0) {
                i4 = i8 - (i2 * 300);
            } else {
                i4 = i8 + (i2 * 300);
            }
        }
        int i9 = (this.ax * i2) + i3;
        if (i4 < 300) {
            i5 = 300;
        } else {
            i5 = i4;
        }
        if (i5 <= 600) {
            i6 = i5;
        }
        this.U.startScroll(0, this.aD, 0, i9, i6);
        if (z2) {
            this.ag.sendMessageDelayed(h(1), (long) (i6 / 4));
        } else {
            this.ag.sendMessageDelayed(a(1, 0, 0, (Object) new Boolean(z2)), (long) (i6 / 4));
        }
        postInvalidate();
    }

    public int getMinValue() {
        return this.v;
    }

    public int getMaxValue() {
        return this.w;
    }

    public void setMinValue(int i2) {
        this.v = i2;
        this.t = 0;
        f();
    }

    public void setMaxValue(int i2) {
        if (this.ac == null) {
            throw new NullPointerException("mDisplayedValues should not be null");
        } else if ((i2 - this.v) + 1 > this.ac.length) {
            throw new IllegalArgumentException("(maxValue - mMinValue + 1) should not be greater than mDisplayedValues.length now  (maxValue - mMinValue + 1) is " + ((i2 - this.v) + 1) + " and mDisplayedValues.length is " + this.ac.length);
        } else {
            this.w = i2;
            this.u = (this.w - this.v) + this.t;
            setMinAndMaxShowIndex(this.t, this.u);
            f();
        }
    }

    public void setValue(int i2) {
        if (i2 < this.v) {
            throw new IllegalArgumentException("should not set a value less than mMinValue, value is " + i2);
        } else if (i2 > this.w) {
            throw new IllegalArgumentException("should not set a value greater than mMaxValue, value is " + i2);
        } else {
            setPickedIndexRelativeToRaw(i2 - this.v);
        }
    }

    public int getValue() {
        return getPickedIndexRelativeToRaw() + this.v;
    }

    public String getContentByCurrValue() {
        return this.ac[getValue() - this.v];
    }

    public boolean getWrapSelectorWheel() {
        return this.N;
    }

    public boolean getWrapSelectorWheelAbsolutely() {
        return this.N && this.Q;
    }

    public void setHintText(String str) {
        if (!a(this.E, str)) {
            this.E = str;
            this.L = a(this.ab.getFontMetrics());
            this.g = a((CharSequence) this.E, this.ab);
            this.ah.sendEmptyMessage(3);
        }
    }

    public void setPickedIndexRelativeToMin(int i2) {
        if (i2 >= 0 && i2 < getOneRecycleSize()) {
            this.B = this.t + i2;
            b(i2, this.N && this.Q);
            postInvalidate();
        }
    }

    public void setTextSizeNormal(int i2) {
        if (this.d != i2) {
            this.d = i2;
            postInvalidate();
        }
    }

    public void setTextSizeSelected(int i2) {
        if (this.e != i2) {
            this.e = i2;
            postInvalidate();
        }
    }

    public void setNormalTextColor(int i2) {
        if (this.a != i2) {
            this.a = i2;
            postInvalidate();
        }
    }

    public void setSelectedTextColor(int i2) {
        if (this.b != i2) {
            this.b = i2;
            postInvalidate();
        }
    }

    public void setHintTextColor(int i2) {
        if (this.c != i2) {
            this.c = i2;
            this.ab.setColor(this.c);
            postInvalidate();
        }
    }

    public void setDividerColor(int i2) {
        if (this.m != i2) {
            this.m = i2;
            this.W.setColor(this.m);
            postInvalidate();
        }
    }

    public void setPickedIndexRelativeToRaw(int i2) {
        if (this.t > -1 && this.t <= i2 && i2 <= this.u) {
            this.B = i2;
            b(i2 - this.t, this.N && this.Q);
            postInvalidate();
        }
    }

    public int getPickedIndexRelativeToRaw() {
        if (this.aC == 0) {
            return c(this.aD);
        }
        if (this.aC < (-this.ax) / 2) {
            return c(this.aD + this.ax + this.aC);
        }
        return c(this.aD + this.aC);
    }

    public void setMinAndMaxShowIndex(int i2, int i3) {
        setMinAndMaxShowIndex(i2, i3, true);
    }

    public void setMinAndMaxShowIndex(int i2, int i3, boolean z2) {
        boolean z3;
        if (i2 > i3) {
            throw new IllegalArgumentException("minShowIndex should be less than maxShowIndex, minShowIndex is " + i2 + ", maxShowIndex is " + i3 + ".");
        } else if (this.ac == null) {
            throw new IllegalArgumentException("mDisplayedValues should not be null, you need to set mDisplayedValues first.");
        } else if (i2 < 0) {
            throw new IllegalArgumentException("minShowIndex should not be less than 0, now minShowIndex is " + i2);
        } else if (i2 > this.ac.length - 1) {
            throw new IllegalArgumentException("minShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is " + (this.ac.length - 1) + " minShowIndex is " + i2);
        } else if (i3 < 0) {
            throw new IllegalArgumentException("maxShowIndex should not be less than 0, now maxShowIndex is " + i3);
        } else if (i3 > this.ac.length - 1) {
            throw new IllegalArgumentException("maxShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is " + (this.ac.length - 1) + " maxShowIndex is " + i3);
        } else {
            this.t = i2;
            this.u = i3;
            if (z2) {
                this.B = this.t + 0;
                if (!this.N || !this.Q) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                b(0, z3);
                postInvalidate();
            }
        }
    }

    public void setFriction(float f2) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("you should set a a positive float friction, now friction is " + f2);
        }
        ViewConfiguration.get(getContext());
        this.I = ViewConfiguration.getScrollFriction() / f2;
    }

    /* access modifiers changed from: private */
    public void b(int i2) {
        if (this.am != i2) {
            this.am = i2;
            if (this.ak != null) {
                this.ak.a(this, i2);
            }
        }
    }

    public void setOnScrollListener(a aVar) {
        this.ak = aVar;
    }

    public void setOnValueChangedListener(b bVar) {
        this.aj = bVar;
    }

    public void setOnValueChangedListenerRelativeToRaw(d dVar) {
        this.ai = dVar;
    }

    public void setOnValueChangeListenerInScrolling(c cVar) {
        this.al = cVar;
    }

    public void setContentTextTypeface(Typeface typeface) {
        this.aa.setTypeface(typeface);
    }

    public void setHintTextTypeface(Typeface typeface) {
        this.ab.setTypeface(typeface);
    }

    /* access modifiers changed from: private */
    public int c(int i2) {
        boolean z2 = false;
        if (this.ax == 0) {
            return 0;
        }
        int i3 = (i2 / this.ax) + (this.q / 2);
        int oneRecycleSize = getOneRecycleSize();
        if (this.N && this.Q) {
            z2 = true;
        }
        int a2 = a(i3, oneRecycleSize, z2);
        if (a2 >= 0 && a2 < getOneRecycleSize()) {
            return a2 + this.t;
        }
        throw new IllegalArgumentException("getWillPickIndexByGlobalY illegal index : " + a2 + " getOneRecycleSize() : " + getOneRecycleSize() + " mWrapSelectorWheel : " + this.N);
    }

    private int a(int i2, int i3, boolean z2) {
        if (i3 <= 0) {
            return 0;
        }
        if (!z2) {
            return i2;
        }
        int i4 = i2 % i3;
        if (i4 < 0) {
            return i4 + i3;
        }
        return i4;
    }

    private void c() {
        b(getPickedIndexRelativeToRaw() - this.t, false);
        this.N = false;
        postInvalidate();
    }

    private void d() {
        this.r = this.q / 2;
        this.s = this.r + 1;
        this.ay = (float) ((this.r * this.aw) / this.q);
        this.az = (float) ((this.s * this.aw) / this.q);
        if (this.o < 0) {
            this.o = 0;
        }
        if (this.p < 0) {
            this.p = 0;
        }
        if (this.o + this.p != 0 && getPaddingLeft() + this.o >= (this.av - getPaddingRight()) - this.p) {
            int paddingLeft = (((getPaddingLeft() + this.o) + getPaddingRight()) + this.p) - this.av;
            this.o = (int) (((float) this.o) - ((((float) paddingLeft) * ((float) this.o)) / ((float) (this.o + this.p))));
            this.p = (int) (((float) this.p) - ((((float) paddingLeft) * ((float) this.p)) / ((float) (this.o + this.p))));
        }
    }

    private void e() {
        if (this.d > this.ax) {
            this.d = this.ax;
        }
        if (this.e > this.ax) {
            this.e = this.ax;
        }
        if (this.ab == null) {
            throw new IllegalArgumentException("mPaintHint should not be null.");
        }
        this.ab.setTextSize((float) this.f);
        this.L = a(this.ab.getFontMetrics());
        this.g = a((CharSequence) this.E, this.ab);
        if (this.aa == null) {
            throw new IllegalArgumentException("mPaintText should not be null.");
        }
        this.aa.setTextSize((float) this.e);
        this.K = a(this.aa.getFontMetrics());
        this.aa.setTextSize((float) this.d);
        this.J = a(this.aa.getFontMetrics());
    }

    private void f() {
        this.ap = 0;
        this.aq = (-this.q) * this.ax;
        if (this.ac != null) {
            this.ap = ((getOneRecycleSize() - (this.q / 2)) - 1) * this.ax;
            this.aq = (-(this.q / 2)) * this.ax;
        }
    }

    private int d(int i2) {
        if (this.N && this.Q) {
            return i2;
        }
        if (i2 < this.aq) {
            return this.aq;
        }
        if (i2 > this.ap) {
            return this.ap;
        }
        return i2;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.ax != 0) {
            if (this.V == null) {
                this.V = VelocityTracker.obtain();
            }
            this.V.addMovement(motionEvent);
            this.at = motionEvent.getY();
            switch (motionEvent.getAction()) {
                case 0:
                    this.au = true;
                    this.ag.removeMessages(1);
                    a();
                    this.as = this.at;
                    this.ar = (float) this.aD;
                    b(0);
                    getParent().requestDisallowInterceptTouchEvent(true);
                    break;
                case 1:
                    if (!this.au) {
                        VelocityTracker velocityTracker = this.V;
                        velocityTracker.computeCurrentVelocity(1000);
                        int yVelocity = (int) (velocityTracker.getYVelocity() * this.I);
                        if (Math.abs(yVelocity) > this.C) {
                            this.U.fling(0, this.aD, 0, -yVelocity, Integer.MIN_VALUE, Integer.MAX_VALUE, d(Integer.MIN_VALUE), d(Integer.MAX_VALUE));
                            invalidate();
                            b(2);
                        }
                        this.ag.sendMessageDelayed(h(1), 0);
                        h();
                        break;
                    } else {
                        a(motionEvent);
                        break;
                    }
                case 2:
                    float f2 = this.as - this.at;
                    if (!this.au || ((float) (-this.D)) >= f2 || f2 >= ((float) this.D)) {
                        this.au = false;
                        this.aD = d((int) (f2 + this.ar));
                        g();
                        invalidate();
                    }
                    b(1);
                    break;
                case 3:
                    this.ar = (float) this.aD;
                    a();
                    this.ag.sendMessageDelayed(h(1), 0);
                    break;
            }
        }
        return true;
    }

    private void a(MotionEvent motionEvent) {
        float y2 = motionEvent.getY();
        int i2 = 0;
        while (i2 < this.q) {
            if (((float) (this.ax * i2)) > y2 || y2 >= ((float) (this.ax * (i2 + 1)))) {
                i2++;
            } else {
                e(i2);
                return;
            }
        }
    }

    private void e(int i2) {
        if (i2 >= 0 && i2 < this.q) {
            a(i2 - (this.q / 2));
        }
    }

    private float a(FontMetrics fontMetrics) {
        if (fontMetrics == null) {
            return 0.0f;
        }
        return Math.abs(fontMetrics.top + fontMetrics.bottom) / 2.0f;
    }

    private void b(int i2, boolean z2) {
        this.aB = i2 - ((this.q - 1) / 2);
        this.aB = a(this.aB, getOneRecycleSize(), z2);
        if (this.ax == 0) {
            this.O = true;
            return;
        }
        this.aD = this.aB * this.ax;
        this.an = this.aB + (this.q / 2);
        this.an %= getOneRecycleSize();
        if (this.an < 0) {
            this.an += getOneRecycleSize();
        }
        this.ao = this.an;
        g();
    }

    public void computeScroll() {
        if (this.ax != 0 && this.U.computeScrollOffset()) {
            this.aD = this.U.getCurrY();
            g();
            postInvalidate();
        }
    }

    private void g() {
        this.aB = (int) Math.floor((double) (((float) this.aD) / ((float) this.ax)));
        this.aC = -(this.aD - (this.aB * this.ax));
        if (this.al != null) {
            if ((-this.aC) > this.ax / 2) {
                this.ao = this.aB + 1 + (this.q / 2);
            } else {
                this.ao = this.aB + (this.q / 2);
            }
            this.ao %= getOneRecycleSize();
            if (this.ao < 0) {
                this.ao += getOneRecycleSize();
            }
            if (this.an != this.ao) {
                a(this.ao, this.an);
            }
            this.an = this.ao;
        }
    }

    private void h() {
        if (this.V != null) {
            this.V.clear();
            this.V.recycle();
            this.V = null;
        }
    }

    private void a(boolean z2) {
        i();
        j();
        if (!z2) {
            return;
        }
        if (this.aE == Integer.MIN_VALUE || this.aF == Integer.MIN_VALUE) {
            this.ah.sendEmptyMessage(3);
        }
    }

    private int f(int i2) {
        int i3 = 0;
        int mode = MeasureSpec.getMode(i2);
        this.aE = mode;
        int size = MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        int i4 = Math.max(this.g, this.h) == 0 ? 0 : this.j;
        if (Math.max(this.g, this.h) != 0) {
            i3 = this.i;
        }
        int max = Math.max(this.z, ((i4 + i3 + Math.max(this.g, this.h) + (this.l * 2)) * 2) + Math.max(this.x, this.A)) + getPaddingLeft() + getPaddingRight();
        if (mode == Integer.MIN_VALUE) {
            return Math.min(max, size);
        }
        return max;
    }

    private int g(int i2) {
        int mode = MeasureSpec.getMode(i2);
        this.aF = mode;
        int size = MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        int paddingTop = (this.q * (this.y + (this.k * 2))) + getPaddingTop() + getPaddingBottom();
        return mode == Integer.MIN_VALUE ? Math.min(paddingTop, size) : paddingTop;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas);
        b(canvas);
        c(canvas);
    }

    private void a(Canvas canvas) {
        boolean z2;
        int i2;
        float f2;
        float f3;
        float f4 = 0.0f;
        for (int i3 = 0; i3 < this.q + 1; i3++) {
            float f5 = (float) (this.aC + (this.ax * i3));
            int i4 = this.aB + i3;
            int oneRecycleSize = getOneRecycleSize();
            if (!this.N || !this.Q) {
                z2 = false;
            } else {
                z2 = true;
            }
            int a2 = a(i4, oneRecycleSize, z2);
            if (i3 == this.q / 2) {
                float f6 = ((float) (this.ax + this.aC)) / ((float) this.ax);
                i2 = a(f6, this.a, this.b);
                f2 = a(f6, (float) this.d, (float) this.e);
                f4 = f6;
                f3 = a(f6, this.J, this.K);
            } else if (i3 == (this.q / 2) + 1) {
                i2 = a(1.0f - f4, this.a, this.b);
                f2 = a(1.0f - f4, (float) this.d, (float) this.e);
                f3 = a(1.0f - f4, this.J, this.K);
            } else {
                i2 = this.a;
                f2 = (float) this.d;
                f3 = this.J;
            }
            this.aa.setColor(i2);
            this.aa.setTextSize(f2);
            if (a2 >= 0 && a2 < getOneRecycleSize()) {
                CharSequence charSequence = this.ac[this.t + a2];
                if (this.F != null) {
                    charSequence = TextUtils.ellipsize(charSequence, this.aa, (float) (getWidth() - (this.l * 2)), getEllipsizeType());
                }
                canvas.drawText(charSequence.toString(), this.aA, f3 + f5 + ((float) (this.ax / 2)), this.aa);
            } else if (!TextUtils.isEmpty(this.G)) {
                canvas.drawText(this.G, this.aA, f3 + f5 + ((float) (this.ax / 2)), this.aa);
            }
        }
    }

    private TruncateAt getEllipsizeType() {
        String str = this.F;
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1074341483:
                if (str.equals("middle")) {
                    c2 = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c2 = 2;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    c2 = 0;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return TruncateAt.START;
            case 1:
                return TruncateAt.MIDDLE;
            case 2:
                return TruncateAt.END;
            default:
                throw new IllegalArgumentException("Illegal text ellipsize type.");
        }
    }

    private void b(Canvas canvas) {
        if (this.M) {
            canvas.drawLine((float) (getPaddingLeft() + this.o), this.ay, (float) ((this.av - getPaddingRight()) - this.p), this.ay, this.W);
            canvas.drawLine((float) (getPaddingLeft() + this.o), this.az, (float) ((this.av - getPaddingRight()) - this.p), this.az, this.W);
        }
    }

    private void c(Canvas canvas) {
        if (!TextUtils.isEmpty(this.E)) {
            canvas.drawText(this.E, this.aA + ((float) ((this.x + this.g) / 2)) + ((float) this.i), ((this.ay + this.az) / 2.0f) + this.L, this.ab);
        }
    }

    private void i() {
        float textSize = this.aa.getTextSize();
        this.aa.setTextSize((float) this.e);
        this.x = a((CharSequence[]) this.ac, (Paint) this.aa);
        this.z = a(this.ad, (Paint) this.aa);
        this.A = a(this.ae, (Paint) this.aa);
        this.aa.setTextSize((float) this.f);
        this.h = a((CharSequence) this.H, (Paint) this.aa);
        this.aa.setTextSize(textSize);
    }

    private int a(CharSequence[] charSequenceArr, Paint paint) {
        int i2 = 0;
        if (charSequenceArr != null) {
            for (CharSequence charSequence : charSequenceArr) {
                if (charSequence != null) {
                    i2 = Math.max(a(charSequence, paint), i2);
                }
            }
        }
        return i2;
    }

    private int a(CharSequence charSequence, Paint paint) {
        if (!TextUtils.isEmpty(charSequence)) {
            return (int) (paint.measureText(charSequence.toString()) + 0.5f);
        }
        return 0;
    }

    private void j() {
        float textSize = this.aa.getTextSize();
        this.aa.setTextSize((float) this.e);
        this.y = (int) (((double) (this.aa.getFontMetrics().bottom - this.aa.getFontMetrics().top)) + 0.5d);
        this.aa.setTextSize(textSize);
    }

    private void b(String[] strArr) {
        this.ac = strArr;
        n();
    }

    private void k() {
        m();
        n();
        this.t = 0;
        this.u = this.ac.length - 1;
    }

    private void l() {
        m();
        n();
        if (this.t == -1) {
            this.t = 0;
        }
        if (this.u == -1) {
            this.u = this.ac.length - 1;
        }
        setMinAndMaxShowIndex(this.t, this.u, false);
    }

    private void m() {
        if (this.ac == null) {
            this.ac = new String[1];
            this.ac[0] = "0";
        }
    }

    private void n() {
        this.Q = this.ac.length > this.q;
    }

    private void o() {
        if (this.ag != null) {
            this.ag.removeMessages(1);
        }
    }

    public void a() {
        if (this.U != null && !this.U.isFinished()) {
            this.U.startScroll(0, this.U.getCurrY(), 0, 0, 1);
            this.U.abortAnimation();
            postInvalidate();
        }
    }

    private Message h(int i2) {
        return a(i2, 0, 0, (Object) null);
    }

    /* access modifiers changed from: private */
    public Message a(int i2, int i3, int i4, Object obj) {
        Message obtain = Message.obtain();
        obtain.what = i2;
        obtain.arg1 = i3;
        obtain.arg2 = i4;
        obtain.obj = obj;
        return obtain;
    }

    private boolean a(String str, String str2) {
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    private int a(Context context, float f2) {
        return (int) ((context.getResources().getDisplayMetrics().scaledDensity * f2) + 0.5f);
    }

    private int b(Context context, float f2) {
        return (int) ((context.getResources().getDisplayMetrics().density * f2) + 0.5f);
    }

    private int a(float f2, int i2, int i3) {
        int i4 = (i2 & ViewCompat.MEASURED_STATE_MASK) >>> 24;
        int i5 = (i2 & 16711680) >>> 16;
        int i6 = (i2 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8;
        int i7 = (i2 & 255) >>> 0;
        return (((int) ((((float) (((-16777216 & i3) >>> 24) - i4)) * f2) + ((float) i4))) << 24) | (((int) ((((float) (((16711680 & i3) >>> 16) - i5)) * f2) + ((float) i5))) << 16) | (((int) ((((float) (((65280 & i3) >>> 8) - i6)) * f2) + ((float) i6))) << 8) | ((int) ((((float) (((i3 & 255) >>> 0) - i7)) * f2) + ((float) i7)));
    }

    private float a(float f2, float f3, float f4) {
        return ((f4 - f3) * f2) + f3;
    }

    private String[] a(CharSequence[] charSequenceArr) {
        if (charSequenceArr == null) {
            return null;
        }
        String[] strArr = new String[charSequenceArr.length];
        for (int i2 = 0; i2 < charSequenceArr.length; i2++) {
            strArr[i2] = charSequenceArr[i2].toString();
        }
        return strArr;
    }
}
