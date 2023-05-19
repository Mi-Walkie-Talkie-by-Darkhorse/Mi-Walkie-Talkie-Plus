package com.ifengyu.intercom.p216ui.widget.view;

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
import androidx.core.widget.ScrollerCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R$styleable;
import com.just.agentweb.WebIndicator;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.util.Objects;
import org.bouncycastle.crypto.tls.CipherSuite;

/* renamed from: com.ifengyu.intercom.ui.widget.view.NumberPickerView */
/* loaded from: classes2.dex */
public class NumberPickerView extends View {

    /* renamed from: A */
    private int f16156A;

    /* renamed from: A0 */
    private float f16157A0;

    /* renamed from: B */
    private int f16158B;

    /* renamed from: B0 */
    private float f16159B0;

    /* renamed from: C */
    private int f16160C;

    /* renamed from: C0 */
    private int f16161C0;

    /* renamed from: D */
    private int f16162D;

    /* renamed from: D0 */
    private int f16163D0;

    /* renamed from: E */
    private String f16164E;

    /* renamed from: E0 */
    private int f16165E0;

    /* renamed from: F */
    private String f16166F;

    /* renamed from: F0 */
    private int f16167F0;

    /* renamed from: G */
    private String f16168G;

    /* renamed from: G0 */
    private int f16169G0;

    /* renamed from: H */
    private String f16170H;

    /* renamed from: I */
    private float f16171I;

    /* renamed from: J */
    private float f16172J;

    /* renamed from: K */
    private float f16173K;

    /* renamed from: L */
    private float f16174L;

    /* renamed from: M */
    private boolean f16175M;

    /* renamed from: N */
    private boolean f16176N;

    /* renamed from: O */
    private boolean f16177O;

    /* renamed from: P */
    private boolean f16178P;

    /* renamed from: Q */
    private boolean f16179Q;

    /* renamed from: R */
    private boolean f16180R;

    /* renamed from: S */
    private boolean f16181S;

    /* renamed from: T */
    private boolean f16182T;

    /* renamed from: U */
    private ScrollerCompat f16183U;

    /* renamed from: V */
    private VelocityTracker f16184V;

    /* renamed from: W */
    private Paint f16185W;

    /* renamed from: a */
    private int f16186a;

    /* renamed from: b */
    private int f16187b;

    /* renamed from: b0 */
    private TextPaint f16188b0;

    /* renamed from: c */
    private int f16189c;

    /* renamed from: c0 */
    private Paint f16190c0;

    /* renamed from: d */
    private int f16191d;

    /* renamed from: d0 */
    private String[] f16192d0;

    /* renamed from: e */
    private int f16193e;

    /* renamed from: e0 */
    private CharSequence[] f16194e0;

    /* renamed from: f */
    private int f16195f;

    /* renamed from: f0 */
    private CharSequence[] f16196f0;

    /* renamed from: g */
    private int f16197g;

    /* renamed from: g0 */
    private HandlerThread f16198g0;

    /* renamed from: h */
    private int f16199h;

    /* renamed from: h0 */
    private Handler f16200h0;

    /* renamed from: i */
    private int f16201i;

    /* renamed from: i0 */
    private Handler f16202i0;

    /* renamed from: j */
    private int f16203j;

    /* renamed from: j0 */
    private InterfaceC4956f f16204j0;

    /* renamed from: k */
    private int f16205k;

    /* renamed from: k0 */
    private InterfaceC4954d f16206k0;

    /* renamed from: l */
    private int f16207l;

    /* renamed from: l0 */
    private InterfaceC4953c f16208l0;

    /* renamed from: m */
    private int f16209m;

    /* renamed from: m0 */
    private InterfaceC4955e f16210m0;

    /* renamed from: n */
    private int f16211n;

    /* renamed from: n0 */
    private int f16212n0;

    /* renamed from: o */
    private int f16213o;

    /* renamed from: o0 */
    private int f16214o0;

    /* renamed from: p */
    private int f16215p;

    /* renamed from: p0 */
    private int f16216p0;

    /* renamed from: q */
    private int f16217q;

    /* renamed from: q0 */
    private int f16218q0;

    /* renamed from: r */
    private int f16219r;

    /* renamed from: r0 */
    private int f16220r0;

    /* renamed from: s */
    private int f16221s;

    /* renamed from: s0 */
    private float f16222s0;

    /* renamed from: t */
    private int f16223t;

    /* renamed from: t0 */
    private float f16224t0;

    /* renamed from: u */
    private int f16225u;

    /* renamed from: u0 */
    private float f16226u0;

    /* renamed from: v */
    private int f16227v;

    /* renamed from: v0 */
    private boolean f16228v0;

    /* renamed from: w */
    private int f16229w;

    /* renamed from: w0 */
    private int f16230w0;

    /* renamed from: x */
    private int f16231x;

    /* renamed from: x0 */
    private int f16232x0;

    /* renamed from: y */
    private int f16233y;

    /* renamed from: y0 */
    private int f16234y0;

    /* renamed from: z */
    private int f16235z;

    /* renamed from: z0 */
    private float f16236z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.view.NumberPickerView$a */
    /* loaded from: classes2.dex */
    public class HandlerC4951a extends Handler {
        HandlerC4951a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int m8827E;
            int i;
            int i2 = message.what;
            if (i2 != 1) {
                if (i2 != 2) {
                    return;
                }
                NumberPickerView.this.m8814R(message.arg1, message.arg2, message.obj);
                return;
            }
            int i3 = 0;
            if (!NumberPickerView.this.f16183U.m23111g()) {
                if (NumberPickerView.this.f16212n0 == 0) {
                    NumberPickerView.this.m8817O(1);
                }
                NumberPickerView.this.f16200h0.sendMessageDelayed(NumberPickerView.this.m8830B(1, 0, 0, message.obj), 32L);
                return;
            }
            if (NumberPickerView.this.f16163D0 != 0) {
                if (NumberPickerView.this.f16212n0 == 0) {
                    NumberPickerView.this.m8817O(1);
                }
                if (NumberPickerView.this.f16163D0 < (-NumberPickerView.this.f16234y0) / 2) {
                    i = (int) (((NumberPickerView.this.f16234y0 + NumberPickerView.this.f16163D0) * 300.0f) / NumberPickerView.this.f16234y0);
                    NumberPickerView.this.f16183U.m23110h(0, NumberPickerView.this.f16165E0, 0, NumberPickerView.this.f16163D0 + NumberPickerView.this.f16234y0, i * 3);
                    NumberPickerView numberPickerView = NumberPickerView.this;
                    m8827E = numberPickerView.m8827E(numberPickerView.f16165E0 + NumberPickerView.this.f16234y0 + NumberPickerView.this.f16163D0);
                } else {
                    i = (int) (((-NumberPickerView.this.f16163D0) * 300.0f) / NumberPickerView.this.f16234y0);
                    NumberPickerView.this.f16183U.m23110h(0, NumberPickerView.this.f16165E0, 0, NumberPickerView.this.f16163D0, i * 3);
                    NumberPickerView numberPickerView2 = NumberPickerView.this;
                    m8827E = numberPickerView2.m8827E(numberPickerView2.f16165E0 + NumberPickerView.this.f16163D0);
                }
                i3 = i;
                NumberPickerView.this.postInvalidate();
            } else {
                NumberPickerView.this.m8817O(0);
                NumberPickerView numberPickerView3 = NumberPickerView.this;
                m8827E = numberPickerView3.m8827E(numberPickerView3.f16165E0);
            }
            NumberPickerView numberPickerView4 = NumberPickerView.this;
            Message m8830B = numberPickerView4.m8830B(2, numberPickerView4.f16158B, m8827E, message.obj);
            if (NumberPickerView.this.f16182T) {
                NumberPickerView.this.f16202i0.sendMessageDelayed(m8830B, i3 * 2);
            } else {
                NumberPickerView.this.f16200h0.sendMessageDelayed(m8830B, i3 * 2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.view.NumberPickerView$b */
    /* loaded from: classes2.dex */
    public class HandlerC4952b extends Handler {
        HandlerC4952b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 2) {
                NumberPickerView.this.m8814R(message.arg1, message.arg2, message.obj);
            } else if (i != 3) {
            } else {
                NumberPickerView.this.requestLayout();
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.view.NumberPickerView$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC4953c {
        /* renamed from: a */
        void m8771a(NumberPickerView numberPickerView, int i);
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.view.NumberPickerView$d */
    /* loaded from: classes2.dex */
    public interface InterfaceC4954d {
        /* renamed from: a */
        void mo8770a(NumberPickerView numberPickerView, int i, int i2);
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.view.NumberPickerView$e */
    /* loaded from: classes2.dex */
    public interface InterfaceC4955e {
        /* renamed from: a */
        void m8769a(NumberPickerView numberPickerView, int i, int i2);
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.view.NumberPickerView$f */
    /* loaded from: classes2.dex */
    public interface InterfaceC4956f {
        /* renamed from: a */
        void m8768a(NumberPickerView numberPickerView, int i, int i2, String[] strArr);
    }

    public NumberPickerView(Context context) {
        super(context);
        this.f16186a = -13421773;
        this.f16187b = -16746753;
        this.f16189c = -16746753;
        this.f16191d = 0;
        this.f16193e = 0;
        this.f16195f = 0;
        this.f16197g = 0;
        this.f16199h = 0;
        this.f16201i = 0;
        this.f16203j = 0;
        this.f16205k = 0;
        this.f16207l = 0;
        this.f16209m = -695533;
        this.f16211n = 2;
        this.f16213o = 0;
        this.f16215p = 0;
        this.f16217q = 3;
        this.f16219r = 0;
        this.f16221s = 0;
        this.f16223t = -1;
        this.f16225u = -1;
        this.f16227v = 0;
        this.f16229w = 0;
        this.f16231x = 0;
        this.f16233y = 0;
        this.f16235z = 0;
        this.f16156A = 0;
        this.f16158B = 0;
        this.f16160C = CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA;
        this.f16162D = 8;
        this.f16171I = 1.0f;
        this.f16172J = BitmapDescriptorFactory.HUE_RED;
        this.f16173K = BitmapDescriptorFactory.HUE_RED;
        this.f16174L = BitmapDescriptorFactory.HUE_RED;
        this.f16175M = true;
        this.f16176N = true;
        this.f16177O = false;
        this.f16178P = false;
        this.f16179Q = true;
        this.f16180R = false;
        this.f16181S = false;
        this.f16182T = true;
        this.f16185W = new Paint();
        this.f16188b0 = new TextPaint();
        this.f16190c0 = new Paint();
        this.f16212n0 = 0;
        this.f16222s0 = BitmapDescriptorFactory.HUE_RED;
        this.f16224t0 = BitmapDescriptorFactory.HUE_RED;
        this.f16226u0 = BitmapDescriptorFactory.HUE_RED;
        this.f16228v0 = false;
        this.f16161C0 = 0;
        this.f16163D0 = 0;
        this.f16165E0 = 0;
        this.f16167F0 = 0;
        this.f16169G0 = 0;
        m8825G(context);
    }

    /* renamed from: A */
    private Message m8831A(int i) {
        return m8830B(i, 0, 0, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public Message m8830B(int i, int i2, int i3, Object obj) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        obtain.obj = obj;
        return obtain;
    }

    /* renamed from: C */
    private float m8829C(Paint.FontMetrics fontMetrics) {
        return fontMetrics == null ? BitmapDescriptorFactory.HUE_RED : Math.abs(fontMetrics.top + fontMetrics.bottom) / 2.0f;
    }

    /* renamed from: D */
    private int m8828D(CharSequence charSequence, Paint paint) {
        if (TextUtils.isEmpty(charSequence)) {
            return 0;
        }
        return (int) (paint.measureText(charSequence.toString()) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E */
    public int m8827E(int i) {
        int i2 = this.f16234y0;
        boolean z = false;
        if (i2 == 0) {
            return 0;
        }
        int i3 = (i / i2) + (this.f16217q / 2);
        int oneRecycleSize = getOneRecycleSize();
        if (this.f16176N && this.f16179Q) {
            z = true;
        }
        int m8773y = m8773y(i3, oneRecycleSize, z);
        if (m8773y >= 0 && m8773y < getOneRecycleSize()) {
            return m8773y + this.f16223t;
        }
        throw new IllegalArgumentException("getWillPickIndexByGlobalY illegal index : " + m8773y + " getOneRecycleSize() : " + getOneRecycleSize() + " mWrapSelectorWheel : " + this.f16176N);
    }

    /* renamed from: F */
    private void m8826F() {
        if (this.f16192d0 == null) {
            this.f16192d0 = r0;
            String[] strArr = {"0"};
        }
    }

    /* renamed from: G */
    private void m8825G(Context context) {
        this.f16183U = ScrollerCompat.m23115c(context);
        this.f16160C = ViewConfiguration.get(getContext()).getScaledMinimumFlingVelocity();
        this.f16162D = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        if (this.f16191d == 0) {
            this.f16191d = m8810V(context, 14.0f);
        }
        if (this.f16193e == 0) {
            this.f16193e = m8810V(context, 16.0f);
        }
        if (this.f16195f == 0) {
            this.f16195f = m8810V(context, 14.0f);
        }
        if (this.f16201i == 0) {
            this.f16201i = m8779s(context, 8.0f);
        }
        if (this.f16203j == 0) {
            this.f16203j = m8779s(context, 8.0f);
        }
        this.f16185W.setColor(this.f16209m);
        this.f16185W.setAntiAlias(true);
        this.f16185W.setStyle(Paint.Style.STROKE);
        this.f16185W.setStrokeWidth(this.f16211n);
        this.f16188b0.setColor(this.f16186a);
        this.f16188b0.setAntiAlias(true);
        this.f16188b0.setTextAlign(Paint.Align.CENTER);
        this.f16190c0.setColor(this.f16189c);
        this.f16190c0.setAntiAlias(true);
        this.f16190c0.setTextAlign(Paint.Align.CENTER);
        this.f16190c0.setTextSize(this.f16195f);
        int i = this.f16217q;
        if (i % 2 == 0) {
            this.f16217q = i + 1;
        }
        if (this.f16223t == -1 || this.f16225u == -1) {
            m8792g0();
        }
        m8823I();
    }

    /* renamed from: H */
    private void m8824H(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.NumberPickerView);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 17) {
                this.f16217q = obtainStyledAttributes.getInt(index, 3);
            } else if (index == 3) {
                this.f16209m = obtainStyledAttributes.getColor(index, -695533);
            } else if (index == 4) {
                this.f16211n = obtainStyledAttributes.getDimensionPixelSize(index, 2);
            } else if (index == 5) {
                this.f16213o = obtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == 6) {
                this.f16215p = obtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == 19) {
                this.f16192d0 = m8781q(obtainStyledAttributes.getTextArray(index));
            } else if (index == 21) {
                this.f16186a = obtainStyledAttributes.getColor(index, -13421773);
            } else if (index == 22) {
                this.f16187b = obtainStyledAttributes.getColor(index, -16746753);
            } else if (index == 20) {
                this.f16189c = obtainStyledAttributes.getColor(index, -16746753);
            } else if (index == 25) {
                this.f16191d = obtainStyledAttributes.getDimensionPixelSize(index, m8810V(context, 14.0f));
            } else if (index == 26) {
                this.f16193e = obtainStyledAttributes.getDimensionPixelSize(index, m8810V(context, 16.0f));
            } else if (index == 24) {
                this.f16195f = obtainStyledAttributes.getDimensionPixelSize(index, m8810V(context, 14.0f));
            } else if (index == 14) {
                this.f16223t = obtainStyledAttributes.getInteger(index, 0);
            } else if (index == 13) {
                this.f16225u = obtainStyledAttributes.getInteger(index, 0);
            } else if (index == 27) {
                this.f16176N = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == 18) {
                this.f16175M = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == 8) {
                this.f16164E = obtainStyledAttributes.getString(index);
            } else if (index == 0) {
                this.f16170H = obtainStyledAttributes.getString(index);
            } else if (index == 7) {
                this.f16168G = obtainStyledAttributes.getString(index);
            } else if (index == 12) {
                this.f16201i = obtainStyledAttributes.getDimensionPixelSize(index, m8779s(context, 8.0f));
            } else if (index == 11) {
                this.f16203j = obtainStyledAttributes.getDimensionPixelSize(index, m8779s(context, 8.0f));
            } else if (index == 10) {
                this.f16205k = obtainStyledAttributes.getDimensionPixelSize(index, m8779s(context, 2.0f));
            } else if (index == 9) {
                this.f16207l = obtainStyledAttributes.getDimensionPixelSize(index, m8779s(context, 5.0f));
            } else if (index == 1) {
                this.f16194e0 = obtainStyledAttributes.getTextArray(index);
            } else if (index == 2) {
                this.f16196f0 = obtainStyledAttributes.getTextArray(index);
            } else if (index == 16) {
                this.f16181S = obtainStyledAttributes.getBoolean(index, false);
            } else if (index == 15) {
                this.f16182T = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == 23) {
                this.f16166F = obtainStyledAttributes.getString(index);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: I */
    private void m8823I() {
        HandlerThread handlerThread = new HandlerThread("HandlerThread-For-Refreshing");
        this.f16198g0 = handlerThread;
        handlerThread.start();
        this.f16200h0 = new HandlerC4951a(this.f16198g0.getLooper());
        this.f16202i0 = new HandlerC4952b();
    }

    /* renamed from: J */
    private void m8822J() {
        m8780r(getPickedIndexRelativeToRaw() - this.f16223t, false);
        this.f16176N = false;
        postInvalidate();
    }

    /* renamed from: K */
    private boolean m8821K(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    /* renamed from: L */
    private int m8820L(int i) {
        if (this.f16176N && this.f16179Q) {
            return i;
        }
        int i2 = this.f16220r0;
        return (i >= i2 && i <= (i2 = this.f16218q0)) ? i : i2;
    }

    /* renamed from: M */
    private int m8819M(int i) {
        int mode = View.MeasureSpec.getMode(i);
        this.f16169G0 = mode;
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int paddingTop = getPaddingTop() + getPaddingBottom() + (this.f16217q * (this.f16233y + (this.f16205k * 2)));
        return mode == Integer.MIN_VALUE ? Math.min(paddingTop, size) : paddingTop;
    }

    /* renamed from: N */
    private int m8818N(int i) {
        int mode = View.MeasureSpec.getMode(i);
        this.f16167F0 = mode;
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight() + Math.max(this.f16235z, Math.max(this.f16231x, this.f16156A) + (((Math.max(this.f16197g, this.f16199h) != 0 ? this.f16201i : 0) + Math.max(this.f16197g, this.f16199h) + (Math.max(this.f16197g, this.f16199h) == 0 ? 0 : this.f16203j) + (this.f16207l * 2)) * 2));
        return mode == Integer.MIN_VALUE ? Math.min(paddingLeft, size) : paddingLeft;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public void m8817O(int i) {
        if (this.f16212n0 == i) {
            return;
        }
        this.f16212n0 = i;
        InterfaceC4953c interfaceC4953c = this.f16208l0;
        if (interfaceC4953c != null) {
            interfaceC4953c.m8771a(this, i);
        }
    }

    /* renamed from: Q */
    private void m8815Q() {
        VelocityTracker velocityTracker = this.f16184V;
        if (velocityTracker != null) {
            velocityTracker.clear();
            this.f16184V.recycle();
            this.f16184V = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public void m8814R(int i, int i2, Object obj) {
        m8817O(0);
        if (i != i2 && (obj == null || !(obj instanceof Boolean) || ((Boolean) obj).booleanValue())) {
            InterfaceC4954d interfaceC4954d = this.f16206k0;
            if (interfaceC4954d != null) {
                int i3 = this.f16227v;
                interfaceC4954d.mo8770a(this, i + i3, i3 + i2);
            }
            InterfaceC4956f interfaceC4956f = this.f16204j0;
            if (interfaceC4956f != null) {
                interfaceC4956f.m8768a(this, i, i2, this.f16192d0);
            }
        }
        this.f16158B = i2;
        if (this.f16180R) {
            this.f16180R = false;
            m8822J();
        }
    }

    /* renamed from: S */
    private void m8813S(int i, int i2) {
        this.f16210m0.m8769a(this, i, i2);
    }

    /* renamed from: T */
    private void m8812T(int i) {
        m8811U(i, true);
    }

    /* renamed from: U */
    private void m8811U(int i, boolean z) {
        int pickedIndexRelativeToRaw;
        int pickedIndexRelativeToRaw2;
        int i2;
        int i3;
        if ((!this.f16176N || !this.f16179Q) && ((pickedIndexRelativeToRaw2 = (pickedIndexRelativeToRaw = getPickedIndexRelativeToRaw()) + i) > (i2 = this.f16225u) || pickedIndexRelativeToRaw2 < (i2 = this.f16223t))) {
            i = i2 - pickedIndexRelativeToRaw;
        }
        int i4 = this.f16163D0;
        int i5 = this.f16234y0;
        if (i4 < (-i5) / 2) {
            int i6 = i5 + i4;
            int i7 = (int) (((i4 + i5) * 300.0f) / i5);
            i3 = i < 0 ? (-i7) - (i * 300) : i7 + (i * 300);
            i4 = i6;
        } else {
            int i8 = (int) (((-i4) * 300.0f) / i5);
            i3 = i < 0 ? i8 - (i * 300) : i8 + (i * 300);
        }
        int i9 = i4 + (i * i5);
        if (i3 < 300) {
            i3 = 300;
        }
        if (i3 > 600) {
            i3 = WebIndicator.DO_END_ANIMATION_DURATION;
        }
        this.f16183U.m23110h(0, this.f16165E0, 0, i9, i3);
        if (z) {
            this.f16200h0.sendMessageDelayed(m8831A(1), i3 / 4);
        } else {
            this.f16200h0.sendMessageDelayed(m8830B(1, 0, 0, new Boolean(z)), i3 / 4);
        }
        postInvalidate();
    }

    /* renamed from: V */
    private int m8810V(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    /* renamed from: W */
    private void m8809W() {
        Handler handler = this.f16200h0;
        if (handler != null) {
            handler.removeMessages(1);
        }
    }

    /* renamed from: Y */
    private void m8807Y(String[] strArr) {
        this.f16192d0 = strArr;
        m8790h0();
    }

    /* renamed from: Z */
    private void m8806Z() {
        int i;
        int i2;
        int i3;
        int i4 = this.f16217q / 2;
        this.f16219r = i4;
        this.f16221s = i4 + 1;
        int i5 = this.f16232x0;
        this.f16236z0 = (i4 * i5) / i;
        this.f16157A0 = (i2 * i5) / i;
        if (this.f16213o < 0) {
            this.f16213o = 0;
        }
        if (this.f16215p < 0) {
            this.f16215p = 0;
        }
        if (this.f16213o + this.f16215p != 0 && getPaddingLeft() + this.f16213o >= (this.f16230w0 - getPaddingRight()) - this.f16215p) {
            int paddingLeft = getPaddingLeft() + this.f16213o + getPaddingRight();
            int i6 = this.f16215p;
            int i7 = (paddingLeft + i6) - this.f16230w0;
            int i8 = this.f16213o;
            float f = i7;
            this.f16213o = (int) (i8 - ((i8 * f) / (i8 + i6)));
            this.f16215p = (int) (i6 - ((f * i6) / (i3 + i6)));
        }
    }

    /* renamed from: a0 */
    private void m8804a0() {
        int i = this.f16191d;
        int i2 = this.f16234y0;
        if (i > i2) {
            this.f16191d = i2;
        }
        if (this.f16193e > i2) {
            this.f16193e = i2;
        }
        Paint paint = this.f16190c0;
        if (paint != null) {
            paint.setTextSize(this.f16195f);
            this.f16174L = m8829C(this.f16190c0.getFontMetrics());
            this.f16197g = m8828D(this.f16164E, this.f16190c0);
            TextPaint textPaint = this.f16188b0;
            if (textPaint != null) {
                textPaint.setTextSize(this.f16193e);
                this.f16173K = m8829C(this.f16188b0.getFontMetrics());
                this.f16188b0.setTextSize(this.f16191d);
                this.f16172J = m8829C(this.f16188b0.getFontMetrics());
                return;
            }
            throw new IllegalArgumentException("mPaintText should not be null.");
        }
        throw new IllegalArgumentException("mPaintHint should not be null.");
    }

    /* renamed from: b0 */
    private void m8802b0() {
        float textSize = this.f16188b0.getTextSize();
        this.f16188b0.setTextSize(this.f16193e);
        this.f16233y = (int) ((this.f16188b0.getFontMetrics().bottom - this.f16188b0.getFontMetrics().top) + 0.5d);
        this.f16188b0.setTextSize(textSize);
    }

    /* renamed from: c0 */
    private void m8800c0(boolean z) {
        m8798d0();
        m8802b0();
        if (z) {
            if (this.f16167F0 == Integer.MIN_VALUE || this.f16169G0 == Integer.MIN_VALUE) {
                this.f16202i0.sendEmptyMessage(3);
            }
        }
    }

    /* renamed from: d0 */
    private void m8798d0() {
        float textSize = this.f16188b0.getTextSize();
        this.f16188b0.setTextSize(this.f16193e);
        this.f16231x = m8772z(this.f16192d0, this.f16188b0);
        this.f16235z = m8772z(this.f16194e0, this.f16188b0);
        this.f16156A = m8772z(this.f16196f0, this.f16188b0);
        this.f16188b0.setTextSize(this.f16195f);
        this.f16199h = m8828D(this.f16170H, this.f16188b0);
        this.f16188b0.setTextSize(textSize);
    }

    /* renamed from: e0 */
    private void m8796e0() {
        this.f16218q0 = 0;
        this.f16220r0 = (-this.f16217q) * this.f16234y0;
        if (this.f16192d0 != null) {
            int oneRecycleSize = getOneRecycleSize();
            int i = this.f16217q;
            int i2 = this.f16234y0;
            this.f16218q0 = ((oneRecycleSize - (i / 2)) - 1) * i2;
            this.f16220r0 = (-(i / 2)) * i2;
        }
    }

    /* renamed from: f0 */
    private void m8794f0() {
        m8826F();
        m8790h0();
        this.f16223t = 0;
        this.f16225u = this.f16192d0.length - 1;
    }

    /* renamed from: g0 */
    private void m8792g0() {
        m8826F();
        m8790h0();
        if (this.f16223t == -1) {
            this.f16223t = 0;
        }
        if (this.f16225u == -1) {
            this.f16225u = this.f16192d0.length - 1;
        }
        setMinAndMaxShowIndex(this.f16223t, this.f16225u, false);
    }

    private TextUtils.TruncateAt getEllipsizeType() {
        String str = this.f16166F;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1074341483:
                if (str.equals("middle")) {
                    c = 0;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c = 1;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return TextUtils.TruncateAt.MIDDLE;
            case 1:
                return TextUtils.TruncateAt.END;
            case 2:
                return TextUtils.TruncateAt.START;
            default:
                throw new IllegalArgumentException("Illegal text ellipsize type.");
        }
    }

    /* renamed from: h0 */
    private void m8790h0() {
        this.f16179Q = this.f16192d0.length > this.f16217q;
    }

    /* renamed from: n */
    private void m8784n() {
        int floor = (int) Math.floor(this.f16165E0 / this.f16234y0);
        this.f16161C0 = floor;
        int i = this.f16165E0;
        int i2 = this.f16234y0;
        int i3 = -(i - (floor * i2));
        this.f16163D0 = i3;
        if (this.f16210m0 != null) {
            if ((-i3) > i2 / 2) {
                this.f16216p0 = floor + 1 + (this.f16217q / 2);
            } else {
                this.f16216p0 = floor + (this.f16217q / 2);
            }
            int oneRecycleSize = this.f16216p0 % getOneRecycleSize();
            this.f16216p0 = oneRecycleSize;
            if (oneRecycleSize < 0) {
                this.f16216p0 = oneRecycleSize + getOneRecycleSize();
            }
            int i4 = this.f16214o0;
            int i5 = this.f16216p0;
            if (i4 != i5) {
                m8813S(i5, i4);
            }
            this.f16214o0 = this.f16216p0;
        }
    }

    /* renamed from: o */
    private void m8783o(MotionEvent motionEvent) {
        float y = motionEvent.getY();
        for (int i = 0; i < this.f16217q; i++) {
            int i2 = this.f16234y0;
            if (i2 * i <= y && y < i2 * (i + 1)) {
                m8782p(i);
                return;
            }
        }
    }

    /* renamed from: p */
    private void m8782p(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.f16217q)) {
            return;
        }
        m8812T(i - (i2 / 2));
    }

    /* renamed from: q */
    private String[] m8781q(CharSequence[] charSequenceArr) {
        if (charSequenceArr == null) {
            return null;
        }
        String[] strArr = new String[charSequenceArr.length];
        for (int i = 0; i < charSequenceArr.length; i++) {
            strArr[i] = charSequenceArr[i].toString();
        }
        return strArr;
    }

    /* renamed from: r */
    private void m8780r(int i, boolean z) {
        int i2 = i - ((this.f16217q - 1) / 2);
        this.f16161C0 = i2;
        int m8773y = m8773y(i2, getOneRecycleSize(), z);
        this.f16161C0 = m8773y;
        int i3 = this.f16234y0;
        if (i3 == 0) {
            this.f16177O = true;
            return;
        }
        this.f16165E0 = i3 * m8773y;
        int i4 = m8773y + (this.f16217q / 2);
        this.f16214o0 = i4;
        int oneRecycleSize = i4 % getOneRecycleSize();
        this.f16214o0 = oneRecycleSize;
        if (oneRecycleSize < 0) {
            this.f16214o0 = oneRecycleSize + getOneRecycleSize();
        }
        this.f16216p0 = this.f16214o0;
        m8784n();
    }

    /* renamed from: s */
    private int m8779s(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: t */
    private void m8778t(Canvas canvas) {
        float f;
        float f2;
        float f3;
        int i;
        int i2;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        int i3 = 0;
        while (i3 < this.f16217q + 1) {
            float f5 = this.f16163D0 + (this.f16234y0 * i3);
            int m8773y = m8773y(this.f16161C0 + i3, getOneRecycleSize(), this.f16176N && this.f16179Q);
            int i4 = this.f16217q;
            if (i3 == i4 / 2) {
                f3 = (this.f16163D0 + i2) / this.f16234y0;
                i = m8775w(f3, this.f16186a, this.f16187b);
                f = m8774x(f3, this.f16191d, this.f16193e);
                f2 = m8774x(f3, this.f16172J, this.f16173K);
            } else if (i3 == (i4 / 2) + 1) {
                float f6 = 1.0f - f4;
                int m8775w = m8775w(f6, this.f16186a, this.f16187b);
                float m8774x = m8774x(f6, this.f16191d, this.f16193e);
                float m8774x2 = m8774x(f6, this.f16172J, this.f16173K);
                f3 = f4;
                i = m8775w;
                f = m8774x;
                f2 = m8774x2;
            } else {
                int i5 = this.f16186a;
                f = this.f16191d;
                f2 = this.f16172J;
                f3 = f4;
                i = i5;
            }
            this.f16188b0.setColor(i);
            this.f16188b0.setTextSize(f);
            if (m8773y >= 0 && m8773y < getOneRecycleSize()) {
                CharSequence charSequence = this.f16192d0[m8773y + this.f16223t];
                if (this.f16166F != null) {
                    charSequence = TextUtils.ellipsize(charSequence, this.f16188b0, getWidth() - (this.f16207l * 2), getEllipsizeType());
                }
                canvas.drawText(charSequence.toString(), this.f16159B0, f5 + (this.f16234y0 / 2) + f2, this.f16188b0);
            } else if (!TextUtils.isEmpty(this.f16168G)) {
                canvas.drawText(this.f16168G, this.f16159B0, f5 + (this.f16234y0 / 2) + f2, this.f16188b0);
            }
            i3++;
            f4 = f3;
        }
    }

    /* renamed from: u */
    private void m8777u(Canvas canvas) {
        if (TextUtils.isEmpty(this.f16164E)) {
            return;
        }
        canvas.drawText(this.f16164E, this.f16159B0 + ((this.f16231x + this.f16197g) / 2) + this.f16201i, ((this.f16236z0 + this.f16157A0) / 2.0f) + this.f16174L, this.f16190c0);
    }

    /* renamed from: v */
    private void m8776v(Canvas canvas) {
        if (this.f16175M) {
            canvas.drawLine(getPaddingLeft() + this.f16213o, this.f16236z0, (this.f16230w0 - getPaddingRight()) - this.f16215p, this.f16236z0, this.f16185W);
            canvas.drawLine(getPaddingLeft() + this.f16213o, this.f16157A0, (this.f16230w0 - getPaddingRight()) - this.f16215p, this.f16157A0, this.f16185W);
        }
    }

    /* renamed from: w */
    private int m8775w(float f, int i, int i2) {
        int i3 = (i & (-16777216)) >>> 24;
        int i4 = (i & 16711680) >>> 16;
        int i5 = (i & 65280) >>> 8;
        int i6 = (i & 255) >>> 0;
        return ((int) (i6 + ((((i2 & 255) >>> 0) - i6) * f))) | (((int) (i3 + (((((-16777216) & i2) >>> 24) - i3) * f))) << 24) | (((int) (i4 + ((((16711680 & i2) >>> 16) - i4) * f))) << 16) | (((int) (i5 + ((((65280 & i2) >>> 8) - i5) * f))) << 8);
    }

    /* renamed from: x */
    private float m8774x(float f, float f2, float f3) {
        return f2 + ((f3 - f2) * f);
    }

    /* renamed from: y */
    private int m8773y(int i, int i2, boolean z) {
        if (i2 <= 0) {
            return 0;
        }
        if (z) {
            int i3 = i % i2;
            return i3 < 0 ? i3 + i2 : i3;
        }
        return i;
    }

    /* renamed from: z */
    private int m8772z(CharSequence[] charSequenceArr, Paint paint) {
        if (charSequenceArr == null) {
            return 0;
        }
        int i = 0;
        for (CharSequence charSequence : charSequenceArr) {
            if (charSequence != null) {
                i = Math.max(m8828D(charSequence, paint), i);
            }
        }
        return i;
    }

    /* renamed from: P */
    public void m8816P(String[] strArr) {
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

    /* renamed from: X */
    public void m8808X() {
        ScrollerCompat scrollerCompat = this.f16183U;
        if (scrollerCompat == null || scrollerCompat.m23111g()) {
            return;
        }
        ScrollerCompat scrollerCompat2 = this.f16183U;
        scrollerCompat2.m23110h(0, scrollerCompat2.m23112f(), 0, 0, 1);
        this.f16183U.m23117a();
        postInvalidate();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f16234y0 != 0 && this.f16183U.m23116b()) {
            this.f16165E0 = this.f16183U.m23112f();
            m8784n();
            postInvalidate();
        }
    }

    public String getContentByCurrValue() {
        return this.f16192d0[getValue() - this.f16227v];
    }

    public String[] getDisplayedValues() {
        return this.f16192d0;
    }

    public int getMaxValue() {
        return this.f16229w;
    }

    public int getMinValue() {
        return this.f16227v;
    }

    public int getOneRecycleSize() {
        return (this.f16225u - this.f16223t) + 1;
    }

    public int getPickedIndexRelativeToRaw() {
        int i = this.f16163D0;
        if (i != 0) {
            int i2 = this.f16234y0;
            if (i < (-i2) / 2) {
                return m8827E(this.f16165E0 + i2 + i);
            }
            return m8827E(this.f16165E0 + i);
        }
        return m8827E(this.f16165E0);
    }

    public int getRawContentSize() {
        String[] strArr = this.f16192d0;
        if (strArr != null) {
            return strArr.length;
        }
        return 0;
    }

    public int getValue() {
        return getPickedIndexRelativeToRaw() + this.f16227v;
    }

    public boolean getWrapSelectorWheel() {
        return this.f16176N;
    }

    public boolean getWrapSelectorWheelAbsolutely() {
        return this.f16176N && this.f16179Q;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        HandlerThread handlerThread = this.f16198g0;
        if (handlerThread == null || !handlerThread.isAlive()) {
            m8823I();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f16198g0.quit();
        if (this.f16234y0 == 0) {
            return;
        }
        if (!this.f16183U.m23111g()) {
            this.f16183U.m23117a();
            this.f16165E0 = this.f16183U.m23112f();
            m8784n();
            int i = this.f16163D0;
            if (i != 0) {
                int i2 = this.f16234y0;
                if (i < (-i2) / 2) {
                    this.f16165E0 = this.f16165E0 + i2 + i;
                } else {
                    this.f16165E0 += i;
                }
                m8784n();
            }
            m8817O(0);
        }
        int m8827E = m8827E(this.f16165E0);
        int i3 = this.f16158B;
        if (m8827E != i3 && this.f16181S) {
            try {
                InterfaceC4954d interfaceC4954d = this.f16206k0;
                if (interfaceC4954d != null) {
                    int i4 = this.f16227v;
                    interfaceC4954d.mo8770a(this, i3 + i4, i4 + m8827E);
                }
                InterfaceC4956f interfaceC4956f = this.f16204j0;
                if (interfaceC4956f != null) {
                    interfaceC4956f.m8768a(this, this.f16158B, m8827E, this.f16192d0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.f16158B = m8827E;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m8778t(canvas);
        m8776v(canvas);
        m8777u(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m8800c0(false);
        setMeasuredDimension(m8818N(i), m8819M(i2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        super.onSizeChanged(i, i2, i3, i4);
        this.f16230w0 = i;
        this.f16232x0 = i2;
        this.f16234y0 = i2 / this.f16217q;
        this.f16159B0 = ((i + getPaddingLeft()) - getPaddingRight()) / 2.0f;
        boolean z = false;
        if (getOneRecycleSize() > 1) {
            if (this.f16178P) {
                i5 = getValue() - this.f16227v;
            } else if (this.f16177O) {
                i5 = this.f16161C0 + ((this.f16217q - 1) / 2);
            }
            if (this.f16176N && this.f16179Q) {
                z = true;
            }
            m8780r(i5, z);
            m8804a0();
            m8796e0();
            m8806Z();
            this.f16178P = true;
        }
        i5 = 0;
        if (this.f16176N) {
            z = true;
        }
        m8780r(i5, z);
        m8804a0();
        m8796e0();
        m8806Z();
        this.f16178P = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0059, code lost:
        if (r1 < r3) goto L23;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f16234y0 == 0) {
            return true;
        }
        if (this.f16184V == null) {
            this.f16184V = VelocityTracker.obtain();
        }
        this.f16184V.addMovement(motionEvent);
        this.f16226u0 = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f16228v0 = true;
            this.f16200h0.removeMessages(1);
            m8808X();
            this.f16224t0 = this.f16226u0;
            this.f16222s0 = this.f16165E0;
            m8817O(0);
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action != 1) {
            if (action == 2) {
                float f = this.f16224t0 - this.f16226u0;
                if (this.f16228v0) {
                    int i = this.f16162D;
                    if ((-i) < f) {
                    }
                }
                this.f16228v0 = false;
                this.f16165E0 = m8820L((int) (this.f16222s0 + f));
                m8784n();
                invalidate();
                m8817O(1);
            } else if (action == 3) {
                this.f16222s0 = this.f16165E0;
                m8808X();
                this.f16200h0.sendMessageDelayed(m8831A(1), 0L);
            }
        } else if (this.f16228v0) {
            m8783o(motionEvent);
        } else {
            VelocityTracker velocityTracker = this.f16184V;
            velocityTracker.computeCurrentVelocity(XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER);
            int yVelocity = (int) (velocityTracker.getYVelocity() * this.f16171I);
            if (Math.abs(yVelocity) > this.f16160C) {
                this.f16183U.m23113e(0, this.f16165E0, 0, -yVelocity, Integer.MIN_VALUE, Integer.MAX_VALUE, m8820L(Integer.MIN_VALUE), m8820L(Integer.MAX_VALUE));
                invalidate();
                m8817O(2);
            }
            this.f16200h0.sendMessageDelayed(m8831A(1), 0L);
            m8815Q();
        }
        return true;
    }

    public void setContentTextTypeface(Typeface typeface) {
        this.f16188b0.setTypeface(typeface);
    }

    public void setDisplayedValues(String[] strArr, boolean z) {
        setDisplayedValuesAndPickedIndex(strArr, 0, z);
    }

    public void setDisplayedValuesAndPickedIndex(String[] strArr, int i, boolean z) {
        m8808X();
        if (strArr == null) {
            throw new IllegalArgumentException("newDisplayedValues should not be null.");
        }
        if (i >= 0) {
            m8807Y(strArr);
            m8800c0(true);
            m8796e0();
            m8794f0();
            this.f16158B = this.f16223t + i;
            m8780r(i, this.f16176N && this.f16179Q);
            if (z) {
                this.f16200h0.sendMessageDelayed(m8831A(1), 0L);
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("pickedIndex should not be negative, now pickedIndex is " + i);
    }

    public void setDividerColor(int i) {
        if (this.f16209m == i) {
            return;
        }
        this.f16209m = i;
        this.f16185W.setColor(i);
        postInvalidate();
    }

    public void setFriction(float f) {
        if (f > BitmapDescriptorFactory.HUE_RED) {
            ViewConfiguration.get(getContext());
            this.f16171I = ViewConfiguration.getScrollFriction() / f;
            return;
        }
        throw new IllegalArgumentException("you should set a a positive float friction, now friction is " + f);
    }

    public void setHintText(String str) {
        if (m8821K(this.f16164E, str)) {
            return;
        }
        this.f16164E = str;
        this.f16174L = m8829C(this.f16190c0.getFontMetrics());
        this.f16197g = m8828D(this.f16164E, this.f16190c0);
        this.f16202i0.sendEmptyMessage(3);
    }

    public void setHintTextColor(int i) {
        if (this.f16189c == i) {
            return;
        }
        this.f16189c = i;
        this.f16190c0.setColor(i);
        postInvalidate();
    }

    public void setHintTextTypeface(Typeface typeface) {
        this.f16190c0.setTypeface(typeface);
    }

    public void setMaxValue(int i) {
        String[] strArr = this.f16192d0;
        Objects.requireNonNull(strArr, "mDisplayedValues should not be null");
        int i2 = this.f16227v;
        if ((i - i2) + 1 <= strArr.length) {
            this.f16229w = i;
            int i3 = this.f16223t;
            int i4 = (i - i2) + i3;
            this.f16225u = i4;
            setMinAndMaxShowIndex(i3, i4);
            m8796e0();
            return;
        }
        throw new IllegalArgumentException("(maxValue - mMinValue + 1) should not be greater than mDisplayedValues.length now  (maxValue - mMinValue + 1) is " + ((i - this.f16227v) + 1) + " and mDisplayedValues.length is " + this.f16192d0.length);
    }

    public void setMinAndMaxShowIndex(int i, int i2) {
        setMinAndMaxShowIndex(i, i2, true);
    }

    public void setMinValue(int i) {
        this.f16227v = i;
        this.f16223t = 0;
        m8796e0();
    }

    public void setNormalTextColor(int i) {
        if (this.f16186a == i) {
            return;
        }
        this.f16186a = i;
        postInvalidate();
    }

    public void setOnScrollListener(InterfaceC4953c interfaceC4953c) {
        this.f16208l0 = interfaceC4953c;
    }

    public void setOnValueChangeListenerInScrolling(InterfaceC4955e interfaceC4955e) {
        this.f16210m0 = interfaceC4955e;
    }

    public void setOnValueChangedListener(InterfaceC4954d interfaceC4954d) {
        this.f16206k0 = interfaceC4954d;
    }

    public void setOnValueChangedListenerRelativeToRaw(InterfaceC4956f interfaceC4956f) {
        this.f16204j0 = interfaceC4956f;
    }

    public void setPickedIndexRelativeToMin(int i) {
        if (i < 0 || i >= getOneRecycleSize()) {
            return;
        }
        this.f16158B = this.f16223t + i;
        m8780r(i, this.f16176N && this.f16179Q);
        postInvalidate();
    }

    public void setPickedIndexRelativeToRaw(int i) {
        int i2 = this.f16223t;
        if (i2 <= -1 || i2 > i || i > this.f16225u) {
            return;
        }
        this.f16158B = i;
        m8780r(i - i2, this.f16176N && this.f16179Q);
        postInvalidate();
    }

    public void setSelectedTextColor(int i) {
        if (this.f16187b == i) {
            return;
        }
        this.f16187b = i;
        postInvalidate();
    }

    public void setTextSizeNormal(int i) {
        if (this.f16191d == i) {
            return;
        }
        this.f16191d = i;
        postInvalidate();
    }

    public void setTextSizeSelected(int i) {
        if (this.f16193e == i) {
            return;
        }
        this.f16193e = i;
        postInvalidate();
    }

    public void setValue(int i) {
        int i2 = this.f16227v;
        if (i >= i2) {
            if (i <= this.f16229w) {
                setPickedIndexRelativeToRaw(i - i2);
                return;
            }
            throw new IllegalArgumentException("should not set a value greater than mMaxValue, value is " + i);
        }
        throw new IllegalArgumentException("should not set a value less than mMinValue, value is " + i);
    }

    public void setWrapSelectorWheel(boolean z) {
        if (this.f16176N != z) {
            if (!z) {
                if (this.f16212n0 == 0) {
                    m8822J();
                    return;
                } else {
                    this.f16180R = true;
                    return;
                }
            }
            this.f16176N = z;
            m8790h0();
            postInvalidate();
        }
    }

    public void setDisplayedValues(String[] strArr) {
        m8809W();
        m8808X();
        if (strArr == null) {
            throw new IllegalArgumentException("newDisplayedValues should not be null.");
        }
        boolean z = true;
        if ((this.f16229w - this.f16227v) + 1 <= strArr.length) {
            m8807Y(strArr);
            m8800c0(true);
            this.f16158B = this.f16223t + 0;
            m8780r(0, (this.f16176N && this.f16179Q) ? false : false);
            postInvalidate();
            this.f16202i0.sendEmptyMessage(3);
            return;
        }
        throw new IllegalArgumentException("mMaxValue - mMinValue + 1 should not be greater than mDisplayedValues.length, now ((mMaxValue - mMinValue + 1) is " + ((this.f16229w - this.f16227v) + 1) + " newDisplayedValues.length is " + strArr.length + ", you need to set MaxValue and MinValue before setDisplayedValues(String[])");
    }

    public void setMinAndMaxShowIndex(int i, int i2, boolean z) {
        if (i <= i2) {
            String[] strArr = this.f16192d0;
            if (strArr == null) {
                throw new IllegalArgumentException("mDisplayedValues should not be null, you need to set mDisplayedValues first.");
            }
            if (i >= 0) {
                boolean z2 = true;
                if (i > strArr.length - 1) {
                    throw new IllegalArgumentException("minShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is " + (this.f16192d0.length - 1) + " minShowIndex is " + i);
                } else if (i2 >= 0) {
                    if (i2 <= strArr.length - 1) {
                        this.f16223t = i;
                        this.f16225u = i2;
                        if (z) {
                            this.f16158B = i + 0;
                            m8780r(0, (this.f16176N && this.f16179Q) ? false : false);
                            postInvalidate();
                            return;
                        }
                        return;
                    }
                    throw new IllegalArgumentException("maxShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is " + (this.f16192d0.length - 1) + " maxShowIndex is " + i2);
                } else {
                    throw new IllegalArgumentException("maxShowIndex should not be less than 0, now maxShowIndex is " + i2);
                }
            }
            throw new IllegalArgumentException("minShowIndex should not be less than 0, now minShowIndex is " + i);
        }
        throw new IllegalArgumentException("minShowIndex should be less than maxShowIndex, minShowIndex is " + i + ", maxShowIndex is " + i2 + ".");
    }

    public NumberPickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16186a = -13421773;
        this.f16187b = -16746753;
        this.f16189c = -16746753;
        this.f16191d = 0;
        this.f16193e = 0;
        this.f16195f = 0;
        this.f16197g = 0;
        this.f16199h = 0;
        this.f16201i = 0;
        this.f16203j = 0;
        this.f16205k = 0;
        this.f16207l = 0;
        this.f16209m = -695533;
        this.f16211n = 2;
        this.f16213o = 0;
        this.f16215p = 0;
        this.f16217q = 3;
        this.f16219r = 0;
        this.f16221s = 0;
        this.f16223t = -1;
        this.f16225u = -1;
        this.f16227v = 0;
        this.f16229w = 0;
        this.f16231x = 0;
        this.f16233y = 0;
        this.f16235z = 0;
        this.f16156A = 0;
        this.f16158B = 0;
        this.f16160C = CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA;
        this.f16162D = 8;
        this.f16171I = 1.0f;
        this.f16172J = BitmapDescriptorFactory.HUE_RED;
        this.f16173K = BitmapDescriptorFactory.HUE_RED;
        this.f16174L = BitmapDescriptorFactory.HUE_RED;
        this.f16175M = true;
        this.f16176N = true;
        this.f16177O = false;
        this.f16178P = false;
        this.f16179Q = true;
        this.f16180R = false;
        this.f16181S = false;
        this.f16182T = true;
        this.f16185W = new Paint();
        this.f16188b0 = new TextPaint();
        this.f16190c0 = new Paint();
        this.f16212n0 = 0;
        this.f16222s0 = BitmapDescriptorFactory.HUE_RED;
        this.f16224t0 = BitmapDescriptorFactory.HUE_RED;
        this.f16226u0 = BitmapDescriptorFactory.HUE_RED;
        this.f16228v0 = false;
        this.f16161C0 = 0;
        this.f16163D0 = 0;
        this.f16165E0 = 0;
        this.f16167F0 = 0;
        this.f16169G0 = 0;
        m8824H(context, attributeSet);
        m8825G(context);
    }

    public NumberPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16186a = -13421773;
        this.f16187b = -16746753;
        this.f16189c = -16746753;
        this.f16191d = 0;
        this.f16193e = 0;
        this.f16195f = 0;
        this.f16197g = 0;
        this.f16199h = 0;
        this.f16201i = 0;
        this.f16203j = 0;
        this.f16205k = 0;
        this.f16207l = 0;
        this.f16209m = -695533;
        this.f16211n = 2;
        this.f16213o = 0;
        this.f16215p = 0;
        this.f16217q = 3;
        this.f16219r = 0;
        this.f16221s = 0;
        this.f16223t = -1;
        this.f16225u = -1;
        this.f16227v = 0;
        this.f16229w = 0;
        this.f16231x = 0;
        this.f16233y = 0;
        this.f16235z = 0;
        this.f16156A = 0;
        this.f16158B = 0;
        this.f16160C = CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA;
        this.f16162D = 8;
        this.f16171I = 1.0f;
        this.f16172J = BitmapDescriptorFactory.HUE_RED;
        this.f16173K = BitmapDescriptorFactory.HUE_RED;
        this.f16174L = BitmapDescriptorFactory.HUE_RED;
        this.f16175M = true;
        this.f16176N = true;
        this.f16177O = false;
        this.f16178P = false;
        this.f16179Q = true;
        this.f16180R = false;
        this.f16181S = false;
        this.f16182T = true;
        this.f16185W = new Paint();
        this.f16188b0 = new TextPaint();
        this.f16190c0 = new Paint();
        this.f16212n0 = 0;
        this.f16222s0 = BitmapDescriptorFactory.HUE_RED;
        this.f16224t0 = BitmapDescriptorFactory.HUE_RED;
        this.f16226u0 = BitmapDescriptorFactory.HUE_RED;
        this.f16228v0 = false;
        this.f16161C0 = 0;
        this.f16163D0 = 0;
        this.f16165E0 = 0;
        this.f16167F0 = 0;
        this.f16169G0 = 0;
        m8824H(context, attributeSet);
        m8825G(context);
    }
}
