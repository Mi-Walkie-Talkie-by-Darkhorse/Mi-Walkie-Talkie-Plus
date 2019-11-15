package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.data.n;
import com.github.mikephil.charting.e.b.j;
import com.github.mikephil.charting.f.s;
import com.github.mikephil.charting.f.v;
import com.github.mikephil.charting.g.i;
import org.bouncycastle.crypto.tls.CipherSuite;

public class RadarChart extends PieRadarChartBase<n> {
    protected v a;
    protected s b;
    private float e = 2.5f;
    private float f = 1.5f;
    private int g = Color.rgb(122, 122, 122);
    private int h = Color.rgb(122, 122, 122);
    private int i = CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA;
    private boolean j = true;
    private int k = 0;
    private YAxis l;

    public RadarChart(Context context) {
        super(context);
    }

    public RadarChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RadarChart(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    /* access modifiers changed from: protected */
    public void a() {
        super.a();
        this.l = new YAxis(AxisDependency.LEFT);
        this.e = i.a(1.5f);
        this.f = i.a(0.75f);
        this.Q = new com.github.mikephil.charting.f.n(this, this.T, this.S);
        this.a = new v(this.S, this.l, this);
        this.b = new s(this.S, this.J, this);
        this.R = new com.github.mikephil.charting.d.i(this);
    }

    /* access modifiers changed from: protected */
    public void b() {
        super.b();
        this.l.a(((n) this.E).a(AxisDependency.LEFT), ((n) this.E).b(AxisDependency.LEFT));
        this.J.a(0.0f, (float) ((j) ((n) this.E).k()).s());
    }

    public void h() {
        if (this.E != null) {
            b();
            this.a.a(this.l.t, this.l.s, this.l.D());
            this.b.a(this.J.t, this.J.s, false);
            if (this.M != null && !this.M.c()) {
                this.P.a(this.E);
            }
            j();
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.E != null) {
            if (this.J.x()) {
                this.b.a(this.J.t, this.J.s, false);
            }
            this.b.a(canvas);
            if (this.j) {
                this.Q.c(canvas);
            }
            this.a.e(canvas);
            this.Q.a(canvas);
            if (v()) {
                this.Q.a(canvas, this.U);
            }
            this.a.a(canvas);
            this.Q.b(canvas);
            this.P.a(canvas);
            b(canvas);
            c(canvas);
        }
    }

    public float getFactor() {
        RectF k2 = this.S.k();
        return Math.min(k2.width() / 2.0f, k2.height() / 2.0f) / this.l.u;
    }

    public float getSliceAngle() {
        return 360.0f / ((float) ((j) ((n) this.E).k()).s());
    }

    public int a(float f2) {
        float c = i.c(f2 - getRotationAngle());
        float sliceAngle = getSliceAngle();
        int s = ((j) ((n) this.E).k()).s();
        for (int i2 = 0; i2 < s; i2++) {
            if ((((float) (i2 + 1)) * sliceAngle) - (sliceAngle / 2.0f) > c) {
                return i2;
            }
        }
        return 0;
    }

    public YAxis getYAxis() {
        return this.l;
    }

    public void setWebLineWidth(float f2) {
        this.e = i.a(f2);
    }

    public float getWebLineWidth() {
        return this.e;
    }

    public void setWebLineWidthInner(float f2) {
        this.f = i.a(f2);
    }

    public float getWebLineWidthInner() {
        return this.f;
    }

    public void setWebAlpha(int i2) {
        this.i = i2;
    }

    public int getWebAlpha() {
        return this.i;
    }

    public void setWebColor(int i2) {
        this.g = i2;
    }

    public int getWebColor() {
        return this.g;
    }

    public void setWebColorInner(int i2) {
        this.h = i2;
    }

    public int getWebColorInner() {
        return this.h;
    }

    public void setDrawWeb(boolean z) {
        this.j = z;
    }

    public void setSkipWebLineCount(int i2) {
        this.k = Math.max(0, i2);
    }

    public int getSkipWebLineCount() {
        return this.k;
    }

    /* access modifiers changed from: protected */
    public float getRequiredLegendOffset() {
        return this.P.a().getTextSize() * 4.0f;
    }

    /* access modifiers changed from: protected */
    public float getRequiredBaseOffset() {
        if (!this.J.x() || !this.J.h()) {
            return i.a(10.0f);
        }
        return (float) this.J.D;
    }

    public float getRadius() {
        RectF k2 = this.S.k();
        return Math.min(k2.width() / 2.0f, k2.height() / 2.0f);
    }

    public float getYChartMax() {
        return this.l.s;
    }

    public float getYChartMin() {
        return this.l.t;
    }

    public float getYRange() {
        return this.l.u;
    }
}
