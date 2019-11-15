package com.github.mikephil.charting.charts;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.github.mikephil.charting.components.XAxis.XAxisPosition;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.b;
import com.github.mikephil.charting.f.q;
import com.github.mikephil.charting.f.t;
import com.github.mikephil.charting.g.d;
import com.github.mikephil.charting.g.g;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.listener.a;

@SuppressLint({"RtlHardcoded"})
public abstract class BarLineChartBase<T extends b<? extends com.github.mikephil.charting.e.b.b<? extends Entry>>> extends Chart<T> implements com.github.mikephil.charting.e.a.b {
    protected d A = d.a(0.0d, 0.0d);
    protected d B = d.a(0.0d, 0.0d);
    protected float[] C = new float[2];
    private boolean a = true;
    private boolean ac = true;
    private boolean ad = true;
    private long ae = 0;
    private long af = 0;
    private RectF ag = new RectF();
    private boolean ah = false;
    protected int b = 100;
    protected boolean c = false;
    protected boolean d = false;
    protected boolean e = true;
    protected boolean f = true;
    protected Paint g;
    protected Paint h;
    protected boolean i = false;
    protected boolean j = false;
    protected boolean k = false;
    protected float l = 15.0f;
    protected boolean m = false;
    protected com.github.mikephil.charting.listener.d n;
    protected YAxis o;
    protected YAxis p;
    protected t q;
    protected t r;
    protected g s;
    protected g t;
    protected q u;
    protected Matrix v = new Matrix();
    protected Matrix w = new Matrix();
    protected Matrix x = new Matrix();
    protected Matrix y = new Matrix();
    protected float[] z = new float[2];

    public /* bridge */ /* synthetic */ b getData() {
        return (b) super.getData();
    }

    public BarLineChartBase(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public BarLineChartBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BarLineChartBase(Context context) {
        super(context);
    }

    /* access modifiers changed from: protected */
    public void a() {
        super.a();
        this.o = new YAxis(AxisDependency.LEFT);
        this.p = new YAxis(AxisDependency.RIGHT);
        this.s = new g(this.S);
        this.t = new g(this.S);
        this.q = new t(this.S, this.o, this.s);
        this.r = new t(this.S, this.p, this.t);
        this.u = new q(this.S, this.J, this.s);
        setHighlighter(new com.github.mikephil.charting.d.b(this));
        this.O = new a(this, this.S.p(), 3.0f);
        this.g = new Paint();
        this.g.setStyle(Style.FILL);
        this.g.setColor(Color.rgb(240, 240, 240));
        this.h = new Paint();
        this.h.setStyle(Style.STROKE);
        this.h.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.h.setStrokeWidth(i.a(1.0f));
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.E != null) {
            long currentTimeMillis = System.currentTimeMillis();
            a(canvas);
            if (this.o.x()) {
                this.q.a(this.o.t, this.o.s, this.o.D());
            }
            if (this.p.x()) {
                this.r.a(this.p.t, this.p.s, this.p.D());
            }
            if (this.J.x()) {
                this.u.a(this.J.t, this.J.s, false);
            }
            this.u.b(canvas);
            this.q.b(canvas);
            this.r.b(canvas);
            if (this.c) {
                i();
            }
            this.u.c(canvas);
            this.q.c(canvas);
            this.r.c(canvas);
            if (this.J.n()) {
                this.u.d(canvas);
            }
            if (this.o.n()) {
                this.q.e(canvas);
            }
            if (this.p.n()) {
                this.r.e(canvas);
            }
            int save = canvas.save();
            canvas.clipRect(this.S.k());
            this.Q.a(canvas);
            if (v()) {
                this.Q.a(canvas, this.U);
            }
            canvas.restoreToCount(save);
            this.Q.c(canvas);
            if (!this.J.n()) {
                this.u.d(canvas);
            }
            if (!this.o.n()) {
                this.q.e(canvas);
            }
            if (!this.p.n()) {
                this.r.e(canvas);
            }
            this.u.a(canvas);
            this.q.a(canvas);
            this.r.a(canvas);
            if (p()) {
                int save2 = canvas.save();
                canvas.clipRect(this.S.k());
                this.Q.b(canvas);
                canvas.restoreToCount(save2);
            } else {
                this.Q.b(canvas);
            }
            this.P.a(canvas);
            b(canvas);
            c(canvas);
            if (this.D) {
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                this.ae += currentTimeMillis2;
                this.af++;
                Log.i("MPAndroidChart", "Drawtime: " + currentTimeMillis2 + " ms, average: " + (this.ae / this.af) + " ms, cycles: " + this.af);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void f() {
        if (this.D) {
            Log.i("MPAndroidChart", "Preparing Value-Px Matrix, xmin: " + this.J.t + ", xmax: " + this.J.s + ", xdelta: " + this.J.u);
        }
        this.t.a(this.J.t, this.J.u, this.p.u, this.p.t);
        this.s.a(this.J.t, this.J.u, this.o.u, this.o.t);
    }

    /* access modifiers changed from: protected */
    public void g() {
        this.t.a(this.p.D());
        this.s.a(this.o.D());
    }

    public void h() {
        if (this.E != null) {
            if (this.D) {
                Log.i("MPAndroidChart", "Preparing...");
            }
            if (this.Q != null) {
                this.Q.a();
            }
            b();
            this.q.a(this.o.t, this.o.s, this.o.D());
            this.r.a(this.p.t, this.p.s, this.p.D());
            this.u.a(this.J.t, this.J.s, false);
            if (this.M != null) {
                this.P.a(this.E);
            }
            j();
        } else if (this.D) {
            Log.i("MPAndroidChart", "Preparing... DATA NOT SET.");
        }
    }

    /* access modifiers changed from: protected */
    public void i() {
        ((b) this.E).a(getLowestVisibleX(), getHighestVisibleX());
        this.J.a(((b) this.E).g(), ((b) this.E).h());
        this.o.a(((b) this.E).a(AxisDependency.LEFT), ((b) this.E).b(AxisDependency.LEFT));
        this.p.a(((b) this.E).a(AxisDependency.RIGHT), ((b) this.E).b(AxisDependency.RIGHT));
        j();
    }

    /* access modifiers changed from: protected */
    public void b() {
        this.J.a(((b) this.E).g(), ((b) this.E).h());
        this.o.a(((b) this.E).a(AxisDependency.LEFT), ((b) this.E).b(AxisDependency.LEFT));
        this.p.a(((b) this.E).a(AxisDependency.RIGHT), ((b) this.E).b(AxisDependency.RIGHT));
    }

    /* access modifiers changed from: protected */
    public void a(RectF rectF) {
        rectF.left = 0.0f;
        rectF.right = 0.0f;
        rectF.top = 0.0f;
        rectF.bottom = 0.0f;
        if (this.M != null && this.M.x() && !this.M.g()) {
            switch (this.M.f()) {
                case VERTICAL:
                    switch (this.M.d()) {
                        case LEFT:
                            rectF.left += Math.min(this.M.a, this.S.n() * this.M.q()) + this.M.s();
                            return;
                        case RIGHT:
                            rectF.right += Math.min(this.M.a, this.S.n() * this.M.q()) + this.M.s();
                            return;
                        case CENTER:
                            switch (this.M.e()) {
                                case TOP:
                                    rectF.top += Math.min(this.M.b, this.S.m() * this.M.q()) + this.M.t();
                                    return;
                                case BOTTOM:
                                    rectF.bottom += Math.min(this.M.b, this.S.m() * this.M.q()) + this.M.t();
                                    return;
                                default:
                                    return;
                            }
                        default:
                            return;
                    }
                case HORIZONTAL:
                    switch (this.M.e()) {
                        case TOP:
                            rectF.top += Math.min(this.M.b, this.S.m() * this.M.q()) + this.M.t();
                            if (getXAxis().x() && getXAxis().h()) {
                                rectF.top += (float) getXAxis().E;
                                return;
                            }
                            return;
                        case BOTTOM:
                            rectF.bottom += Math.min(this.M.b, this.S.m() * this.M.q()) + this.M.t();
                            if (getXAxis().x() && getXAxis().h()) {
                                rectF.bottom += (float) getXAxis().E;
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                default:
                    return;
            }
        }
    }

    public void j() {
        if (!this.ah) {
            a(this.ag);
            float f2 = this.ag.left + 0.0f;
            float f3 = 0.0f + this.ag.top;
            float f4 = this.ag.right + 0.0f;
            float f5 = this.ag.bottom + 0.0f;
            if (this.o.J()) {
                f2 += this.o.a(this.q.a());
            }
            if (this.p.J()) {
                f4 += this.p.a(this.r.a());
            }
            if (this.J.x() && this.J.h()) {
                float t2 = ((float) this.J.E) + this.J.t();
                if (this.J.y() == XAxisPosition.BOTTOM) {
                    f5 += t2;
                } else if (this.J.y() == XAxisPosition.TOP) {
                    f3 += t2;
                } else if (this.J.y() == XAxisPosition.BOTH_SIDED) {
                    f5 += t2;
                    f3 += t2;
                }
            }
            float extraTopOffset = f3 + getExtraTopOffset();
            float extraRightOffset = f4 + getExtraRightOffset();
            float extraBottomOffset = f5 + getExtraBottomOffset();
            float extraLeftOffset = f2 + getExtraLeftOffset();
            float a2 = i.a(this.l);
            this.S.a(Math.max(a2, extraLeftOffset), Math.max(a2, extraTopOffset), Math.max(a2, extraRightOffset), Math.max(a2, extraBottomOffset));
            if (this.D) {
                Log.i("MPAndroidChart", "offsetLeft: " + extraLeftOffset + ", offsetTop: " + extraTopOffset + ", offsetRight: " + extraRightOffset + ", offsetBottom: " + extraBottomOffset);
                Log.i("MPAndroidChart", "Content: " + this.S.k().toString());
            }
        }
        g();
        f();
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas) {
        if (this.i) {
            canvas.drawRect(this.S.k(), this.g);
        }
        if (this.j) {
            canvas.drawRect(this.S.k(), this.h);
        }
    }

    public g a(AxisDependency axisDependency) {
        if (axisDependency == AxisDependency.LEFT) {
            return this.s;
        }
        return this.t;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        if (this.O == null || this.E == null || !this.K) {
            return false;
        }
        return this.O.onTouch(this, motionEvent);
    }

    public void computeScroll() {
        if (this.O instanceof a) {
            ((a) this.O).b();
        }
    }

    public void a(float f2, float f3, float f4, float f5) {
        Matrix matrix = this.x;
        this.S.a(f2, f3, f4, -f5, matrix);
        this.S.a(matrix, this, false);
        j();
        postInvalidate();
    }

    public void setScaleMinima(float f2, float f3) {
        this.S.a(f2);
        this.S.c(f3);
    }

    public void setVisibleXRangeMaximum(float f2) {
        this.S.a(this.J.u / f2);
    }

    public void setVisibleXRangeMinimum(float f2) {
        this.S.b(this.J.u / f2);
    }

    public void setVisibleXRange(float f2, float f3) {
        this.S.b(this.J.u / f2, this.J.u / f3);
    }

    public void setVisibleYRangeMaximum(float f2, AxisDependency axisDependency) {
        this.S.c(b(axisDependency) / f2);
    }

    public void setVisibleYRangeMinimum(float f2, AxisDependency axisDependency) {
        this.S.d(b(axisDependency) / f2);
    }

    public void setVisibleYRange(float f2, float f3, AxisDependency axisDependency) {
        this.S.c(b(axisDependency) / f2, b(axisDependency) / f3);
    }

    public void setViewPortOffsets(float f2, float f3, float f4, float f5) {
        this.ah = true;
        final float f6 = f2;
        final float f7 = f3;
        final float f8 = f4;
        final float f9 = f5;
        post(new Runnable() {
            public void run() {
                BarLineChartBase.this.S.a(f6, f7, f8, f9);
                BarLineChartBase.this.g();
                BarLineChartBase.this.f();
            }
        });
    }

    /* access modifiers changed from: protected */
    public float b(AxisDependency axisDependency) {
        if (axisDependency == AxisDependency.LEFT) {
            return this.o.u;
        }
        return this.p.u;
    }

    public void setOnDrawListener(com.github.mikephil.charting.listener.d dVar) {
        this.n = dVar;
    }

    public com.github.mikephil.charting.listener.d getDrawListener() {
        return this.n;
    }

    public void setMaxVisibleValueCount(int i2) {
        this.b = i2;
    }

    public int getMaxVisibleCount() {
        return this.b;
    }

    public void setHighlightPerDragEnabled(boolean z2) {
        this.f = z2;
    }

    public boolean k() {
        return this.f;
    }

    public void setGridBackgroundColor(int i2) {
        this.g.setColor(i2);
    }

    public void setDragEnabled(boolean z2) {
        this.a = z2;
    }

    public boolean l() {
        return this.a;
    }

    public void setScaleEnabled(boolean z2) {
        this.ac = z2;
        this.ad = z2;
    }

    public void setScaleXEnabled(boolean z2) {
        this.ac = z2;
    }

    public void setScaleYEnabled(boolean z2) {
        this.ad = z2;
    }

    public boolean m() {
        return this.ac;
    }

    public boolean n() {
        return this.ad;
    }

    public void setDoubleTapToZoomEnabled(boolean z2) {
        this.e = z2;
    }

    public boolean o() {
        return this.e;
    }

    public void setDrawGridBackground(boolean z2) {
        this.i = z2;
    }

    public void setDrawBorders(boolean z2) {
        this.j = z2;
    }

    public void setClipValuesToContent(boolean z2) {
        this.k = z2;
    }

    public boolean p() {
        return this.k;
    }

    public void setBorderWidth(float f2) {
        this.h.setStrokeWidth(i.a(f2));
    }

    public void setBorderColor(int i2) {
        this.h.setColor(i2);
    }

    public float getMinOffset() {
        return this.l;
    }

    public void setMinOffset(float f2) {
        this.l = f2;
    }

    public void setKeepPositionOnRotation(boolean z2) {
        this.m = z2;
    }

    public com.github.mikephil.charting.e.b.b b(float f2, float f3) {
        com.github.mikephil.charting.d.d a2 = a(f2, f3);
        if (a2 != null) {
            return (com.github.mikephil.charting.e.b.b) ((b) this.E).a(a2.f());
        }
        return null;
    }

    public float getLowestVisibleX() {
        a(AxisDependency.LEFT).a(this.S.f(), this.S.h(), this.A);
        return (float) Math.max((double) this.J.t, this.A.a);
    }

    public float getHighestVisibleX() {
        a(AxisDependency.LEFT).a(this.S.g(), this.S.h(), this.B);
        return (float) Math.min((double) this.J.s, this.B.a);
    }

    public float getVisibleXRange() {
        return Math.abs(getHighestVisibleX() - getLowestVisibleX());
    }

    public float getScaleX() {
        if (this.S == null) {
            return 1.0f;
        }
        return this.S.q();
    }

    public float getScaleY() {
        if (this.S == null) {
            return 1.0f;
        }
        return this.S.r();
    }

    public boolean q() {
        return this.S.s();
    }

    public YAxis getAxisLeft() {
        return this.o;
    }

    public YAxis getAxisRight() {
        return this.p;
    }

    public YAxis c(AxisDependency axisDependency) {
        if (axisDependency == AxisDependency.LEFT) {
            return this.o;
        }
        return this.p;
    }

    public boolean d(AxisDependency axisDependency) {
        return c(axisDependency).D();
    }

    public void setPinchZoom(boolean z2) {
        this.d = z2;
    }

    public boolean r() {
        return this.d;
    }

    public void setDragOffsetX(float f2) {
        this.S.k(f2);
    }

    public void setDragOffsetY(float f2) {
        this.S.l(f2);
    }

    public boolean s() {
        return this.S.v();
    }

    public q getRendererXAxis() {
        return this.u;
    }

    public void setXAxisRenderer(q qVar) {
        this.u = qVar;
    }

    public t getRendererLeftYAxis() {
        return this.q;
    }

    public void setRendererLeftYAxis(t tVar) {
        this.q = tVar;
    }

    public t getRendererRightYAxis() {
        return this.r;
    }

    public void setRendererRightYAxis(t tVar) {
        this.r = tVar;
    }

    public float getYChartMax() {
        return Math.max(this.o.s, this.p.s);
    }

    public float getYChartMin() {
        return Math.min(this.o.t, this.p.t);
    }

    public boolean t() {
        if (!this.o.D() && !this.p.D()) {
            return false;
        }
        return true;
    }

    public void setAutoScaleMinMaxEnabled(boolean z2) {
        this.c = z2;
    }

    public void setPaint(Paint paint, int i2) {
        super.setPaint(paint, i2);
        switch (i2) {
            case 4:
                this.g = paint;
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        float[] fArr = this.C;
        this.C[1] = 0.0f;
        fArr[0] = 0.0f;
        if (this.m) {
            this.C[0] = this.S.f();
            this.C[1] = this.S.e();
            a(AxisDependency.LEFT).b(this.C);
        }
        super.onSizeChanged(i2, i3, i4, i5);
        if (this.m) {
            a(AxisDependency.LEFT).a(this.C);
            this.S.a(this.C, (View) this);
            return;
        }
        this.S.a(this.S.p(), this, true);
    }
}
