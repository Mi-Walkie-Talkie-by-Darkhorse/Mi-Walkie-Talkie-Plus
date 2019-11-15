package com.ifengyu.library.widget.view;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Checkable;
import com.ifengyu.library.R;

public class SwitchButton extends View implements Checkable {
    private static final int a = b(58.0f);
    private static final int b = b(36.0f);
    private int A;
    private float B;
    private int C;
    private int D;
    private float E;
    private float F;
    private float G;
    private float H;
    /* access modifiers changed from: private */
    public float I;
    /* access modifiers changed from: private */
    public float J;
    private Paint K;
    private Paint L;
    /* access modifiers changed from: private */
    public b M;
    /* access modifiers changed from: private */
    public b N;
    /* access modifiers changed from: private */
    public b O;
    private RectF P = new RectF();
    /* access modifiers changed from: private */
    public int Q = 0;
    private ValueAnimator R;
    /* access modifiers changed from: private */
    public final ArgbEvaluator S = new ArgbEvaluator();
    /* access modifiers changed from: private */
    public boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean aa = false;
    private boolean ab = false;
    private boolean ac = false;
    private a ad;
    private long ae;
    private Runnable af = new Runnable() {
        public void run() {
            if (!SwitchButton.this.b()) {
                SwitchButton.this.e();
            }
        }
    };
    private AnimatorUpdateListener ag = new AnimatorUpdateListener() {
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            switch (SwitchButton.this.Q) {
                case 1:
                case 3:
                case 4:
                    SwitchButton.this.M.c = ((Integer) SwitchButton.this.S.evaluate(floatValue, Integer.valueOf(SwitchButton.this.N.c), Integer.valueOf(SwitchButton.this.O.c))).intValue();
                    SwitchButton.this.M.d = SwitchButton.this.N.d + ((SwitchButton.this.O.d - SwitchButton.this.N.d) * floatValue);
                    if (SwitchButton.this.Q != 1) {
                        SwitchButton.this.M.a = SwitchButton.this.N.a + ((SwitchButton.this.O.a - SwitchButton.this.N.a) * floatValue);
                    }
                    SwitchButton.this.M.b = ((Integer) SwitchButton.this.S.evaluate(floatValue, Integer.valueOf(SwitchButton.this.N.b), Integer.valueOf(SwitchButton.this.O.b))).intValue();
                    break;
                case 5:
                    SwitchButton.this.M.a = (floatValue * (SwitchButton.this.O.a - SwitchButton.this.N.a)) + SwitchButton.this.N.a;
                    float h = (SwitchButton.this.M.a - SwitchButton.this.I) / (SwitchButton.this.J - SwitchButton.this.I);
                    SwitchButton.this.M.b = ((Integer) SwitchButton.this.S.evaluate(h, Integer.valueOf(SwitchButton.this.w), Integer.valueOf(SwitchButton.this.x))).intValue();
                    SwitchButton.this.M.d = SwitchButton.this.l * h;
                    SwitchButton.this.M.c = ((Integer) SwitchButton.this.S.evaluate(h, Integer.valueOf(0), Integer.valueOf(SwitchButton.this.z))).intValue();
                    break;
            }
            SwitchButton.this.postInvalidate();
        }
    };
    private AnimatorListener ah = new AnimatorListener() {
        public void onAnimationStart(Animator animator) {
        }

        public void onAnimationEnd(Animator animator) {
            boolean z;
            switch (SwitchButton.this.Q) {
                case 1:
                    SwitchButton.this.Q = 2;
                    SwitchButton.this.M.c = 0;
                    SwitchButton.this.M.d = SwitchButton.this.l;
                    SwitchButton.this.postInvalidate();
                    return;
                case 3:
                    SwitchButton.this.Q = 0;
                    SwitchButton.this.postInvalidate();
                    return;
                case 4:
                    SwitchButton.this.Q = 0;
                    SwitchButton.this.postInvalidate();
                    SwitchButton.this.a();
                    return;
                case 5:
                    SwitchButton switchButton = SwitchButton.this;
                    if (!SwitchButton.this.T) {
                        z = true;
                    } else {
                        z = false;
                    }
                    switchButton.T = z;
                    SwitchButton.this.Q = 0;
                    SwitchButton.this.postInvalidate();
                    SwitchButton.this.a();
                    return;
                default:
                    return;
            }
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationRepeat(Animator animator) {
        }
    };
    private final int c = 0;
    private final int d = 1;
    private final int e = 2;
    private final int f = 3;
    private final int g = 4;
    private final int h = 5;
    private int i;
    private int j;
    private int k;
    /* access modifiers changed from: private */
    public float l;
    private float m;
    private float n;
    private float o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;
    private int v;
    /* access modifiers changed from: private */
    public int w;
    /* access modifiers changed from: private */
    public int x;
    private int y;
    /* access modifiers changed from: private */
    public int z;

    public interface a {
        void a(SwitchButton switchButton, boolean z);
    }

    private static class b {
        float a;
        int b;
        int c;
        float d;

        b() {
        }

        /* access modifiers changed from: private */
        public void a(b bVar) {
            this.a = bVar.a;
            this.b = bVar.b;
            this.c = bVar.c;
            this.d = bVar.d;
        }
    }

    public SwitchButton(Context context) {
        super(context);
        a(context, (AttributeSet) null);
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public SwitchButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet);
    }

    @TargetApi(21)
    public SwitchButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        a(context, attributeSet);
    }

    public final void setPadding(int i2, int i3, int i4, int i5) {
        super.setPadding(0, 0, 0, 0);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArray = null;
        if (attributeSet != null) {
            typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchButton);
        }
        this.V = a(typedArray, R.styleable.SwitchButton_sb_shadow_effect, true);
        this.C = c(typedArray, R.styleable.SwitchButton_sb_uncheckcircle_color, -5592406);
        this.D = b(typedArray, R.styleable.SwitchButton_sb_uncheckcircle_width, b(1.5f));
        this.E = a(10.0f);
        this.F = a(typedArray, R.styleable.SwitchButton_sb_uncheckcircle_radius, a(4.0f));
        this.G = a(4.0f);
        this.H = a(4.0f);
        this.i = b(typedArray, R.styleable.SwitchButton_sb_shadow_radius, b(2.5f));
        this.j = b(typedArray, R.styleable.SwitchButton_sb_shadow_offset, b(1.5f));
        this.k = c(typedArray, R.styleable.SwitchButton_sb_shadow_color, 855638016);
        this.w = c(typedArray, R.styleable.SwitchButton_sb_uncheck_color, -2236963);
        this.x = c(typedArray, R.styleable.SwitchButton_sb_checked_color, -11414681);
        this.y = b(typedArray, R.styleable.SwitchButton_sb_border_width, b(1.0f));
        this.z = c(typedArray, R.styleable.SwitchButton_sb_checkline_color, -1);
        this.A = b(typedArray, R.styleable.SwitchButton_sb_checkline_width, b(1.0f));
        this.B = a(6.0f);
        int c2 = c(typedArray, R.styleable.SwitchButton_sb_button_color, -1);
        int a2 = a(typedArray, R.styleable.SwitchButton_sb_effect_duration, 300);
        this.T = a(typedArray, R.styleable.SwitchButton_sb_checked, false);
        this.W = a(typedArray, R.styleable.SwitchButton_sb_show_indicator, true);
        this.v = c(typedArray, R.styleable.SwitchButton_sb_background, -1);
        this.U = a(typedArray, R.styleable.SwitchButton_sb_enable_effect, true);
        if (typedArray != null) {
            typedArray.recycle();
        }
        this.L = new Paint(1);
        this.K = new Paint(1);
        this.K.setColor(c2);
        if (this.V) {
            this.K.setShadowLayer((float) this.i, 0.0f, (float) this.j, this.k);
        }
        this.M = new b();
        this.N = new b();
        this.O = new b();
        this.R = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        this.R.setDuration((long) a2);
        this.R.setRepeatCount(0);
        this.R.addUpdateListener(this.ag);
        this.R.addListener(this.ah);
        super.setClickable(true);
        setPadding(0, 0, 0, 0);
        if (VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int mode = MeasureSpec.getMode(i2);
        int mode2 = MeasureSpec.getMode(i3);
        if (mode == 0 || mode == Integer.MIN_VALUE) {
            i2 = MeasureSpec.makeMeasureSpec(a, 1073741824);
        }
        if (mode2 == 0 || mode2 == Integer.MIN_VALUE) {
            i3 = MeasureSpec.makeMeasureSpec(b, 1073741824);
        }
        super.onMeasure(i2, i3);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        float max = (float) Math.max(this.i + this.j, this.y);
        this.n = (((float) i3) - max) - max;
        this.o = (((float) i2) - max) - max;
        this.l = this.n * 0.5f;
        this.m = this.l - ((float) this.y);
        this.p = max;
        this.q = max;
        this.r = ((float) i2) - max;
        this.s = ((float) i3) - max;
        this.t = (this.p + this.r) * 0.5f;
        this.u = (this.q + this.s) * 0.5f;
        this.I = this.p + this.l;
        this.J = this.r - this.l;
        if (isChecked()) {
            setCheckedViewState(this.M);
        } else {
            setUncheckViewState(this.M);
        }
        this.ab = true;
        postInvalidate();
    }

    private void setUncheckViewState(b bVar) {
        bVar.d = 0.0f;
        bVar.b = this.w;
        bVar.c = 0;
        bVar.a = this.I;
    }

    private void setCheckedViewState(b bVar) {
        bVar.d = this.l;
        bVar.b = this.x;
        bVar.c = this.z;
        bVar.a = this.J;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.L.setStrokeWidth((float) this.y);
        this.L.setStyle(Style.FILL);
        this.L.setColor(this.v);
        a(canvas, this.p, this.q, this.r, this.s, this.l, this.L);
        this.L.setStyle(Style.STROKE);
        this.L.setColor(this.w);
        a(canvas, this.p, this.q, this.r, this.s, this.l, this.L);
        if (this.W) {
            b(canvas);
        }
        float f2 = this.M.d * 0.5f;
        this.L.setStyle(Style.STROKE);
        this.L.setColor(this.M.b);
        this.L.setStrokeWidth(((float) this.y) + (f2 * 2.0f));
        a(canvas, this.p + f2, this.q + f2, this.r - f2, this.s - f2, this.l, this.L);
        this.L.setStyle(Style.FILL);
        this.L.setStrokeWidth(1.0f);
        a(canvas, this.p, this.q, this.p + (this.l * 2.0f), this.q + (this.l * 2.0f), 90.0f, 180.0f, this.L);
        Canvas canvas2 = canvas;
        canvas2.drawRect(this.l + this.p, this.q, this.M.a, (this.l * 2.0f) + this.q, this.L);
        if (this.W) {
            a(canvas);
        }
        a(canvas, this.M.a, this.u);
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas) {
        a(canvas, this.M.c, (float) this.A, (this.p + this.l) - this.G, this.u - this.B, (this.p + this.l) - this.H, this.u + this.B, this.L);
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, int i2, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        paint.setStyle(Style.STROKE);
        paint.setColor(i2);
        paint.setStrokeWidth(f2);
        canvas.drawLine(f3, f4, f5, f6, paint);
    }

    private void b(Canvas canvas) {
        a(canvas, this.C, (float) this.D, this.r - this.E, this.u, this.F, this.L);
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, int i2, float f2, float f3, float f4, float f5, Paint paint) {
        paint.setStyle(Style.STROKE);
        paint.setColor(i2);
        paint.setStrokeWidth(f2);
        canvas.drawCircle(f3, f4, f5, paint);
    }

    private void a(Canvas canvas, float f2, float f3, float f4, float f5, float f6, float f7, Paint paint) {
        if (VERSION.SDK_INT >= 21) {
            canvas.drawArc(f2, f3, f4, f5, f6, f7, true, paint);
            return;
        }
        this.P.set(f2, f3, f4, f5);
        canvas.drawArc(this.P, f6, f7, true, paint);
    }

    private void a(Canvas canvas, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        if (VERSION.SDK_INT >= 21) {
            canvas.drawRoundRect(f2, f3, f4, f5, f6, f6, paint);
            return;
        }
        this.P.set(f2, f3, f4, f5);
        canvas.drawRoundRect(this.P, f6, f6, paint);
    }

    private void a(Canvas canvas, float f2, float f3) {
        canvas.drawCircle(f2, f3, this.m, this.K);
        this.L.setStyle(Style.STROKE);
        this.L.setStrokeWidth(1.0f);
        this.L.setColor(-2236963);
        canvas.drawCircle(f2, f3, this.m, this.L);
    }

    public void setChecked(boolean z2) {
        if (z2 == isChecked()) {
            postInvalidate();
        } else {
            a(this.U, false);
        }
    }

    public boolean isChecked() {
        return this.T;
    }

    public void toggle() {
        a(true);
    }

    public void a(boolean z2) {
        a(z2, true);
    }

    private void a(boolean z2, boolean z3) {
        boolean z4 = true;
        if (isEnabled()) {
            if (this.ac) {
                throw new RuntimeException("should NOT switch the state in method: [onCheckedChanged]!");
            } else if (!this.ab) {
                if (this.T) {
                    z4 = false;
                }
                this.T = z4;
                if (z3) {
                    a();
                }
            } else {
                if (this.R.isRunning()) {
                    this.R.cancel();
                }
                if (!this.U || !z2) {
                    if (this.T) {
                        z4 = false;
                    }
                    this.T = z4;
                    if (isChecked()) {
                        setCheckedViewState(this.M);
                    } else {
                        setUncheckViewState(this.M);
                    }
                    postInvalidate();
                    if (z3) {
                        a();
                        return;
                    }
                    return;
                }
                this.Q = 5;
                this.N.a(this.M);
                if (isChecked()) {
                    setUncheckViewState(this.O);
                } else {
                    setCheckedViewState(this.O);
                }
                this.R.start();
            }
        }
    }

    /* access modifiers changed from: private */
    public void a() {
        if (this.ad != null) {
            this.ac = true;
            this.ad.a(this, isChecked());
        }
        this.ac = false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2 = false;
        if (!isEnabled() || !isClickable()) {
            return false;
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.aa = true;
                this.ae = System.currentTimeMillis();
                removeCallbacks(this.af);
                postDelayed(this.af, 100);
                break;
            case 1:
                this.aa = false;
                removeCallbacks(this.af);
                if (System.currentTimeMillis() - this.ae > 300) {
                    if (!d()) {
                        if (c()) {
                            f();
                            break;
                        }
                    } else {
                        if (Math.max(0.0f, Math.min(1.0f, motionEvent.getX() / ((float) getWidth()))) > 0.5f) {
                            z2 = true;
                        }
                        if (z2 != isChecked()) {
                            this.T = z2;
                            g();
                            break;
                        } else {
                            f();
                            break;
                        }
                    }
                } else {
                    toggle();
                    break;
                }
                break;
            case 2:
                float x2 = motionEvent.getX();
                if (!c()) {
                    if (d()) {
                        float max = Math.max(0.0f, Math.min(1.0f, x2 / ((float) getWidth())));
                        this.M.a = this.I + ((this.J - this.I) * max);
                        this.M.b = ((Integer) this.S.evaluate(max, Integer.valueOf(this.w), Integer.valueOf(this.x))).intValue();
                        postInvalidate();
                        break;
                    }
                } else {
                    float max2 = Math.max(0.0f, Math.min(1.0f, x2 / ((float) getWidth())));
                    this.M.a = (max2 * (this.J - this.I)) + this.I;
                    break;
                }
                break;
            case 3:
                this.aa = false;
                removeCallbacks(this.af);
                if (c() || d()) {
                    f();
                    break;
                }
        }
        return true;
    }

    /* access modifiers changed from: private */
    public boolean b() {
        return this.Q != 0;
    }

    private boolean c() {
        return this.Q == 1 || this.Q == 3;
    }

    private boolean d() {
        return this.Q == 2;
    }

    public void setShadowEffect(boolean z2) {
        if (this.V != z2) {
            this.V = z2;
            if (this.V) {
                this.K.setShadowLayer((float) this.i, 0.0f, (float) this.j, this.k);
            } else {
                this.K.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            }
        }
    }

    public void setEnableEffect(boolean z2) {
        this.U = z2;
    }

    /* access modifiers changed from: private */
    public void e() {
        if (!b() && this.aa) {
            if (this.R.isRunning()) {
                this.R.cancel();
            }
            this.Q = 1;
            this.N.a(this.M);
            this.O.a(this.M);
            if (isChecked()) {
                this.O.b = this.x;
                this.O.a = this.J;
                this.O.c = this.x;
            } else {
                this.O.b = this.w;
                this.O.a = this.I;
                this.O.d = this.l;
            }
            this.R.start();
        }
    }

    private void f() {
        if (d() || c()) {
            if (this.R.isRunning()) {
                this.R.cancel();
            }
            this.Q = 3;
            this.N.a(this.M);
            if (isChecked()) {
                setCheckedViewState(this.O);
            } else {
                setUncheckViewState(this.O);
            }
            this.R.start();
        }
    }

    private void g() {
        if (this.R.isRunning()) {
            this.R.cancel();
        }
        this.Q = 4;
        this.N.a(this.M);
        if (isChecked()) {
            setCheckedViewState(this.O);
        } else {
            setUncheckViewState(this.O);
        }
        this.R.start();
    }

    public final void setOnClickListener(OnClickListener onClickListener) {
    }

    public final void setOnLongClickListener(OnLongClickListener onLongClickListener) {
    }

    public void setOnCheckedChangeListener(a aVar) {
        this.ad = aVar;
    }

    private static float a(float f2) {
        return TypedValue.applyDimension(1, f2, Resources.getSystem().getDisplayMetrics());
    }

    private static int b(float f2) {
        return (int) a(f2);
    }

    private static int a(TypedArray typedArray, int i2, int i3) {
        return typedArray == null ? i3 : typedArray.getInt(i2, i3);
    }

    private static float a(TypedArray typedArray, int i2, float f2) {
        return typedArray == null ? f2 : typedArray.getDimension(i2, f2);
    }

    private static int b(TypedArray typedArray, int i2, int i3) {
        return typedArray == null ? i3 : typedArray.getDimensionPixelOffset(i2, i3);
    }

    private static int c(TypedArray typedArray, int i2, int i3) {
        return typedArray == null ? i3 : typedArray.getColor(i2, i3);
    }

    private static boolean a(TypedArray typedArray, int i2, boolean z2) {
        return typedArray == null ? z2 : typedArray.getBoolean(i2, z2);
    }
}
