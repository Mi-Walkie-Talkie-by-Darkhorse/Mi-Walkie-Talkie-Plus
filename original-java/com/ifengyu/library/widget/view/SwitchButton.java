package com.ifengyu.library.widget.view;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.library.R$styleable;

/* loaded from: classes2.dex */
public class SwitchButton extends View implements Checkable {

    /* renamed from: V */
    private static final int f16468V = m8540t(58.0f);

    /* renamed from: W */
    private static final int f16469W = m8540t(36.0f);

    /* renamed from: A */
    private Paint f16470A;

    /* renamed from: B */
    private Paint f16471B;

    /* renamed from: C */
    private C4979d f16472C;

    /* renamed from: D */
    private C4979d f16473D;

    /* renamed from: E */
    private C4979d f16474E;

    /* renamed from: F */
    private RectF f16475F;

    /* renamed from: G */
    private int f16476G;

    /* renamed from: H */
    private ValueAnimator f16477H;

    /* renamed from: I */
    private final ArgbEvaluator f16478I;

    /* renamed from: J */
    private boolean f16479J;

    /* renamed from: K */
    private boolean f16480K;

    /* renamed from: L */
    private boolean f16481L;

    /* renamed from: M */
    private boolean f16482M;

    /* renamed from: N */
    private boolean f16483N;

    /* renamed from: O */
    private boolean f16484O;

    /* renamed from: P */
    private boolean f16485P;

    /* renamed from: Q */
    private OnCheckedChangeListener f16486Q;

    /* renamed from: R */
    private long f16487R;

    /* renamed from: S */
    private Runnable f16488S;

    /* renamed from: T */
    private ValueAnimator.AnimatorUpdateListener f16489T;

    /* renamed from: U */
    private Animator.AnimatorListener f16490U;

    /* renamed from: a */
    private int f16491a;

    /* renamed from: b */
    private int f16492b;

    /* renamed from: c */
    private int f16493c;

    /* renamed from: d */
    private float f16494d;

    /* renamed from: e */
    private float f16495e;

    /* renamed from: f */
    private float f16496f;

    /* renamed from: g */
    private float f16497g;

    /* renamed from: h */
    private float f16498h;

    /* renamed from: i */
    private float f16499i;

    /* renamed from: j */
    private float f16500j;

    /* renamed from: k */
    private float f16501k;

    /* renamed from: l */
    private int f16502l;

    /* renamed from: m */
    private int f16503m;

    /* renamed from: n */
    private int f16504n;

    /* renamed from: o */
    private int f16505o;

    /* renamed from: p */
    private int f16506p;

    /* renamed from: q */
    private int f16507q;

    /* renamed from: r */
    private float f16508r;

    /* renamed from: s */
    private int f16509s;

    /* renamed from: t */
    private int f16510t;

    /* renamed from: u */
    private float f16511u;

    /* renamed from: v */
    private float f16512v;

    /* renamed from: w */
    private float f16513w;

    /* renamed from: x */
    private float f16514x;

    /* renamed from: y */
    private float f16515y;

    /* renamed from: z */
    private float f16516z;

    /* loaded from: classes2.dex */
    public interface OnCheckedChangeListener {
        /* renamed from: a */
        void m8533a(SwitchButton switchButton, boolean z);
    }

    /* renamed from: com.ifengyu.library.widget.view.SwitchButton$a */
    /* loaded from: classes2.dex */
    class RunnableC4976a implements Runnable {
        RunnableC4976a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwitchButton.this.m8571D()) {
                return;
            }
            SwitchButton.this.m8563L();
        }
    }

    /* renamed from: com.ifengyu.library.widget.view.SwitchButton$b */
    /* loaded from: classes2.dex */
    class C4977b implements ValueAnimator.AnimatorUpdateListener {
        C4977b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int i = SwitchButton.this.f16476G;
            if (i == 1 || i == 3 || i == 4) {
                SwitchButton.this.f16472C.f16522c = ((Integer) SwitchButton.this.f16478I.evaluate(floatValue, Integer.valueOf(SwitchButton.this.f16473D.f16522c), Integer.valueOf(SwitchButton.this.f16474E.f16522c))).intValue();
                SwitchButton.this.f16472C.f16523d = SwitchButton.this.f16473D.f16523d + ((SwitchButton.this.f16474E.f16523d - SwitchButton.this.f16473D.f16523d) * floatValue);
                if (SwitchButton.this.f16476G != 1) {
                    SwitchButton.this.f16472C.f16520a = SwitchButton.this.f16473D.f16520a + ((SwitchButton.this.f16474E.f16520a - SwitchButton.this.f16473D.f16520a) * floatValue);
                }
                SwitchButton.this.f16472C.f16521b = ((Integer) SwitchButton.this.f16478I.evaluate(floatValue, Integer.valueOf(SwitchButton.this.f16473D.f16521b), Integer.valueOf(SwitchButton.this.f16474E.f16521b))).intValue();
            } else if (i == 5) {
                SwitchButton.this.f16472C.f16520a = SwitchButton.this.f16473D.f16520a + ((SwitchButton.this.f16474E.f16520a - SwitchButton.this.f16473D.f16520a) * floatValue);
                float f = (SwitchButton.this.f16472C.f16520a - SwitchButton.this.f16515y) / (SwitchButton.this.f16516z - SwitchButton.this.f16515y);
                SwitchButton.this.f16472C.f16521b = ((Integer) SwitchButton.this.f16478I.evaluate(f, Integer.valueOf(SwitchButton.this.f16503m), Integer.valueOf(SwitchButton.this.f16504n))).intValue();
                SwitchButton.this.f16472C.f16523d = SwitchButton.this.f16494d * f;
                SwitchButton.this.f16472C.f16522c = ((Integer) SwitchButton.this.f16478I.evaluate(f, 0, Integer.valueOf(SwitchButton.this.f16506p))).intValue();
            }
            SwitchButton.this.postInvalidate();
        }
    }

    /* renamed from: com.ifengyu.library.widget.view.SwitchButton$c */
    /* loaded from: classes2.dex */
    class C4978c implements Animator.AnimatorListener {
        C4978c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            int i = SwitchButton.this.f16476G;
            if (i == 1) {
                SwitchButton.this.f16476G = 2;
                SwitchButton.this.f16472C.f16522c = 0;
                SwitchButton.this.f16472C.f16523d = SwitchButton.this.f16494d;
                SwitchButton.this.postInvalidate();
            } else if (i == 3) {
                SwitchButton.this.f16476G = 0;
                SwitchButton.this.postInvalidate();
            } else if (i == 4) {
                SwitchButton.this.f16476G = 0;
                SwitchButton.this.postInvalidate();
                SwitchButton.this.m8542r();
            } else if (i != 5) {
            } else {
                SwitchButton switchButton = SwitchButton.this;
                switchButton.f16479J = true ^ switchButton.f16479J;
                SwitchButton.this.f16476G = 0;
                SwitchButton.this.postInvalidate();
                SwitchButton.this.m8542r();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.ifengyu.library.widget.view.SwitchButton$d */
    /* loaded from: classes2.dex */
    public static class C4979d {

        /* renamed from: a */
        float f16520a;

        /* renamed from: b */
        int f16521b;

        /* renamed from: c */
        int f16522c;

        /* renamed from: d */
        float f16523d;

        C4979d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public void m8531b(C4979d c4979d) {
            this.f16520a = c4979d.f16520a;
            this.f16521b = c4979d.f16521b;
            this.f16522c = c4979d.f16522c;
            this.f16523d = c4979d.f16523d;
        }
    }

    public SwitchButton(Context context) {
        super(context);
        this.f16475F = new RectF();
        this.f16476G = 0;
        this.f16478I = new ArgbEvaluator();
        this.f16483N = false;
        this.f16484O = false;
        this.f16485P = false;
        this.f16488S = new RunnableC4976a();
        this.f16489T = new C4977b();
        this.f16490U = new C4978c();
        m8573B(context, null);
    }

    /* renamed from: B */
    private void m8573B(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = attributeSet != null ? context.obtainStyledAttributes(attributeSet, R$styleable.SwitchButton) : null;
        this.f16481L = m8569F(obtainStyledAttributes, R$styleable.SwitchButton_sb_shadow_effect, true);
        this.f16509s = m8568G(obtainStyledAttributes, R$styleable.SwitchButton_sb_uncheckcircle_color, -5592406);
        this.f16510t = m8565J(obtainStyledAttributes, R$styleable.SwitchButton_sb_uncheckcircle_width, m8540t(1.5f));
        this.f16511u = m8541s(10.0f);
        this.f16512v = m8566I(obtainStyledAttributes, R$styleable.SwitchButton_sb_uncheckcircle_radius, m8541s(4.0f));
        this.f16513w = m8541s(4.0f);
        this.f16514x = m8541s(4.0f);
        this.f16491a = m8565J(obtainStyledAttributes, R$styleable.SwitchButton_sb_shadow_radius, m8540t(2.5f));
        this.f16492b = m8565J(obtainStyledAttributes, R$styleable.SwitchButton_sb_shadow_offset, m8540t(1.5f));
        this.f16493c = m8568G(obtainStyledAttributes, R$styleable.SwitchButton_sb_shadow_color, 855638016);
        this.f16503m = m8568G(obtainStyledAttributes, R$styleable.SwitchButton_sb_uncheck_color, -2236963);
        this.f16504n = m8568G(obtainStyledAttributes, R$styleable.SwitchButton_sb_checked_color, -11414681);
        this.f16505o = m8565J(obtainStyledAttributes, R$styleable.SwitchButton_sb_border_width, m8540t(1.0f));
        this.f16506p = m8568G(obtainStyledAttributes, R$styleable.SwitchButton_sb_checkline_color, -1);
        this.f16507q = m8565J(obtainStyledAttributes, R$styleable.SwitchButton_sb_checkline_width, m8540t(1.0f));
        this.f16508r = m8541s(6.0f);
        int m8568G = m8568G(obtainStyledAttributes, R$styleable.SwitchButton_sb_button_color, -1);
        int m8567H = m8567H(obtainStyledAttributes, R$styleable.SwitchButton_sb_effect_duration, 300);
        this.f16479J = m8569F(obtainStyledAttributes, R$styleable.SwitchButton_sb_checked, false);
        this.f16482M = m8569F(obtainStyledAttributes, R$styleable.SwitchButton_sb_show_indicator, true);
        this.f16502l = m8568G(obtainStyledAttributes, R$styleable.SwitchButton_sb_background, -1);
        this.f16480K = m8569F(obtainStyledAttributes, R$styleable.SwitchButton_sb_enable_effect, true);
        if (obtainStyledAttributes != null) {
            obtainStyledAttributes.recycle();
        }
        this.f16471B = new Paint(1);
        Paint paint = new Paint(1);
        this.f16470A = paint;
        paint.setColor(m8568G);
        if (this.f16481L) {
            this.f16470A.setShadowLayer(this.f16491a, BitmapDescriptorFactory.HUE_RED, this.f16492b, this.f16493c);
        }
        this.f16472C = new C4979d();
        this.f16473D = new C4979d();
        this.f16474E = new C4979d();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f16477H = ofFloat;
        ofFloat.setDuration(m8567H);
        this.f16477H.setRepeatCount(0);
        this.f16477H.addUpdateListener(this.f16489T);
        this.f16477H.addListener(this.f16490U);
        super.setClickable(true);
        setPadding(0, 0, 0, 0);
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
    }

    /* renamed from: C */
    private boolean m8572C() {
        return this.f16476G == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public boolean m8571D() {
        return this.f16476G != 0;
    }

    /* renamed from: E */
    private boolean m8570E() {
        int i = this.f16476G;
        return i == 1 || i == 3;
    }

    /* renamed from: F */
    private static boolean m8569F(TypedArray typedArray, int i, boolean z) {
        return typedArray == null ? z : typedArray.getBoolean(i, z);
    }

    /* renamed from: G */
    private static int m8568G(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getColor(i, i2);
    }

    /* renamed from: H */
    private static int m8567H(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: I */
    private static float m8566I(TypedArray typedArray, int i, float f) {
        return typedArray == null ? f : typedArray.getDimension(i, f);
    }

    /* renamed from: J */
    private static int m8565J(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: K */
    private void m8564K() {
        if (m8572C() || m8570E()) {
            if (this.f16477H.isRunning()) {
                this.f16477H.cancel();
            }
            this.f16476G = 3;
            this.f16473D.m8531b(this.f16472C);
            if (isChecked()) {
                setCheckedViewState(this.f16474E);
            } else {
                setUncheckViewState(this.f16474E);
            }
            this.f16477H.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public void m8563L() {
        if (!m8571D() && this.f16483N) {
            if (this.f16477H.isRunning()) {
                this.f16477H.cancel();
            }
            this.f16476G = 1;
            this.f16473D.m8531b(this.f16472C);
            this.f16474E.m8531b(this.f16472C);
            if (isChecked()) {
                C4979d c4979d = this.f16474E;
                int i = this.f16504n;
                c4979d.f16521b = i;
                c4979d.f16520a = this.f16516z;
                c4979d.f16522c = i;
            } else {
                C4979d c4979d2 = this.f16474E;
                c4979d2.f16521b = this.f16503m;
                c4979d2.f16520a = this.f16515y;
                c4979d2.f16523d = this.f16494d;
            }
            this.f16477H.start();
        }
    }

    /* renamed from: M */
    private void m8562M() {
        if (this.f16477H.isRunning()) {
            this.f16477H.cancel();
        }
        this.f16476G = 4;
        this.f16473D.m8531b(this.f16472C);
        if (isChecked()) {
            setCheckedViewState(this.f16474E);
        } else {
            setUncheckViewState(this.f16474E);
        }
        this.f16477H.start();
    }

    /* renamed from: O */
    private void m8560O(boolean z, boolean z2) {
        if (isEnabled()) {
            if (!this.f16485P) {
                if (!this.f16484O) {
                    this.f16479J = !this.f16479J;
                    if (z2) {
                        m8542r();
                        return;
                    }
                    return;
                }
                if (this.f16477H.isRunning()) {
                    this.f16477H.cancel();
                }
                if (this.f16480K && z) {
                    this.f16476G = 5;
                    this.f16473D.m8531b(this.f16472C);
                    if (isChecked()) {
                        setUncheckViewState(this.f16474E);
                    } else {
                        setCheckedViewState(this.f16474E);
                    }
                    this.f16477H.start();
                    return;
                }
                this.f16479J = !this.f16479J;
                if (isChecked()) {
                    setCheckedViewState(this.f16472C);
                } else {
                    setUncheckViewState(this.f16472C);
                }
                postInvalidate();
                if (z2) {
                    m8542r();
                    return;
                }
                return;
            }
            throw new RuntimeException("should NOT switch the state in method: [onCheckedChanged]!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m8542r() {
        OnCheckedChangeListener onCheckedChangeListener = this.f16486Q;
        if (onCheckedChangeListener != null) {
            this.f16485P = true;
            onCheckedChangeListener.m8533a(this, isChecked());
        }
        this.f16485P = false;
    }

    /* renamed from: s */
    private static float m8541s(float f) {
        return TypedValue.applyDimension(1, f, Resources.getSystem().getDisplayMetrics());
    }

    private void setCheckedViewState(C4979d c4979d) {
        c4979d.f16523d = this.f16494d;
        c4979d.f16521b = this.f16504n;
        c4979d.f16522c = this.f16506p;
        c4979d.f16520a = this.f16516z;
    }

    private void setUncheckViewState(C4979d c4979d) {
        c4979d.f16523d = BitmapDescriptorFactory.HUE_RED;
        c4979d.f16521b = this.f16503m;
        c4979d.f16522c = 0;
        c4979d.f16520a = this.f16515y;
    }

    /* renamed from: t */
    private static int m8540t(float f) {
        return (int) m8541s(f);
    }

    /* renamed from: u */
    private void m8539u(Canvas canvas, float f, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        if (Build.VERSION.SDK_INT >= 21) {
            canvas.drawArc(f, f2, f3, f4, f5, f6, true, paint);
            return;
        }
        this.f16475F.set(f, f2, f3, f4);
        canvas.drawArc(this.f16475F, f5, f6, true, paint);
    }

    /* renamed from: v */
    private void m8538v(Canvas canvas, float f, float f2) {
        canvas.drawCircle(f, f2, this.f16495e, this.f16470A);
        this.f16471B.setStyle(Paint.Style.STROKE);
        this.f16471B.setStrokeWidth(1.0f);
        this.f16471B.setColor(-2236963);
        canvas.drawCircle(f, f2, this.f16495e, this.f16471B);
    }

    /* renamed from: y */
    private void m8535y(Canvas canvas, float f, float f2, float f3, float f4, float f5, Paint paint) {
        if (Build.VERSION.SDK_INT >= 21) {
            canvas.drawRoundRect(f, f2, f3, f4, f5, f5, paint);
            return;
        }
        this.f16475F.set(f, f2, f3, f4);
        canvas.drawRoundRect(this.f16475F, f5, f5, paint);
    }

    /* renamed from: z */
    private void m8534z(Canvas canvas) {
        m8574A(canvas, this.f16509s, this.f16510t, this.f16499i - this.f16511u, this.f16501k, this.f16512v, this.f16471B);
    }

    /* renamed from: A */
    protected void m8574A(Canvas canvas, int i, float f, float f2, float f3, float f4, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(i);
        paint.setStrokeWidth(f);
        canvas.drawCircle(f2, f3, f4, paint);
    }

    /* renamed from: N */
    public void m8561N(boolean z) {
        m8560O(z, true);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f16479J;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f16471B.setStrokeWidth(this.f16505o);
        this.f16471B.setStyle(Paint.Style.FILL);
        this.f16471B.setColor(this.f16502l);
        m8535y(canvas, this.f16497g, this.f16498h, this.f16499i, this.f16500j, this.f16494d, this.f16471B);
        this.f16471B.setStyle(Paint.Style.STROKE);
        this.f16471B.setColor(this.f16503m);
        m8535y(canvas, this.f16497g, this.f16498h, this.f16499i, this.f16500j, this.f16494d, this.f16471B);
        if (this.f16482M) {
            m8534z(canvas);
        }
        float f = this.f16472C.f16523d * 0.5f;
        this.f16471B.setStyle(Paint.Style.STROKE);
        this.f16471B.setColor(this.f16472C.f16521b);
        this.f16471B.setStrokeWidth(this.f16505o + (f * 2.0f));
        m8535y(canvas, this.f16497g + f, this.f16498h + f, this.f16499i - f, this.f16500j - f, this.f16494d, this.f16471B);
        this.f16471B.setStyle(Paint.Style.FILL);
        this.f16471B.setStrokeWidth(1.0f);
        float f2 = this.f16497g;
        float f3 = this.f16498h;
        float f4 = this.f16494d;
        m8539u(canvas, f2, f3, f2 + (f4 * 2.0f), f3 + (f4 * 2.0f), 90.0f, 180.0f, this.f16471B);
        float f5 = this.f16497g;
        float f6 = this.f16494d;
        float f7 = this.f16498h;
        canvas.drawRect(f5 + f6, f7, this.f16472C.f16520a, f7 + (f6 * 2.0f), this.f16471B);
        if (this.f16482M) {
            m8537w(canvas);
        }
        m8538v(canvas, this.f16472C.f16520a, this.f16501k);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode == 0 || mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(f16468V, 1073741824);
        }
        if (mode2 == 0 || mode2 == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(f16469W, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float max = Math.max(this.f16491a + this.f16492b, this.f16505o);
        float f = i2 - max;
        float f2 = f - max;
        this.f16496f = f2;
        float f3 = i - max;
        float f4 = f2 * 0.5f;
        this.f16494d = f4;
        this.f16495e = f2 * 0.3f;
        this.f16497g = max;
        this.f16498h = max;
        this.f16499i = f3;
        this.f16500j = f;
        this.f16501k = (f + max) * 0.5f;
        this.f16515y = max + f4;
        this.f16516z = f3 - f4;
        if (isChecked()) {
            setCheckedViewState(this.f16472C);
        } else {
            setUncheckViewState(this.f16472C);
        }
        this.f16484O = true;
        postInvalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && isClickable()) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.f16483N = true;
                this.f16487R = System.currentTimeMillis();
                removeCallbacks(this.f16488S);
                postDelayed(this.f16488S, 100L);
            } else if (actionMasked == 1) {
                this.f16483N = false;
                removeCallbacks(this.f16488S);
                if (System.currentTimeMillis() - this.f16487R <= 300) {
                    toggle();
                } else if (m8572C()) {
                    boolean z = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, motionEvent.getX() / ((float) getWidth()))) > 0.5f;
                    if (z == isChecked()) {
                        m8564K();
                    } else {
                        this.f16479J = z;
                        m8562M();
                    }
                } else if (m8570E()) {
                    m8564K();
                }
            } else if (actionMasked == 2) {
                float x = motionEvent.getX();
                if (m8570E()) {
                    float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, x / getWidth()));
                    C4979d c4979d = this.f16472C;
                    float f = this.f16515y;
                    c4979d.f16520a = f + ((this.f16516z - f) * max);
                } else if (m8572C()) {
                    float max2 = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, x / getWidth()));
                    C4979d c4979d2 = this.f16472C;
                    float f2 = this.f16515y;
                    c4979d2.f16520a = f2 + ((this.f16516z - f2) * max2);
                    c4979d2.f16521b = ((Integer) this.f16478I.evaluate(max2, Integer.valueOf(this.f16503m), Integer.valueOf(this.f16504n))).intValue();
                    postInvalidate();
                }
            } else if (actionMasked == 3) {
                this.f16483N = false;
                removeCallbacks(this.f16488S);
                if (m8570E() || m8572C()) {
                    m8564K();
                }
            }
            return true;
        }
        return false;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (z == isChecked()) {
            postInvalidate();
        } else {
            m8560O(this.f16480K, false);
        }
    }

    public void setEnableEffect(boolean z) {
        this.f16480K = z;
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.f16486Q = onCheckedChangeListener;
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
    }

    @Override // android.view.View
    public final void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(0, 0, 0, 0);
    }

    public void setShadowEffect(boolean z) {
        if (this.f16481L == z) {
            return;
        }
        this.f16481L = z;
        if (z) {
            this.f16470A.setShadowLayer(this.f16491a, BitmapDescriptorFactory.HUE_RED, this.f16492b, this.f16493c);
        } else {
            this.f16470A.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        m8561N(true);
    }

    /* renamed from: w */
    protected void m8537w(Canvas canvas) {
        int i = this.f16472C.f16522c;
        float f = this.f16507q;
        float f2 = this.f16497g;
        float f3 = this.f16494d;
        float f4 = (f2 + f3) - this.f16513w;
        float f5 = this.f16501k;
        float f6 = this.f16508r;
        m8536x(canvas, i, f, f4, f5 - f6, (f2 + f3) - this.f16514x, f5 + f6, this.f16471B);
    }

    /* renamed from: x */
    protected void m8536x(Canvas canvas, int i, float f, float f2, float f3, float f4, float f5, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(i);
        paint.setStrokeWidth(f);
        canvas.drawLine(f2, f3, f4, f5, paint);
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16475F = new RectF();
        this.f16476G = 0;
        this.f16478I = new ArgbEvaluator();
        this.f16483N = false;
        this.f16484O = false;
        this.f16485P = false;
        this.f16488S = new RunnableC4976a();
        this.f16489T = new C4977b();
        this.f16490U = new C4978c();
        m8573B(context, attributeSet);
    }

    public SwitchButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16475F = new RectF();
        this.f16476G = 0;
        this.f16478I = new ArgbEvaluator();
        this.f16483N = false;
        this.f16484O = false;
        this.f16485P = false;
        this.f16488S = new RunnableC4976a();
        this.f16489T = new C4977b();
        this.f16490U = new C4978c();
        m8573B(context, attributeSet);
    }
}
