package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.h;
import com.github.mikephil.charting.e.b.e;
import com.github.mikephil.charting.g.i;

public abstract class PieRadarChartBase<T extends h<? extends e<? extends Entry>>> extends Chart<T> {
    private float a = 270.0f;
    private float b = 270.0f;
    protected boolean c = true;
    protected float d = 0.0f;

    public abstract int a(float f);

    public abstract float getRadius();

    /* access modifiers changed from: protected */
    public abstract float getRequiredBaseOffset();

    /* access modifiers changed from: protected */
    public abstract float getRequiredLegendOffset();

    public PieRadarChartBase(Context context) {
        super(context);
    }

    public PieRadarChartBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PieRadarChartBase(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void a() {
        super.a();
        this.O = new com.github.mikephil.charting.listener.e(this);
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    public int getMaxVisibleCount() {
        return this.E.j();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.K || this.O == null) {
            return super.onTouchEvent(motionEvent);
        }
        return this.O.onTouch(this, motionEvent);
    }

    public void computeScroll() {
        if (this.O instanceof com.github.mikephil.charting.listener.e) {
            ((com.github.mikephil.charting.listener.e) this.O).b();
        }
    }

    public void h() {
        if (this.E != null) {
            b();
            if (this.M != null) {
                this.P.a(this.E);
            }
            j();
        }
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void j() {
        /*
            r10 = this;
            r6 = 1097859072(0x41700000, float:15.0)
            r2 = 0
            com.github.mikephil.charting.components.Legend r0 = r10.M
            if (r0 == 0) goto L_0x0228
            com.github.mikephil.charting.components.Legend r0 = r10.M
            boolean r0 = r0.x()
            if (r0 == 0) goto L_0x0228
            com.github.mikephil.charting.components.Legend r0 = r10.M
            boolean r0 = r0.g()
            if (r0 != 0) goto L_0x0228
            com.github.mikephil.charting.components.Legend r0 = r10.M
            float r0 = r0.a
            com.github.mikephil.charting.g.j r1 = r10.S
            float r1 = r1.n()
            com.github.mikephil.charting.components.Legend r3 = r10.M
            float r3 = r3.q()
            float r1 = r1 * r3
            float r0 = java.lang.Math.min(r0, r1)
            int[] r1 = com.github.mikephil.charting.charts.PieRadarChartBase.AnonymousClass1.c
            com.github.mikephil.charting.components.Legend r3 = r10.M
            com.github.mikephil.charting.components.Legend$LegendOrientation r3 = r3.f()
            int r3 = r3.ordinal()
            r1 = r1[r3]
            switch(r1) {
                case 1: goto L_0x00e1;
                case 2: goto L_0x01d6;
                default: goto L_0x003d;
            }
        L_0x003d:
            r0 = r2
            r1 = r2
            r3 = r2
        L_0x0040:
            float r4 = r10.getRequiredBaseOffset()
            float r3 = r3 + r4
            float r4 = r10.getRequiredBaseOffset()
            float r1 = r1 + r4
            float r4 = r10.getRequiredBaseOffset()
            float r2 = r2 + r4
            float r4 = r10.getRequiredBaseOffset()
            float r0 = r0 + r4
        L_0x0054:
            float r4 = r10.d
            float r4 = com.github.mikephil.charting.g.i.a(r4)
            boolean r5 = r10 instanceof com.github.mikephil.charting.charts.RadarChart
            if (r5 == 0) goto L_0x0075
            com.github.mikephil.charting.components.XAxis r5 = r10.getXAxis()
            boolean r6 = r5.x()
            if (r6 == 0) goto L_0x0075
            boolean r6 = r5.h()
            if (r6 == 0) goto L_0x0075
            int r5 = r5.D
            float r5 = (float) r5
            float r4 = java.lang.Math.max(r4, r5)
        L_0x0075:
            float r5 = r10.getExtraTopOffset()
            float r2 = r2 + r5
            float r5 = r10.getExtraRightOffset()
            float r1 = r1 + r5
            float r5 = r10.getExtraBottomOffset()
            float r0 = r0 + r5
            float r5 = r10.getExtraLeftOffset()
            float r3 = r3 + r5
            float r3 = java.lang.Math.max(r4, r3)
            float r2 = java.lang.Math.max(r4, r2)
            float r1 = java.lang.Math.max(r4, r1)
            float r5 = r10.getRequiredBaseOffset()
            float r0 = java.lang.Math.max(r5, r0)
            float r0 = java.lang.Math.max(r4, r0)
            com.github.mikephil.charting.g.j r4 = r10.S
            r4.a(r3, r2, r1, r0)
            boolean r4 = r10.D
            if (r4 == 0) goto L_0x00e0
            java.lang.String r4 = "MPAndroidChart"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "offsetLeft: "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r3 = r5.append(r3)
            java.lang.String r5 = ", offsetTop: "
            java.lang.StringBuilder r3 = r3.append(r5)
            java.lang.StringBuilder r2 = r3.append(r2)
            java.lang.String r3 = ", offsetRight: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r1 = r2.append(r1)
            java.lang.String r2 = ", offsetBottom: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
            android.util.Log.i(r4, r0)
        L_0x00e0:
            return
        L_0x00e1:
            com.github.mikephil.charting.components.Legend r1 = r10.M
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r1 = r1.d()
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r3 = com.github.mikephil.charting.components.Legend.LegendHorizontalAlignment.LEFT
            if (r1 == r3) goto L_0x00f5
            com.github.mikephil.charting.components.Legend r1 = r10.M
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r1 = r1.d()
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r3 = com.github.mikephil.charting.components.Legend.LegendHorizontalAlignment.RIGHT
            if (r1 != r3) goto L_0x0225
        L_0x00f5:
            com.github.mikephil.charting.components.Legend r1 = r10.M
            com.github.mikephil.charting.components.Legend$LegendVerticalAlignment r1 = r1.e()
            com.github.mikephil.charting.components.Legend$LegendVerticalAlignment r3 = com.github.mikephil.charting.components.Legend.LegendVerticalAlignment.CENTER
            if (r1 != r3) goto L_0x011e
            r1 = 1095761920(0x41500000, float:13.0)
            float r1 = com.github.mikephil.charting.g.i.a(r1)
            float r0 = r0 + r1
        L_0x0106:
            int[] r1 = com.github.mikephil.charting.charts.PieRadarChartBase.AnonymousClass1.b
            com.github.mikephil.charting.components.Legend r3 = r10.M
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r3 = r3.d()
            int r3 = r3.ordinal()
            r1 = r1[r3]
            switch(r1) {
                case 1: goto L_0x0119;
                case 2: goto L_0x0189;
                case 3: goto L_0x018e;
                default: goto L_0x0117;
            }
        L_0x0117:
            goto L_0x003d
        L_0x0119:
            r1 = r2
            r3 = r0
            r0 = r2
            goto L_0x0040
        L_0x011e:
            r1 = 1090519040(0x41000000, float:8.0)
            float r1 = com.github.mikephil.charting.g.i.a(r1)
            float r1 = r1 + r0
            com.github.mikephil.charting.components.Legend r0 = r10.M
            float r0 = r0.b
            com.github.mikephil.charting.components.Legend r3 = r10.M
            float r3 = r3.c
            float r3 = r3 + r0
            com.github.mikephil.charting.g.e r4 = r10.getCenter()
            com.github.mikephil.charting.components.Legend r0 = r10.M
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r0 = r0.d()
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r5 = com.github.mikephil.charting.components.Legend.LegendHorizontalAlignment.RIGHT
            if (r0 != r5) goto L_0x017f
            int r0 = r10.getWidth()
            float r0 = (float) r0
            float r0 = r0 - r1
            float r0 = r0 + r6
        L_0x0143:
            float r3 = r3 + r6
            float r5 = r10.d(r0, r3)
            float r6 = r10.getRadius()
            float r0 = r10.b(r0, r3)
            com.github.mikephil.charting.g.e r6 = r10.a(r4, r6, r0)
            float r0 = r6.a
            float r7 = r6.b
            float r0 = r10.d(r0, r7)
            r7 = 1084227584(0x40a00000, float:5.0)
            float r7 = com.github.mikephil.charting.g.i.a(r7)
            float r8 = r4.b
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 < 0) goto L_0x0182
            int r3 = r10.getHeight()
            float r3 = (float) r3
            float r3 = r3 - r1
            int r8 = r10.getWidth()
            float r8 = (float) r8
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 <= 0) goto L_0x0182
            r0 = r1
        L_0x0178:
            com.github.mikephil.charting.g.e.a(r4)
            com.github.mikephil.charting.g.e.a(r6)
            goto L_0x0106
        L_0x017f:
            float r0 = r1 - r6
            goto L_0x0143
        L_0x0182:
            int r1 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r1 >= 0) goto L_0x0222
            float r0 = r0 - r5
            float r0 = r0 + r7
            goto L_0x0178
        L_0x0189:
            r1 = r0
            r3 = r2
            r0 = r2
            goto L_0x0040
        L_0x018e:
            int[] r0 = com.github.mikephil.charting.charts.PieRadarChartBase.AnonymousClass1.a
            com.github.mikephil.charting.components.Legend r1 = r10.M
            com.github.mikephil.charting.components.Legend$LegendVerticalAlignment r1 = r1.e()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x01a1;
                case 2: goto L_0x01bd;
                default: goto L_0x019f;
            }
        L_0x019f:
            goto L_0x003d
        L_0x01a1:
            com.github.mikephil.charting.components.Legend r0 = r10.M
            float r0 = r0.b
            com.github.mikephil.charting.g.j r1 = r10.S
            float r1 = r1.m()
            com.github.mikephil.charting.components.Legend r3 = r10.M
            float r3 = r3.q()
            float r1 = r1 * r3
            float r0 = java.lang.Math.min(r0, r1)
            r1 = r2
            r3 = r2
            r9 = r0
            r0 = r2
            r2 = r9
            goto L_0x0040
        L_0x01bd:
            com.github.mikephil.charting.components.Legend r0 = r10.M
            float r0 = r0.b
            com.github.mikephil.charting.g.j r1 = r10.S
            float r1 = r1.m()
            com.github.mikephil.charting.components.Legend r3 = r10.M
            float r3 = r3.q()
            float r1 = r1 * r3
            float r0 = java.lang.Math.min(r0, r1)
            r1 = r2
            r3 = r2
            goto L_0x0040
        L_0x01d6:
            com.github.mikephil.charting.components.Legend r0 = r10.M
            com.github.mikephil.charting.components.Legend$LegendVerticalAlignment r0 = r0.e()
            com.github.mikephil.charting.components.Legend$LegendVerticalAlignment r1 = com.github.mikephil.charting.components.Legend.LegendVerticalAlignment.TOP
            if (r0 == r1) goto L_0x01ea
            com.github.mikephil.charting.components.Legend r0 = r10.M
            com.github.mikephil.charting.components.Legend$LegendVerticalAlignment r0 = r0.e()
            com.github.mikephil.charting.components.Legend$LegendVerticalAlignment r1 = com.github.mikephil.charting.components.Legend.LegendVerticalAlignment.BOTTOM
            if (r0 != r1) goto L_0x003d
        L_0x01ea:
            float r0 = r10.getRequiredLegendOffset()
            com.github.mikephil.charting.components.Legend r1 = r10.M
            float r1 = r1.b
            float r0 = r0 + r1
            com.github.mikephil.charting.g.j r1 = r10.S
            float r1 = r1.m()
            com.github.mikephil.charting.components.Legend r3 = r10.M
            float r3 = r3.q()
            float r1 = r1 * r3
            float r0 = java.lang.Math.min(r0, r1)
            int[] r1 = com.github.mikephil.charting.charts.PieRadarChartBase.AnonymousClass1.a
            com.github.mikephil.charting.components.Legend r3 = r10.M
            com.github.mikephil.charting.components.Legend$LegendVerticalAlignment r3 = r3.e()
            int r3 = r3.ordinal()
            r1 = r1[r3]
            switch(r1) {
                case 1: goto L_0x0217;
                case 2: goto L_0x021e;
                default: goto L_0x0215;
            }
        L_0x0215:
            goto L_0x003d
        L_0x0217:
            r1 = r2
            r3 = r2
            r9 = r0
            r0 = r2
            r2 = r9
            goto L_0x0040
        L_0x021e:
            r1 = r2
            r3 = r2
            goto L_0x0040
        L_0x0222:
            r0 = r2
            goto L_0x0178
        L_0x0225:
            r0 = r2
            goto L_0x0106
        L_0x0228:
            r0 = r2
            r1 = r2
            r3 = r2
            goto L_0x0054
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.charts.PieRadarChartBase.j():void");
    }

    public float b(float f, float f2) {
        com.github.mikephil.charting.g.e centerOffsets = getCenterOffsets();
        double d2 = (double) (f - centerOffsets.a);
        double d3 = (double) (f2 - centerOffsets.b);
        float degrees = (float) Math.toDegrees(Math.acos(d3 / Math.sqrt((d2 * d2) + (d3 * d3))));
        if (f > centerOffsets.a) {
            degrees = 360.0f - degrees;
        }
        float f3 = degrees + 90.0f;
        if (f3 > 360.0f) {
            f3 -= 360.0f;
        }
        com.github.mikephil.charting.g.e.a(centerOffsets);
        return f3;
    }

    public com.github.mikephil.charting.g.e a(com.github.mikephil.charting.g.e eVar, float f, float f2) {
        com.github.mikephil.charting.g.e a2 = com.github.mikephil.charting.g.e.a(0.0f, 0.0f);
        a(eVar, f, f2, a2);
        return a2;
    }

    public void a(com.github.mikephil.charting.g.e eVar, float f, float f2, com.github.mikephil.charting.g.e eVar2) {
        eVar2.a = (float) (((double) eVar.a) + (((double) f) * Math.cos(Math.toRadians((double) f2))));
        eVar2.b = (float) (((double) eVar.b) + (((double) f) * Math.sin(Math.toRadians((double) f2))));
    }

    public float d(float f, float f2) {
        float f3;
        float f4;
        com.github.mikephil.charting.g.e centerOffsets = getCenterOffsets();
        if (f > centerOffsets.a) {
            f3 = f - centerOffsets.a;
        } else {
            f3 = centerOffsets.a - f;
        }
        if (f2 > centerOffsets.b) {
            f4 = f2 - centerOffsets.b;
        } else {
            f4 = centerOffsets.b - f2;
        }
        float sqrt = (float) Math.sqrt(Math.pow((double) f4, 2.0d) + Math.pow((double) f3, 2.0d));
        com.github.mikephil.charting.g.e.a(centerOffsets);
        return sqrt;
    }

    public void setRotationAngle(float f) {
        this.b = f;
        this.a = i.c(this.b);
    }

    public float getRawRotationAngle() {
        return this.b;
    }

    public float getRotationAngle() {
        return this.a;
    }

    public void setRotationEnabled(boolean z) {
        this.c = z;
    }

    public boolean i() {
        return this.c;
    }

    public float getMinOffset() {
        return this.d;
    }

    public void setMinOffset(float f) {
        this.d = f;
    }

    public float getDiameter() {
        RectF k = this.S.k();
        k.left += getExtraLeftOffset();
        k.top += getExtraTopOffset();
        k.right -= getExtraRightOffset();
        k.bottom -= getExtraBottomOffset();
        return Math.min(k.width(), k.height());
    }

    public float getYChartMax() {
        return 0.0f;
    }

    public float getYChartMin() {
        return 0.0f;
    }
}
