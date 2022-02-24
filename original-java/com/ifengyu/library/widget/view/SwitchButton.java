package com.ifengyu.library.widget.view;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
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
import com.ifengyu.library.R$styleable;

/* loaded from: classes2.dex */
public class SwitchButton extends View implements Checkable {
    private static final int V = b(58.0f);
    private static final int W = b(36.0f);
    private Paint A;
    private Paint B;
    private e C;
    private e D;
    private e E;
    private ValueAnimator H;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private d Q;
    private long R;

    /* renamed from: a  reason: collision with root package name */
    private int f7219a;

    /* renamed from: b  reason: collision with root package name */
    private int f7220b;

    /* renamed from: c  reason: collision with root package name */
    private int f7221c;
    private float d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private float r;
    private int s;
    private int t;
    private float u;
    private float v;
    private float w;
    private float x;
    private float y;
    private float z;
    private RectF F = new RectF();
    private int G = 0;
    private final ArgbEvaluator I = new ArgbEvaluator();
    private boolean N = false;
    private boolean O = false;
    private boolean P = false;
    private Runnable S = new a();
    private ValueAnimator.AnimatorUpdateListener T = new b();
    private Animator.AnimatorListener U = new c();

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!SwitchButton.this.c()) {
                SwitchButton.this.f();
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int i = SwitchButton.this.G;
            if (i == 1 || i == 3 || i == 4) {
                SwitchButton.this.C.f7227c = ((Integer) SwitchButton.this.I.evaluate(floatValue, Integer.valueOf(SwitchButton.this.D.f7227c), Integer.valueOf(SwitchButton.this.E.f7227c))).intValue();
                SwitchButton.this.C.d = SwitchButton.this.D.d + ((SwitchButton.this.E.d - SwitchButton.this.D.d) * floatValue);
                if (SwitchButton.this.G != 1) {
                    SwitchButton.this.C.f7225a = SwitchButton.this.D.f7225a + ((SwitchButton.this.E.f7225a - SwitchButton.this.D.f7225a) * floatValue);
                }
                SwitchButton.this.C.f7226b = ((Integer) SwitchButton.this.I.evaluate(floatValue, Integer.valueOf(SwitchButton.this.D.f7226b), Integer.valueOf(SwitchButton.this.E.f7226b))).intValue();
            } else if (i == 5) {
                SwitchButton.this.C.f7225a = SwitchButton.this.D.f7225a + ((SwitchButton.this.E.f7225a - SwitchButton.this.D.f7225a) * floatValue);
                float f = (SwitchButton.this.C.f7225a - SwitchButton.this.y) / (SwitchButton.this.z - SwitchButton.this.y);
                SwitchButton.this.C.f7226b = ((Integer) SwitchButton.this.I.evaluate(f, Integer.valueOf(SwitchButton.this.m), Integer.valueOf(SwitchButton.this.n))).intValue();
                SwitchButton.this.C.d = SwitchButton.this.d * f;
                SwitchButton.this.C.f7227c = ((Integer) SwitchButton.this.I.evaluate(f, 0, Integer.valueOf(SwitchButton.this.p))).intValue();
            }
            SwitchButton.this.postInvalidate();
        }
    }

    /* loaded from: classes2.dex */
    class c implements Animator.AnimatorListener {
        c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            int i = SwitchButton.this.G;
            if (i == 1) {
                SwitchButton.this.G = 2;
                SwitchButton.this.C.f7227c = 0;
                SwitchButton.this.C.d = SwitchButton.this.d;
                SwitchButton.this.postInvalidate();
            } else if (i == 3) {
                SwitchButton.this.G = 0;
                SwitchButton.this.postInvalidate();
            } else if (i == 4) {
                SwitchButton.this.G = 0;
                SwitchButton.this.postInvalidate();
                SwitchButton.this.a();
            } else if (i == 5) {
                SwitchButton switchButton = SwitchButton.this;
                switchButton.J = true ^ switchButton.J;
                SwitchButton.this.G = 0;
                SwitchButton.this.postInvalidate();
                SwitchButton.this.a();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(SwitchButton switchButton, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        float f7225a;

        /* renamed from: b  reason: collision with root package name */
        int f7226b;

        /* renamed from: c  reason: collision with root package name */
        int f7227c;
        float d;

        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(e eVar) {
            this.f7225a = eVar.f7225a;
            this.f7226b = eVar.f7226b;
            this.f7227c = eVar.f7227c;
            this.d = eVar.d;
        }
    }

    public SwitchButton(Context context) {
        super(context);
        a(context, (AttributeSet) null);
    }

    private void setCheckedViewState(e eVar) {
        eVar.d = this.d;
        eVar.f7226b = this.n;
        eVar.f7227c = this.p;
        eVar.f7225a = this.z;
    }

    private void setUncheckViewState(e eVar) {
        eVar.d = 0.0f;
        eVar.f7226b = this.m;
        eVar.f7227c = 0;
        eVar.f7225a = this.y;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.J;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.B.setStrokeWidth(this.o);
        this.B.setStyle(Paint.Style.FILL);
        this.B.setColor(this.l);
        a(canvas, this.g, this.h, this.i, this.j, this.d, this.B);
        this.B.setStyle(Paint.Style.STROKE);
        this.B.setColor(this.m);
        a(canvas, this.g, this.h, this.i, this.j, this.d, this.B);
        if (this.M) {
            b(canvas);
        }
        float f = this.C.d * 0.5f;
        this.B.setStyle(Paint.Style.STROKE);
        this.B.setColor(this.C.f7226b);
        this.B.setStrokeWidth(this.o + (f * 2.0f));
        a(canvas, this.g + f, this.h + f, this.i - f, this.j - f, this.d, this.B);
        this.B.setStyle(Paint.Style.FILL);
        this.B.setStrokeWidth(1.0f);
        float f2 = this.g;
        float f3 = this.h;
        float f4 = this.d;
        a(canvas, f2, f3, f2 + (f4 * 2.0f), f3 + (f4 * 2.0f), 90.0f, 180.0f, this.B);
        float f5 = this.g;
        float f6 = this.d;
        float f7 = this.h;
        canvas.drawRect(f5 + f6, f7, this.C.f7225a, f7 + (f6 * 2.0f), this.B);
        if (this.M) {
            a(canvas);
        }
        a(canvas, this.C.f7225a, this.k);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode == 0 || mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(V, 1073741824);
        }
        if (mode2 == 0 || mode2 == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(W, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float max = Math.max(this.f7219a + this.f7220b, this.o);
        float f = i2 - max;
        float f2 = f - max;
        this.f = f2;
        float f3 = i - max;
        float f4 = f2 * 0.5f;
        this.d = f4;
        this.e = f4 - this.o;
        this.g = max;
        this.h = max;
        this.i = f3;
        this.j = f;
        this.k = (f + max) * 0.5f;
        this.y = max + f4;
        this.z = f3 - f4;
        if (isChecked()) {
            setCheckedViewState(this.C);
        } else {
            setUncheckViewState(this.C);
        }
        this.O = true;
        postInvalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (!isEnabled() || !isClickable()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.N = true;
            this.R = System.currentTimeMillis();
            removeCallbacks(this.S);
            postDelayed(this.S, 100L);
        } else if (actionMasked == 1) {
            this.N = false;
            removeCallbacks(this.S);
            if (System.currentTimeMillis() - this.R <= 300) {
                toggle();
            } else if (b()) {
                if (Math.max(0.0f, Math.min(1.0f, motionEvent.getX() / getWidth())) > 0.5f) {
                    z = true;
                }
                if (z == isChecked()) {
                    e();
                } else {
                    this.J = z;
                    g();
                }
            } else if (d()) {
                e();
            }
        } else if (actionMasked == 2) {
            float x = motionEvent.getX();
            if (d()) {
                float max = Math.max(0.0f, Math.min(1.0f, x / getWidth()));
                e eVar = this.C;
                float f = this.y;
                eVar.f7225a = f + ((this.z - f) * max);
            } else if (b()) {
                float max2 = Math.max(0.0f, Math.min(1.0f, x / getWidth()));
                e eVar2 = this.C;
                float f2 = this.y;
                eVar2.f7225a = f2 + ((this.z - f2) * max2);
                eVar2.f7226b = ((Integer) this.I.evaluate(max2, Integer.valueOf(this.m), Integer.valueOf(this.n))).intValue();
                postInvalidate();
            }
        } else if (actionMasked == 3) {
            this.N = false;
            removeCallbacks(this.S);
            if (d() || b()) {
                e();
            }
        }
        return true;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (z == isChecked()) {
            postInvalidate();
        } else {
            a(this.K, false);
        }
    }

    public void setEnableEffect(boolean z) {
        this.K = z;
    }

    public void setOnCheckedChangeListener(d dVar) {
        this.Q = dVar;
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
        if (this.L != z) {
            this.L = z;
            if (z) {
                this.A.setShadowLayer(this.f7219a, 0.0f, this.f7220b, this.f7221c);
            } else {
                this.A.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            }
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        a(true);
    }

    private void b(Canvas canvas) {
        a(canvas, this.s, this.t, this.i - this.u, this.k, this.v, this.B);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        return this.G != 0;
    }

    private boolean d() {
        int i = this.G;
        return i == 1 || i == 3;
    }

    private void e() {
        if (b() || d()) {
            if (this.H.isRunning()) {
                this.H.cancel();
            }
            this.G = 3;
            this.D.a(this.C);
            if (isChecked()) {
                setCheckedViewState(this.E);
            } else {
                setUncheckViewState(this.E);
            }
            this.H.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (!c() && this.N) {
            if (this.H.isRunning()) {
                this.H.cancel();
            }
            this.G = 1;
            this.D.a(this.C);
            this.E.a(this.C);
            if (isChecked()) {
                e eVar = this.E;
                int i = this.n;
                eVar.f7226b = i;
                eVar.f7225a = this.z;
                eVar.f7227c = i;
            } else {
                e eVar2 = this.E;
                eVar2.f7226b = this.m;
                eVar2.f7225a = this.y;
                eVar2.d = this.d;
            }
            this.H.start();
        }
    }

    private void g() {
        if (this.H.isRunning()) {
            this.H.cancel();
        }
        this.G = 4;
        this.D.a(this.C);
        if (isChecked()) {
            setCheckedViewState(this.E);
        } else {
            setUncheckViewState(this.E);
        }
        this.H.start();
    }

    private boolean b() {
        return this.G == 2;
    }

    private static int c(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getDimensionPixelOffset(i, i2);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = attributeSet != null ? context.obtainStyledAttributes(attributeSet, R$styleable.SwitchButton) : null;
        this.L = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_shadow_effect, true);
        this.s = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_uncheckcircle_color, -5592406);
        this.t = c(obtainStyledAttributes, R$styleable.SwitchButton_sb_uncheckcircle_width, b(1.5f));
        this.u = a(10.0f);
        this.v = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_uncheckcircle_radius, a(4.0f));
        this.w = a(4.0f);
        this.x = a(4.0f);
        this.f7219a = c(obtainStyledAttributes, R$styleable.SwitchButton_sb_shadow_radius, b(2.5f));
        this.f7220b = c(obtainStyledAttributes, R$styleable.SwitchButton_sb_shadow_offset, b(1.5f));
        this.f7221c = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_shadow_color, 855638016);
        this.m = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_uncheck_color, -2236963);
        this.n = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_checked_color, -11414681);
        this.o = c(obtainStyledAttributes, R$styleable.SwitchButton_sb_border_width, b(1.0f));
        this.p = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_checkline_color, -1);
        this.q = c(obtainStyledAttributes, R$styleable.SwitchButton_sb_checkline_width, b(1.0f));
        this.r = a(6.0f);
        int a2 = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_button_color, -1);
        int b2 = b(obtainStyledAttributes, R$styleable.SwitchButton_sb_effect_duration, 300);
        this.J = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_checked, false);
        this.M = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_show_indicator, true);
        this.l = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_background, -1);
        this.K = a(obtainStyledAttributes, R$styleable.SwitchButton_sb_enable_effect, true);
        if (obtainStyledAttributes != null) {
            obtainStyledAttributes.recycle();
        }
        this.B = new Paint(1);
        Paint paint = new Paint(1);
        this.A = paint;
        paint.setColor(a2);
        if (this.L) {
            this.A.setShadowLayer(this.f7219a, 0.0f, this.f7220b, this.f7221c);
        }
        this.C = new e();
        this.D = new e();
        this.E = new e();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.H = ofFloat;
        ofFloat.setDuration(b2);
        this.H.setRepeatCount(0);
        this.H.addUpdateListener(this.T);
        this.H.addListener(this.U);
        super.setClickable(true);
        setPadding(0, 0, 0, 0);
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
    }

    private static int b(float f) {
        return (int) a(f);
    }

    private static int b(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getInt(i, i2);
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public SwitchButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    @TargetApi(21)
    public SwitchButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet);
    }

    protected void a(Canvas canvas) {
        int i = this.C.f7227c;
        float f = this.q;
        float f2 = this.g;
        float f3 = this.d;
        float f4 = (f2 + f3) - this.w;
        float f5 = this.k;
        float f6 = this.r;
        a(canvas, i, f, f4, f5 - f6, (f2 + f3) - this.x, f5 + f6, this.B);
    }

    protected void a(Canvas canvas, int i, float f, float f2, float f3, float f4, float f5, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(i);
        paint.setStrokeWidth(f);
        canvas.drawLine(f2, f3, f4, f5, paint);
    }

    protected void a(Canvas canvas, int i, float f, float f2, float f3, float f4, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(i);
        paint.setStrokeWidth(f);
        canvas.drawCircle(f2, f3, f4, paint);
    }

    private void a(Canvas canvas, float f, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        if (Build.VERSION.SDK_INT >= 21) {
            canvas.drawArc(f, f2, f3, f4, f5, f6, true, paint);
            return;
        }
        this.F.set(f, f2, f3, f4);
        canvas.drawArc(this.F, f5, f6, true, paint);
    }

    private void a(Canvas canvas, float f, float f2, float f3, float f4, float f5, Paint paint) {
        if (Build.VERSION.SDK_INT >= 21) {
            canvas.drawRoundRect(f, f2, f3, f4, f5, f5, paint);
            return;
        }
        this.F.set(f, f2, f3, f4);
        canvas.drawRoundRect(this.F, f5, f5, paint);
    }

    private void a(Canvas canvas, float f, float f2) {
        canvas.drawCircle(f, f2, this.e, this.A);
        this.B.setStyle(Paint.Style.STROKE);
        this.B.setStrokeWidth(1.0f);
        this.B.setColor(-2236963);
        canvas.drawCircle(f, f2, this.e, this.B);
    }

    public void a(boolean z) {
        a(z, true);
    }

    private void a(boolean z, boolean z2) {
        if (isEnabled()) {
            if (this.P) {
                throw new RuntimeException("should NOT switch the state in method: [onCheckedChanged]!");
            } else if (!this.O) {
                this.J = !this.J;
                if (z2) {
                    a();
                }
            } else {
                if (this.H.isRunning()) {
                    this.H.cancel();
                }
                if (!this.K || !z) {
                    this.J = !this.J;
                    if (isChecked()) {
                        setCheckedViewState(this.C);
                    } else {
                        setUncheckViewState(this.C);
                    }
                    postInvalidate();
                    if (z2) {
                        a();
                        return;
                    }
                    return;
                }
                this.G = 5;
                this.D.a(this.C);
                if (isChecked()) {
                    setUncheckViewState(this.E);
                } else {
                    setCheckedViewState(this.E);
                }
                this.H.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        d dVar = this.Q;
        if (dVar != null) {
            this.P = true;
            dVar.a(this, isChecked());
        }
        this.P = false;
    }

    private static float a(float f) {
        return TypedValue.applyDimension(1, f, Resources.getSystem().getDisplayMetrics());
    }

    private static float a(TypedArray typedArray, int i, float f) {
        return typedArray == null ? f : typedArray.getDimension(i, f);
    }

    private static int a(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getColor(i, i2);
    }

    private static boolean a(TypedArray typedArray, int i, boolean z) {
        return typedArray == null ? z : typedArray.getBoolean(i, z);
    }
}
