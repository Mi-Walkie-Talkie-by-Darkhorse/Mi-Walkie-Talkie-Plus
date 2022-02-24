package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.widget.i;
import com.ifengyu.intercom.R$styleable;
import com.just.agentweb.WebIndicator;
import org.bouncycastle.crypto.tls.CipherSuite;

/* loaded from: classes2.dex */
public class NumberPickerView extends View {
    private float A0;
    private float B0;
    private String E;
    private String F;
    private String G;
    private String H;
    private i U;
    private VelocityTracker V;
    private String[] d0;
    private CharSequence[] e0;
    private CharSequence[] f0;
    private HandlerThread g0;
    private Handler h0;
    private Handler i0;
    private f j0;
    private d k0;
    private c l0;
    private e m0;
    private int o0;
    private int p0;
    private int q0;
    private int r0;
    private int w0;
    private int x0;
    private int y0;
    private float z0;

    /* renamed from: a  reason: collision with root package name */
    private int f7060a = -13421773;

    /* renamed from: b  reason: collision with root package name */
    private int f7061b = -16746753;

    /* renamed from: c  reason: collision with root package name */
    private int f7062c = -16746753;
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
    private int A = 0;
    private int B = 0;
    private int C = CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA;
    private int D = 8;
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
    private boolean T = true;
    private Paint W = new Paint();
    private TextPaint b0 = new TextPaint();
    private Paint c0 = new Paint();
    private int n0 = 0;
    private float s0 = 0.0f;
    private float t0 = 0.0f;
    private float u0 = 0.0f;
    private boolean v0 = false;
    private int C0 = 0;
    private int D0 = 0;
    private int E0 = 0;
    private int F0 = 0;
    private int G0 = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i;
            int i2 = message.what;
            if (i2 == 1) {
                int i3 = 0;
                if (!NumberPickerView.this.U.d()) {
                    if (NumberPickerView.this.n0 == 0) {
                        NumberPickerView.this.g(1);
                    }
                    NumberPickerView.this.h0.sendMessageDelayed(NumberPickerView.this.a(1, 0, 0, message.obj), 32L);
                    return;
                }
                if (NumberPickerView.this.D0 != 0) {
                    if (NumberPickerView.this.n0 == 0) {
                        NumberPickerView.this.g(1);
                    }
                    if (NumberPickerView.this.D0 < (-NumberPickerView.this.y0) / 2) {
                        i3 = (int) (((NumberPickerView.this.y0 + NumberPickerView.this.D0) * 300.0f) / NumberPickerView.this.y0);
                        NumberPickerView.this.U.a(0, NumberPickerView.this.E0, 0, NumberPickerView.this.D0 + NumberPickerView.this.y0, i3 * 3);
                        NumberPickerView numberPickerView = NumberPickerView.this;
                        i = numberPickerView.c(numberPickerView.E0 + NumberPickerView.this.y0 + NumberPickerView.this.D0);
                    } else {
                        i3 = (int) (((-NumberPickerView.this.D0) * 300.0f) / NumberPickerView.this.y0);
                        NumberPickerView.this.U.a(0, NumberPickerView.this.E0, 0, NumberPickerView.this.D0, i3 * 3);
                        NumberPickerView numberPickerView2 = NumberPickerView.this;
                        i = numberPickerView2.c(numberPickerView2.E0 + NumberPickerView.this.D0);
                    }
                    NumberPickerView.this.postInvalidate();
                } else {
                    NumberPickerView.this.g(0);
                    NumberPickerView numberPickerView3 = NumberPickerView.this;
                    i = numberPickerView3.c(numberPickerView3.E0);
                }
                NumberPickerView numberPickerView4 = NumberPickerView.this;
                Message a2 = numberPickerView4.a(2, numberPickerView4.B, i, message.obj);
                if (NumberPickerView.this.T) {
                    NumberPickerView.this.i0.sendMessageDelayed(a2, i3 * 2);
                } else {
                    NumberPickerView.this.h0.sendMessageDelayed(a2, i3 * 2);
                }
            } else if (i2 == 2) {
                NumberPickerView.this.a(message.arg1, message.arg2, message.obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 2) {
                NumberPickerView.this.a(message.arg1, message.arg2, message.obj);
            } else if (i == 3) {
                NumberPickerView.this.requestLayout();
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(NumberPickerView numberPickerView, int i);
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(NumberPickerView numberPickerView, int i, int i2);
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a(NumberPickerView numberPickerView, int i, int i2);
    }

    /* loaded from: classes2.dex */
    public interface f {
        void a(NumberPickerView numberPickerView, int i, int i2, String[] strArr);
    }

    public NumberPickerView(Context context) {
        super(context);
        a(context);
    }

    private float a(float f2, float f3, float f4) {
        return f3 + ((f4 - f3) * f2);
    }

    private int a(float f2, int i, int i2) {
        int i3 = (i & (-16777216)) >>> 24;
        int i4 = (i & 16711680) >>> 16;
        int i5 = (i & 65280) >>> 8;
        int i6 = (i & 255) >>> 0;
        return ((int) (i6 + ((((i2 & 255) >>> 0) - i6) * f2))) | (((int) (i3 + (((((-16777216) & i2) >>> 24) - i3) * f2))) << 24) | (((int) (i4 + ((((16711680 & i2) >>> 16) - i4) * f2))) << 16) | (((int) (i5 + ((((65280 & i2) >>> 8) - i5) * f2))) << 8);
    }

    private TextUtils.TruncateAt getEllipsizeType() {
        char c2;
        String str = this.F;
        int hashCode = str.hashCode();
        if (hashCode == -1074341483) {
            if (str.equals("middle")) {
                c2 = 1;
            }
            c2 = 65535;
        } else if (hashCode != 100571) {
            if (hashCode == 109757538 && str.equals("start")) {
                c2 = 0;
            }
            c2 = 65535;
        } else {
            if (str.equals("end")) {
                c2 = 2;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            return TextUtils.TruncateAt.START;
        }
        if (c2 == 1) {
            return TextUtils.TruncateAt.MIDDLE;
        }
        if (c2 == 2) {
            return TextUtils.TruncateAt.END;
        }
        throw new IllegalArgumentException("Illegal text ellipsize type.");
    }

    private void j() {
        float textSize = this.b0.getTextSize();
        this.b0.setTextSize(this.e);
        this.y = (int) ((this.b0.getFontMetrics().bottom - this.b0.getFontMetrics().top) + 0.5d);
        this.b0.setTextSize(textSize);
    }

    private void k() {
        float textSize = this.b0.getTextSize();
        this.b0.setTextSize(this.e);
        this.x = a(this.d0, this.b0);
        this.z = a(this.e0, this.b0);
        this.A = a(this.f0, this.b0);
        this.b0.setTextSize(this.f);
        this.h = a(this.H, this.b0);
        this.b0.setTextSize(textSize);
    }

    private void l() {
        this.q0 = 0;
        this.r0 = (-this.q) * this.y0;
        if (this.d0 != null) {
            int oneRecycleSize = getOneRecycleSize();
            int i = this.q;
            int i2 = this.y0;
            this.q0 = ((oneRecycleSize - (i / 2)) - 1) * i2;
            this.r0 = (-(i / 2)) * i2;
        }
    }

    private void m() {
        c();
        o();
        this.t = 0;
        this.u = this.d0.length - 1;
    }

    private void n() {
        c();
        o();
        if (this.t == -1) {
            this.t = 0;
        }
        if (this.u == -1) {
            this.u = this.d0.length - 1;
        }
        setMinAndMaxShowIndex(this.t, this.u, false);
    }

    private void o() {
        this.Q = this.d0.length > this.q;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.y0 != 0 && this.U.b()) {
            this.E0 = this.U.c();
            b();
            postInvalidate();
        }
    }

    public String getContentByCurrValue() {
        return this.d0[getValue() - this.v];
    }

    public String[] getDisplayedValues() {
        return this.d0;
    }

    public int getMaxValue() {
        return this.w;
    }

    public int getMinValue() {
        return this.v;
    }

    public int getOneRecycleSize() {
        return (this.u - this.t) + 1;
    }

    public int getPickedIndexRelativeToRaw() {
        int i = this.D0;
        if (i == 0) {
            return c(this.E0);
        }
        int i2 = this.y0;
        if (i < (-i2) / 2) {
            return c(this.E0 + i2 + i);
        }
        return c(this.E0 + i);
    }

    public int getRawContentSize() {
        String[] strArr = this.d0;
        if (strArr != null) {
            return strArr.length;
        }
        return 0;
    }

    public int getValue() {
        return getPickedIndexRelativeToRaw() + this.v;
    }

    public boolean getWrapSelectorWheel() {
        return this.N;
    }

    public boolean getWrapSelectorWheelAbsolutely() {
        return this.N && this.Q;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        HandlerThread handlerThread = this.g0;
        if (handlerThread == null || !handlerThread.isAlive()) {
            d();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.g0.quit();
        if (this.y0 != 0) {
            if (!this.U.d()) {
                this.U.a();
                this.E0 = this.U.c();
                b();
                int i = this.D0;
                if (i != 0) {
                    int i2 = this.y0;
                    if (i < (-i2) / 2) {
                        this.E0 = this.E0 + i2 + i;
                    } else {
                        this.E0 += i;
                    }
                    b();
                }
                g(0);
            }
            int c2 = c(this.E0);
            int i3 = this.B;
            if (c2 != i3 && this.S) {
                try {
                    if (this.k0 != null) {
                        this.k0.a(this, i3 + this.v, this.v + c2);
                    }
                    if (this.j0 != null) {
                        this.j0.a(this, this.B, c2, this.d0);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            this.B = c2;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas);
        c(canvas);
        b(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        a(false);
        setMeasuredDimension(f(i), e(i2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        super.onSizeChanged(i, i2, i3, i4);
        this.w0 = i;
        this.x0 = i2;
        this.y0 = i2 / this.q;
        this.B0 = ((i + getPaddingLeft()) - getPaddingRight()) / 2.0f;
        boolean z = false;
        if (getOneRecycleSize() > 1) {
            if (this.P) {
                i5 = getValue() - this.v;
            } else if (this.O) {
                i5 = this.C0 + ((this.q - 1) / 2);
            }
            if (this.N && this.Q) {
                z = true;
            }
            a(i5, z);
            i();
            l();
            h();
            this.P = true;
        }
        i5 = 0;
        if (this.N) {
            z = true;
        }
        a(i5, z);
        i();
        l();
        h();
        this.P = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
        if (r1 < r3) goto L_0x006e;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.ui.widget.view.NumberPickerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setContentTextTypeface(Typeface typeface) {
        this.b0.setTypeface(typeface);
    }

    public void setDisplayedValues(String[] strArr, boolean z) {
        setDisplayedValuesAndPickedIndex(strArr, 0, z);
    }

    public void setDisplayedValuesAndPickedIndex(String[] strArr, int i, boolean z) {
        a();
        if (strArr == null) {
            throw new IllegalArgumentException("newDisplayedValues should not be null.");
        } else if (i >= 0) {
            b(strArr);
            a(true);
            l();
            m();
            this.B = this.t + i;
            a(i, this.N && this.Q);
            if (z) {
                this.h0.sendMessageDelayed(b(1), 0L);
                postInvalidate();
            }
        } else {
            throw new IllegalArgumentException("pickedIndex should not be negative, now pickedIndex is " + i);
        }
    }

    public void setDividerColor(int i) {
        if (this.m != i) {
            this.m = i;
            this.W.setColor(i);
            postInvalidate();
        }
    }

    public void setFriction(float f2) {
        if (f2 > 0.0f) {
            ViewConfiguration.get(getContext());
            this.I = ViewConfiguration.getScrollFriction() / f2;
            return;
        }
        throw new IllegalArgumentException("you should set a a positive float friction, now friction is " + f2);
    }

    public void setHintText(String str) {
        if (!a(this.E, str)) {
            this.E = str;
            this.L = a(this.c0.getFontMetrics());
            this.g = a(this.E, this.c0);
            this.i0.sendEmptyMessage(3);
        }
    }

    public void setHintTextColor(int i) {
        if (this.f7062c != i) {
            this.f7062c = i;
            this.c0.setColor(i);
            postInvalidate();
        }
    }

    public void setHintTextTypeface(Typeface typeface) {
        this.c0.setTypeface(typeface);
    }

    public void setMaxValue(int i) {
        String[] strArr = this.d0;
        if (strArr != null) {
            int i2 = this.v;
            if ((i - i2) + 1 <= strArr.length) {
                this.w = i;
                int i3 = this.t;
                int i4 = (i - i2) + i3;
                this.u = i4;
                setMinAndMaxShowIndex(i3, i4);
                l();
                return;
            }
            throw new IllegalArgumentException("(maxValue - mMinValue + 1) should not be greater than mDisplayedValues.length now  (maxValue - mMinValue + 1) is " + ((i - this.v) + 1) + " and mDisplayedValues.length is " + this.d0.length);
        }
        throw new NullPointerException("mDisplayedValues should not be null");
    }

    public void setMinAndMaxShowIndex(int i, int i2) {
        setMinAndMaxShowIndex(i, i2, true);
    }

    public void setMinValue(int i) {
        this.v = i;
        this.t = 0;
        l();
    }

    public void setNormalTextColor(int i) {
        if (this.f7060a != i) {
            this.f7060a = i;
            postInvalidate();
        }
    }

    public void setOnScrollListener(c cVar) {
        this.l0 = cVar;
    }

    public void setOnValueChangeListenerInScrolling(e eVar) {
        this.m0 = eVar;
    }

    public void setOnValueChangedListener(d dVar) {
        this.k0 = dVar;
    }

    public void setOnValueChangedListenerRelativeToRaw(f fVar) {
        this.j0 = fVar;
    }

    public void setPickedIndexRelativeToMin(int i) {
        if (i >= 0 && i < getOneRecycleSize()) {
            this.B = this.t + i;
            a(i, this.N && this.Q);
            postInvalidate();
        }
    }

    public void setPickedIndexRelativeToRaw(int i) {
        int i2 = this.t;
        if (i2 > -1 && i2 <= i && i <= this.u) {
            this.B = i;
            a(i - i2, this.N && this.Q);
            postInvalidate();
        }
    }

    public void setSelectedTextColor(int i) {
        if (this.f7061b != i) {
            this.f7061b = i;
            postInvalidate();
        }
    }

    public void setTextSizeNormal(int i) {
        if (this.d != i) {
            this.d = i;
            postInvalidate();
        }
    }

    public void setTextSizeSelected(int i) {
        if (this.e != i) {
            this.e = i;
            postInvalidate();
        }
    }

    public void setValue(int i) {
        int i2 = this.v;
        if (i < i2) {
            throw new IllegalArgumentException("should not set a value less than mMinValue, value is " + i);
        } else if (i <= this.w) {
            setPickedIndexRelativeToRaw(i - i2);
        } else {
            throw new IllegalArgumentException("should not set a value greater than mMaxValue, value is " + i);
        }
    }

    public void setWrapSelectorWheel(boolean z) {
        if (this.N == z) {
            return;
        }
        if (z) {
            this.N = z;
            o();
            postInvalidate();
        } else if (this.n0 == 0) {
            e();
        } else {
            this.R = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(int i) {
        int i2 = this.y0;
        boolean z = false;
        if (i2 == 0) {
            return 0;
        }
        int i3 = (i / i2) + (this.q / 2);
        int oneRecycleSize = getOneRecycleSize();
        if (this.N && this.Q) {
            z = true;
        }
        int a2 = a(i3, oneRecycleSize, z);
        if (a2 >= 0 && a2 < getOneRecycleSize()) {
            return a2 + this.t;
        }
        throw new IllegalArgumentException("getWillPickIndexByGlobalY illegal index : " + a2 + " getOneRecycleSize() : " + getOneRecycleSize() + " mWrapSelectorWheel : " + this.N);
    }

    private void d() {
        HandlerThread handlerThread = new HandlerThread("HandlerThread-For-Refreshing");
        this.g0 = handlerThread;
        handlerThread.start();
        this.h0 = new a(this.g0.getLooper());
        this.i0 = new b();
    }

    private void e() {
        a(getPickedIndexRelativeToRaw() - this.t, false);
        this.N = false;
        postInvalidate();
    }

    private void f() {
        VelocityTracker velocityTracker = this.V;
        if (velocityTracker != null) {
            velocityTracker.clear();
            this.V.recycle();
            this.V = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i) {
        if (this.n0 != i) {
            this.n0 = i;
            c cVar = this.l0;
            if (cVar != null) {
                cVar.a(this, i);
            }
        }
    }

    private void h(int i) {
        b(i, true);
    }

    private void i() {
        int i = this.d;
        int i2 = this.y0;
        if (i > i2) {
            this.d = i2;
        }
        int i3 = this.e;
        int i4 = this.y0;
        if (i3 > i4) {
            this.e = i4;
        }
        Paint paint = this.c0;
        if (paint != null) {
            paint.setTextSize(this.f);
            this.L = a(this.c0.getFontMetrics());
            this.g = a(this.E, this.c0);
            TextPaint textPaint = this.b0;
            if (textPaint != null) {
                textPaint.setTextSize(this.e);
                this.K = a(this.b0.getFontMetrics());
                this.b0.setTextSize(this.d);
                this.J = a(this.b0.getFontMetrics());
                return;
            }
            throw new IllegalArgumentException("mPaintText should not be null.");
        }
        throw new IllegalArgumentException("mPaintHint should not be null.");
    }

    public void setDisplayedValues(String[] strArr) {
        g();
        a();
        if (strArr != null) {
            boolean z = true;
            if ((this.w - this.v) + 1 <= strArr.length) {
                b(strArr);
                a(true);
                this.B = this.t + 0;
                if (!this.N || !this.Q) {
                    z = false;
                }
                a(0, z);
                postInvalidate();
                this.i0.sendEmptyMessage(3);
                return;
            }
            throw new IllegalArgumentException("mMaxValue - mMinValue + 1 should not be greater than mDisplayedValues.length, now ((mMaxValue - mMinValue + 1) is " + ((this.w - this.v) + 1) + " newDisplayedValues.length is " + strArr.length + ", you need to set MaxValue and MinValue before setDisplayedValues(String[])");
        }
        throw new IllegalArgumentException("newDisplayedValues should not be null.");
    }

    public void setMinAndMaxShowIndex(int i, int i2, boolean z) {
        if (i <= i2) {
            String[] strArr = this.d0;
            if (strArr == null) {
                throw new IllegalArgumentException("mDisplayedValues should not be null, you need to set mDisplayedValues first.");
            } else if (i >= 0) {
                boolean z2 = true;
                if (i > strArr.length - 1) {
                    throw new IllegalArgumentException("minShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is " + (this.d0.length - 1) + " minShowIndex is " + i);
                } else if (i2 < 0) {
                    throw new IllegalArgumentException("maxShowIndex should not be less than 0, now maxShowIndex is " + i2);
                } else if (i2 <= strArr.length - 1) {
                    this.t = i;
                    this.u = i2;
                    if (z) {
                        this.B = i + 0;
                        if (!this.N || !this.Q) {
                            z2 = false;
                        }
                        a(0, z2);
                        postInvalidate();
                    }
                } else {
                    throw new IllegalArgumentException("maxShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is " + (this.d0.length - 1) + " maxShowIndex is " + i2);
                }
            } else {
                throw new IllegalArgumentException("minShowIndex should not be less than 0, now minShowIndex is " + i);
            }
        } else {
            throw new IllegalArgumentException("minShowIndex should be less than maxShowIndex, minShowIndex is " + i + ", maxShowIndex is " + i2 + ".");
        }
    }

    private void b(int i, boolean z) {
        int i2;
        int pickedIndexRelativeToRaw;
        int pickedIndexRelativeToRaw2;
        int i3;
        if ((!this.N || !this.Q) && ((pickedIndexRelativeToRaw2 = (pickedIndexRelativeToRaw = getPickedIndexRelativeToRaw()) + i) > (i3 = this.u) || pickedIndexRelativeToRaw2 < (i3 = this.t))) {
            i = i3 - pickedIndexRelativeToRaw;
        }
        int i4 = this.D0;
        int i5 = this.y0;
        if (i4 < (-i5) / 2) {
            i4 = i5 + i4;
            int i6 = (int) (((i4 + i5) * 300.0f) / i5);
            i2 = i < 0 ? (-i6) - (i * 300) : i6 + (i * 300);
        } else {
            int i7 = (int) (((-i4) * 300.0f) / i5);
            i2 = i < 0 ? i7 - (i * 300) : i7 + (i * 300);
        }
        int i8 = i4 + (i * this.y0);
        if (i2 < 300) {
            i2 = 300;
        }
        if (i2 > 600) {
            i2 = WebIndicator.DO_END_ANIMATION_DURATION;
        }
        this.U.a(0, this.E0, 0, i8, i2);
        if (z) {
            this.h0.sendMessageDelayed(b(1), i2 / 4);
        } else {
            this.h0.sendMessageDelayed(a(1, 0, 0, new Boolean(z)), i2 / 4);
        }
        postInvalidate();
    }

    private void h() {
        int i;
        int i2;
        int i3;
        int i4 = this.q / 2;
        this.r = i4;
        this.s = i4 + 1;
        int i5 = this.x0;
        this.z0 = (i4 * i5) / i;
        this.A0 = (i2 * i5) / i;
        if (this.o < 0) {
            this.o = 0;
        }
        if (this.p < 0) {
            this.p = 0;
        }
        if (this.o + this.p != 0 && getPaddingLeft() + this.o >= (this.w0 - getPaddingRight()) - this.p) {
            int paddingLeft = getPaddingLeft() + this.o + getPaddingRight();
            int i6 = this.p;
            int i7 = (paddingLeft + i6) - this.w0;
            int i8 = this.o;
            float f2 = i7;
            this.o = (int) (i8 - ((i8 * f2) / (i8 + i6)));
            this.p = (int) (i6 - ((f2 * i6) / (i3 + i6)));
        }
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.NumberPickerView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 17) {
                    this.q = obtainStyledAttributes.getInt(index, 3);
                } else if (index == 3) {
                    this.m = obtainStyledAttributes.getColor(index, -695533);
                } else if (index == 4) {
                    this.n = obtainStyledAttributes.getDimensionPixelSize(index, 2);
                } else if (index == 5) {
                    this.o = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 6) {
                    this.p = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 19) {
                    this.d0 = a(obtainStyledAttributes.getTextArray(index));
                } else if (index == 21) {
                    this.f7060a = obtainStyledAttributes.getColor(index, -13421773);
                } else if (index == 22) {
                    this.f7061b = obtainStyledAttributes.getColor(index, -16746753);
                } else if (index == 20) {
                    this.f7062c = obtainStyledAttributes.getColor(index, -16746753);
                } else if (index == 25) {
                    this.d = obtainStyledAttributes.getDimensionPixelSize(index, b(context, 14.0f));
                } else if (index == 26) {
                    this.e = obtainStyledAttributes.getDimensionPixelSize(index, b(context, 16.0f));
                } else if (index == 24) {
                    this.f = obtainStyledAttributes.getDimensionPixelSize(index, b(context, 14.0f));
                } else if (index == 14) {
                    this.t = obtainStyledAttributes.getInteger(index, 0);
                } else if (index == 13) {
                    this.u = obtainStyledAttributes.getInteger(index, 0);
                } else if (index == 27) {
                    this.N = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 18) {
                    this.M = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 8) {
                    this.E = obtainStyledAttributes.getString(index);
                } else if (index == 0) {
                    this.H = obtainStyledAttributes.getString(index);
                } else if (index == 7) {
                    this.G = obtainStyledAttributes.getString(index);
                } else if (index == 12) {
                    this.i = obtainStyledAttributes.getDimensionPixelSize(index, a(context, 8.0f));
                } else if (index == 11) {
                    this.j = obtainStyledAttributes.getDimensionPixelSize(index, a(context, 8.0f));
                } else if (index == 10) {
                    this.k = obtainStyledAttributes.getDimensionPixelSize(index, a(context, 2.0f));
                } else if (index == 9) {
                    this.l = obtainStyledAttributes.getDimensionPixelSize(index, a(context, 5.0f));
                } else if (index == 1) {
                    this.e0 = obtainStyledAttributes.getTextArray(index);
                } else if (index == 2) {
                    this.f0 = obtainStyledAttributes.getTextArray(index);
                } else if (index == 16) {
                    this.S = obtainStyledAttributes.getBoolean(index, false);
                } else if (index == 15) {
                    this.T = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 23) {
                    this.F = obtainStyledAttributes.getString(index);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    private int d(int i) {
        if (this.N && this.Q) {
            return i;
        }
        int i2 = this.r0;
        return (i >= i2 && i <= (i2 = this.q0)) ? i : i2;
    }

    private int e(int i) {
        int mode = View.MeasureSpec.getMode(i);
        this.G0 = mode;
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int paddingTop = getPaddingTop() + getPaddingBottom() + (this.q * (this.y + (this.k * 2)));
        return mode == Integer.MIN_VALUE ? Math.min(paddingTop, size) : paddingTop;
    }

    private int f(int i) {
        int mode = View.MeasureSpec.getMode(i);
        this.F0 = mode;
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int i2 = 0;
        int i3 = Math.max(this.g, this.h) == 0 ? 0 : this.j;
        if (Math.max(this.g, this.h) != 0) {
            i2 = this.i;
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight() + Math.max(this.z, Math.max(this.x, this.A) + ((i2 + Math.max(this.g, this.h) + i3 + (this.l * 2)) * 2));
        return mode == Integer.MIN_VALUE ? Math.min(paddingLeft, size) : paddingLeft;
    }

    private void g() {
        Handler handler = this.h0;
        if (handler != null) {
            handler.removeMessages(1);
        }
    }

    private void c(Canvas canvas) {
        if (this.M) {
            canvas.drawLine(getPaddingLeft() + this.o, this.z0, (this.w0 - getPaddingRight()) - this.p, this.z0, this.W);
            canvas.drawLine(getPaddingLeft() + this.o, this.A0, (this.w0 - getPaddingRight()) - this.p, this.A0, this.W);
        }
    }

    private void b() {
        int floor = (int) Math.floor(this.E0 / this.y0);
        this.C0 = floor;
        int i = this.E0;
        int i2 = this.y0;
        int i3 = -(i - (floor * i2));
        this.D0 = i3;
        if (this.m0 != null) {
            if ((-i3) > i2 / 2) {
                this.p0 = floor + 1 + (this.q / 2);
            } else {
                this.p0 = floor + (this.q / 2);
            }
            int oneRecycleSize = this.p0 % getOneRecycleSize();
            this.p0 = oneRecycleSize;
            if (oneRecycleSize < 0) {
                this.p0 = oneRecycleSize + getOneRecycleSize();
            }
            int i4 = this.o0;
            int i5 = this.p0;
            if (i4 != i5) {
                a(i5, i4);
            }
            this.o0 = this.p0;
        }
    }

    private void c() {
        if (this.d0 == null) {
            this.d0 = r0;
            String[] strArr = {"0"};
        }
    }

    private void b(Canvas canvas) {
        if (!TextUtils.isEmpty(this.E)) {
            canvas.drawText(this.E, this.B0 + ((this.x + this.g) / 2) + this.i, ((this.z0 + this.A0) / 2.0f) + this.L, this.c0);
        }
    }

    private void b(String[] strArr) {
        this.d0 = strArr;
        o();
    }

    private Message b(int i) {
        return a(i, 0, 0, (Object) null);
    }

    private int b(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    private void a(Context context) {
        this.U = i.a(context);
        this.C = ViewConfiguration.get(getContext()).getScaledMinimumFlingVelocity();
        this.D = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        if (this.d == 0) {
            this.d = b(context, 14.0f);
        }
        if (this.e == 0) {
            this.e = b(context, 16.0f);
        }
        if (this.f == 0) {
            this.f = b(context, 14.0f);
        }
        if (this.i == 0) {
            this.i = a(context, 8.0f);
        }
        if (this.j == 0) {
            this.j = a(context, 8.0f);
        }
        this.W.setColor(this.m);
        this.W.setAntiAlias(true);
        this.W.setStyle(Paint.Style.STROKE);
        this.W.setStrokeWidth(this.n);
        this.b0.setColor(this.f7060a);
        this.b0.setAntiAlias(true);
        this.b0.setTextAlign(Paint.Align.CENTER);
        this.c0.setColor(this.f7062c);
        this.c0.setAntiAlias(true);
        this.c0.setTextAlign(Paint.Align.CENTER);
        this.c0.setTextSize(this.f);
        int i = this.q;
        if (i % 2 == 0) {
            this.q = i + 1;
        }
        if (this.t == -1 || this.u == -1) {
            n();
        }
        d();
    }

    public NumberPickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
        a(context);
    }

    private void a(int i, int i2) {
        this.m0.a(this, i, i2);
    }

    public void a(String[] strArr) {
        int minValue = getMinValue();
        int maxValue = (getMaxValue() - minValue) + 1;
        int length = strArr.length - 1;
        if ((length - minValue) + 1 > maxValue) {
            setDisplayedValues(strArr);
            setMaxValue(length);
            return;
        }
        setMaxValue(length);
        setDisplayedValues(strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, Object obj) {
        g(0);
        if (i != i2 && (obj == null || !(obj instanceof Boolean) || ((Boolean) obj).booleanValue())) {
            d dVar = this.k0;
            if (dVar != null) {
                int i3 = this.v;
                dVar.a(this, i + i3, i3 + i2);
            }
            f fVar = this.j0;
            if (fVar != null) {
                fVar.a(this, i, i2, this.d0);
            }
        }
        this.B = i2;
        if (this.R) {
            this.R = false;
            e();
        }
    }

    private int a(int i, int i2, boolean z) {
        if (i2 <= 0) {
            return 0;
        }
        if (!z) {
            return i;
        }
        int i3 = i % i2;
        return i3 < 0 ? i3 + i2 : i3;
    }

    private void a(MotionEvent motionEvent) {
        float y = motionEvent.getY();
        for (int i = 0; i < this.q; i++) {
            int i2 = this.y0;
            if (i2 * i <= y && y < i2 * (i + 1)) {
                a(i);
                return;
            }
        }
    }

    private void a(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.q)) {
            h(i - (i2 / 2));
        }
    }

    private float a(Paint.FontMetrics fontMetrics) {
        if (fontMetrics == null) {
            return 0.0f;
        }
        return Math.abs(fontMetrics.top + fontMetrics.bottom) / 2.0f;
    }

    private void a(int i, boolean z) {
        int i2 = i - ((this.q - 1) / 2);
        this.C0 = i2;
        int a2 = a(i2, getOneRecycleSize(), z);
        this.C0 = a2;
        int i3 = this.y0;
        if (i3 == 0) {
            this.O = true;
            return;
        }
        this.E0 = i3 * a2;
        int i4 = a2 + (this.q / 2);
        this.o0 = i4;
        int oneRecycleSize = i4 % getOneRecycleSize();
        this.o0 = oneRecycleSize;
        if (oneRecycleSize < 0) {
            this.o0 = oneRecycleSize + getOneRecycleSize();
        }
        this.p0 = this.o0;
        b();
    }

    private void a(boolean z) {
        k();
        j();
        if (!z) {
            return;
        }
        if (this.F0 == Integer.MIN_VALUE || this.G0 == Integer.MIN_VALUE) {
            this.i0.sendEmptyMessage(3);
        }
    }

    private void a(Canvas canvas) {
        float f2;
        float f3;
        int i;
        int i2;
        float f4 = 0.0f;
        for (int i3 = 0; i3 < this.q + 1; i3++) {
            float f5 = this.D0 + (this.y0 * i3);
            int a2 = a(this.C0 + i3, getOneRecycleSize(), this.N && this.Q);
            int i4 = this.q;
            if (i3 == i4 / 2) {
                f4 = (this.D0 + i2) / this.y0;
                i = a(f4, this.f7060a, this.f7061b);
                f3 = a(f4, this.d, this.e);
                f2 = a(f4, this.J, this.K);
            } else if (i3 == (i4 / 2) + 1) {
                float f6 = 1.0f - f4;
                i = a(f6, this.f7060a, this.f7061b);
                f3 = a(f6, this.d, this.e);
                f2 = a(f6, this.J, this.K);
                f4 = f4;
            } else {
                int i5 = this.f7060a;
                f3 = this.d;
                f2 = this.J;
                f4 = f4;
                i = i5;
            }
            this.b0.setColor(i);
            this.b0.setTextSize(f3);
            if (a2 >= 0 && a2 < getOneRecycleSize()) {
                CharSequence charSequence = this.d0[a2 + this.t];
                if (this.F != null) {
                    charSequence = TextUtils.ellipsize(charSequence, this.b0, getWidth() - (this.l * 2), getEllipsizeType());
                }
                canvas.drawText(charSequence.toString(), this.B0, f5 + (this.y0 / 2) + f2, this.b0);
            } else if (!TextUtils.isEmpty(this.G)) {
                canvas.drawText(this.G, this.B0, f5 + (this.y0 / 2) + f2, this.b0);
            }
        }
    }

    public NumberPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
        a(context);
    }

    private int a(CharSequence[] charSequenceArr, Paint paint) {
        if (charSequenceArr == null) {
            return 0;
        }
        int i = 0;
        for (CharSequence charSequence : charSequenceArr) {
            if (charSequence != null) {
                i = Math.max(a(charSequence, paint), i);
            }
        }
        return i;
    }

    private int a(CharSequence charSequence, Paint paint) {
        if (!TextUtils.isEmpty(charSequence)) {
            return (int) (paint.measureText(charSequence.toString()) + 0.5f);
        }
        return 0;
    }

    public void a() {
        i iVar = this.U;
        if (iVar != null && !iVar.d()) {
            i iVar2 = this.U;
            iVar2.a(0, iVar2.c(), 0, 0, 1);
            this.U.a();
            postInvalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Message a(int i, int i2, int i3, Object obj) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        obtain.obj = obj;
        return obtain;
    }

    private boolean a(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    private int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private String[] a(CharSequence[] charSequenceArr) {
        if (charSequenceArr == null) {
            return null;
        }
        String[] strArr = new String[charSequenceArr.length];
        for (int i = 0; i < charSequenceArr.length; i++) {
            strArr[i] = charSequenceArr[i].toString();
        }
        return strArr;
    }
}
