package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.d.g;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.data.m;
import com.github.mikephil.charting.e.b.i;
import com.github.mikephil.charting.g.e;
import java.util.List;

public class PieChart extends PieRadarChartBase<m> {
    protected float a = 55.0f;
    protected float b = 360.0f;
    private RectF e = new RectF();
    private boolean f = true;
    private float[] g = new float[1];
    private float[] h = new float[1];
    private boolean i = true;
    private boolean j = false;
    private boolean k = false;
    private boolean l = false;
    private CharSequence m = "";
    private e n = e.a(0.0f, 0.0f);
    private float o = 50.0f;
    private boolean p = true;
    private float q = 100.0f;

    public PieChart(Context context) {
        super(context);
    }

    public PieChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PieChart(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    /* access modifiers changed from: protected */
    public void a() {
        super.a();
        this.Q = new com.github.mikephil.charting.f.m(this, this.T, this.S);
        this.J = null;
        this.R = new g(this);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.E != null) {
            this.Q.a(canvas);
            if (v()) {
                this.Q.a(canvas, this.U);
            }
            this.Q.c(canvas);
            this.Q.b(canvas);
            this.P.a(canvas);
            b(canvas);
            c(canvas);
        }
    }

    public void j() {
        super.j();
        if (this.E != null) {
            float diameter = getDiameter() / 2.0f;
            e centerOffsets = getCenterOffsets();
            float z = ((m) this.E).a().z();
            this.e.set((centerOffsets.a - diameter) + z, (centerOffsets.b - diameter) + z, (centerOffsets.a + diameter) - z, (diameter + centerOffsets.b) - z);
            e.a(centerOffsets);
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
        k();
    }

    /* access modifiers changed from: protected */
    public float[] a(d dVar) {
        e centerCircleBox = getCenterCircleBox();
        float radius = getRadius();
        float f2 = (radius / 10.0f) * 3.6f;
        if (d()) {
            f2 = (radius - ((radius / 100.0f) * getHoleRadius())) / 2.0f;
        }
        float f3 = radius - f2;
        float rotationAngle = getRotationAngle();
        int a2 = (int) dVar.a();
        float f4 = this.g[a2] / 2.0f;
        float cos = (float) ((((double) f3) * Math.cos(Math.toRadians((double) (((this.h[a2] + rotationAngle) - f4) * this.T.a())))) + ((double) centerCircleBox.a));
        float sin = (float) ((Math.sin(Math.toRadians((double) (((this.h[a2] + rotationAngle) - f4) * this.T.a()))) * ((double) f3)) + ((double) centerCircleBox.b));
        e.a(centerCircleBox);
        return new float[]{cos, sin};
    }

    private void k() {
        int j2 = ((m) this.E).j();
        if (this.g.length != j2) {
            this.g = new float[j2];
        } else {
            for (int i2 = 0; i2 < j2; i2++) {
                this.g[i2] = 0.0f;
            }
        }
        if (this.h.length != j2) {
            this.h = new float[j2];
        } else {
            for (int i3 = 0; i3 < j2; i3++) {
                this.h[i3] = 0.0f;
            }
        }
        float l2 = ((m) this.E).l();
        List i4 = ((m) this.E).i();
        int i5 = 0;
        int i6 = 0;
        while (i5 < ((m) this.E).d()) {
            i iVar = (i) i4.get(i5);
            int i7 = i6;
            for (int i8 = 0; i8 < iVar.s(); i8++) {
                this.g[i7] = e(Math.abs(((PieEntry) iVar.d(i8)).b()), l2);
                if (i7 == 0) {
                    this.h[i7] = this.g[i7];
                } else {
                    this.h[i7] = this.h[i7 - 1] + this.g[i7];
                }
                i7++;
            }
            i5++;
            i6 = i7;
        }
    }

    public boolean a(int i2) {
        if (!v()) {
            return false;
        }
        for (d a2 : this.U) {
            if (((int) a2.a()) == i2) {
                return true;
            }
        }
        return false;
    }

    private float e(float f2, float f3) {
        return (f2 / f3) * this.b;
    }

    @Deprecated
    public XAxis getXAxis() {
        throw new RuntimeException("PieChart has no XAxis");
    }

    public int a(float f2) {
        float c = com.github.mikephil.charting.g.i.c(f2 - getRotationAngle());
        for (int i2 = 0; i2 < this.h.length; i2++) {
            if (this.h[i2] > c) {
                return i2;
            }
        }
        return -1;
    }

    public float[] getDrawAngles() {
        return this.g;
    }

    public float[] getAbsoluteAngles() {
        return this.h;
    }

    public void setHoleColor(int i2) {
        ((com.github.mikephil.charting.f.m) this.Q).b().setColor(i2);
    }

    public void setDrawSlicesUnderHole(boolean z) {
        this.j = z;
    }

    public boolean c() {
        return this.j;
    }

    public void setDrawHoleEnabled(boolean z) {
        this.i = z;
    }

    public boolean d() {
        return this.i;
    }

    public void setCenterText(CharSequence charSequence) {
        if (charSequence == null) {
            this.m = "";
        } else {
            this.m = charSequence;
        }
    }

    public CharSequence getCenterText() {
        return this.m;
    }

    public void setDrawCenterText(boolean z) {
        this.p = z;
    }

    public boolean e() {
        return this.p;
    }

    /* access modifiers changed from: protected */
    public float getRequiredLegendOffset() {
        return this.P.a().getTextSize() * 2.0f;
    }

    /* access modifiers changed from: protected */
    public float getRequiredBaseOffset() {
        return 0.0f;
    }

    public float getRadius() {
        if (this.e == null) {
            return 0.0f;
        }
        return Math.min(this.e.width() / 2.0f, this.e.height() / 2.0f);
    }

    public RectF getCircleBox() {
        return this.e;
    }

    public e getCenterCircleBox() {
        return e.a(this.e.centerX(), this.e.centerY());
    }

    public void setCenterTextTypeface(Typeface typeface) {
        ((com.github.mikephil.charting.f.m) this.Q).d().setTypeface(typeface);
    }

    public void setCenterTextSize(float f2) {
        ((com.github.mikephil.charting.f.m) this.Q).d().setTextSize(com.github.mikephil.charting.g.i.a(f2));
    }

    public void setCenterTextSizePixels(float f2) {
        ((com.github.mikephil.charting.f.m) this.Q).d().setTextSize(f2);
    }

    public void setCenterTextOffset(float f2, float f3) {
        this.n.a = com.github.mikephil.charting.g.i.a(f2);
        this.n.b = com.github.mikephil.charting.g.i.a(f3);
    }

    public e getCenterTextOffset() {
        return e.a(this.n.a, this.n.b);
    }

    public void setCenterTextColor(int i2) {
        ((com.github.mikephil.charting.f.m) this.Q).d().setColor(i2);
    }

    public void setHoleRadius(float f2) {
        this.o = f2;
    }

    public float getHoleRadius() {
        return this.o;
    }

    public void setTransparentCircleColor(int i2) {
        Paint c = ((com.github.mikephil.charting.f.m) this.Q).c();
        int alpha = c.getAlpha();
        c.setColor(i2);
        c.setAlpha(alpha);
    }

    public void setTransparentCircleRadius(float f2) {
        this.a = f2;
    }

    public float getTransparentCircleRadius() {
        return this.a;
    }

    public void setTransparentCircleAlpha(int i2) {
        ((com.github.mikephil.charting.f.m) this.Q).c().setAlpha(i2);
    }

    @Deprecated
    public void setDrawSliceText(boolean z) {
        this.f = z;
    }

    public void setDrawEntryLabels(boolean z) {
        this.f = z;
    }

    public boolean f() {
        return this.f;
    }

    public void setEntryLabelColor(int i2) {
        ((com.github.mikephil.charting.f.m) this.Q).e().setColor(i2);
    }

    public void setEntryLabelTypeface(Typeface typeface) {
        ((com.github.mikephil.charting.f.m) this.Q).e().setTypeface(typeface);
    }

    public void setEntryLabelTextSize(float f2) {
        ((com.github.mikephil.charting.f.m) this.Q).e().setTextSize(com.github.mikephil.charting.g.i.a(f2));
    }

    public void setUsePercentValues(boolean z) {
        this.k = z;
    }

    public boolean g() {
        return this.k;
    }

    public void setCenterTextRadiusPercent(float f2) {
        this.q = f2;
    }

    public float getCenterTextRadiusPercent() {
        return this.q;
    }

    public float getMaxAngle() {
        return this.b;
    }

    public void setMaxAngle(float f2) {
        float f3 = 360.0f;
        float f4 = 90.0f;
        if (f2 <= 360.0f) {
            f3 = f2;
        }
        if (f3 >= 90.0f) {
            f4 = f3;
        }
        this.b = f4;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        if (this.Q != null && (this.Q instanceof com.github.mikephil.charting.f.m)) {
            ((com.github.mikephil.charting.f.m) this.Q).f();
        }
        super.onDetachedFromWindow();
    }
}
