package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Path;
import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.components.LimitLine;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.n;
import com.github.mikephil.charting.g.e;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import java.util.List;

/* compiled from: YAxisRendererRadarChart */
public class v extends t {
    private RadarChart r;
    private Path s = new Path();

    public v(j jVar, YAxis yAxis, RadarChart radarChart) {
        super(jVar, yAxis, null);
        this.r = radarChart;
    }

    /* access modifiers changed from: protected */
    public void a(float f, float f2) {
        double b;
        int i;
        int j = this.a.j();
        double abs = (double) Math.abs(f2 - f);
        if (j == 0 || abs <= 0.0d || Double.isInfinite(abs)) {
            this.a.b = new float[0];
            this.a.c = new float[0];
            this.a.d = 0;
            return;
        }
        double a = (double) i.a(abs / ((double) j));
        if (this.a.k() && a < ((double) this.a.l())) {
            a = (double) this.a.l();
        }
        double a2 = (double) i.a(Math.pow(10.0d, (double) ((int) Math.log10(a))));
        if (((int) (a / a2)) > 5) {
            a = Math.floor(10.0d * a2);
        }
        boolean c = this.a.c();
        int i2 = c ? 1 : 0;
        if (this.a.i()) {
            float f3 = ((float) abs) / ((float) (j - 1));
            this.a.d = j;
            if (this.a.b.length < j) {
                this.a.b = new float[j];
            }
            for (int i3 = 0; i3 < j; i3++) {
                this.a.b[i3] = f;
                f += f3;
            }
            i = j;
        } else {
            double ceil = a == 0.0d ? 0.0d : Math.ceil(((double) f) / a) * a;
            if (c) {
                ceil -= a;
            }
            if (a == 0.0d) {
                b = 0.0d;
            } else {
                b = i.b(Math.floor(((double) f2) / a) * a);
            }
            if (a != 0.0d) {
                double d = ceil;
                while (d <= b) {
                    d += a;
                    i2++;
                }
            }
            int i4 = i2 + 1;
            this.a.d = i4;
            if (this.a.b.length < i4) {
                this.a.b = new float[i4];
            }
            int i5 = 0;
            double d2 = ceil;
            while (i5 < i4) {
                if (d2 == 0.0d) {
                    d2 = 0.0d;
                }
                this.a.b[i5] = (float) d2;
                i5++;
                d2 += a;
            }
            i = i4;
        }
        if (a < 1.0d) {
            this.a.e = (int) Math.ceil(-Math.log10(a));
        } else {
            this.a.e = 0;
        }
        if (c) {
            if (this.a.c.length < i) {
                this.a.c = new float[i];
            }
            float f4 = (this.a.b[1] - this.a.b[0]) / 2.0f;
            for (int i6 = 0; i6 < i; i6++) {
                this.a.c[i6] = this.a.b[i6] + f4;
            }
        }
        this.a.t = this.a.b[0];
        this.a.s = this.a.b[i - 1];
        this.a.u = Math.abs(this.a.s - this.a.t);
    }

    public void a(Canvas canvas) {
        if (this.g.x() && this.g.h()) {
            this.d.setTypeface(this.g.u());
            this.d.setTextSize(this.g.v());
            this.d.setColor(this.g.w());
            e centerOffsets = this.r.getCenterOffsets();
            e a = e.a(0.0f, 0.0f);
            float factor = this.r.getFactor();
            int i = this.g.d;
            int i2 = 0;
            while (i2 < i && (i2 != i - 1 || this.g.C())) {
                i.a(centerOffsets, (this.g.b[i2] - this.g.t) * factor, this.r.getRotationAngle(), a);
                canvas.drawText(this.g.c(i2), a.a + 10.0f, a.b, this.d);
                i2++;
            }
            e.a(centerOffsets);
            e.a(a);
        }
    }

    public void e(Canvas canvas) {
        List m = this.g.m();
        if (m != null) {
            float sliceAngle = this.r.getSliceAngle();
            float factor = this.r.getFactor();
            e centerOffsets = this.r.getCenterOffsets();
            e a = e.a(0.0f, 0.0f);
            for (int i = 0; i < m.size(); i++) {
                LimitLine limitLine = (LimitLine) m.get(i);
                if (limitLine.x()) {
                    this.f.setColor(limitLine.c());
                    this.f.setPathEffect(limitLine.d());
                    this.f.setStrokeWidth(limitLine.b());
                    float a2 = (limitLine.a() - this.r.getYChartMin()) * factor;
                    Path path = this.s;
                    path.reset();
                    for (int i2 = 0; i2 < ((com.github.mikephil.charting.e.b.j) ((n) this.r.getData()).k()).s(); i2++) {
                        i.a(centerOffsets, a2, (((float) i2) * sliceAngle) + this.r.getRotationAngle(), a);
                        if (i2 == 0) {
                            path.moveTo(a.a, a.b);
                        } else {
                            path.lineTo(a.a, a.b);
                        }
                    }
                    path.close();
                    canvas.drawPath(path, this.f);
                }
            }
            e.a(centerOffsets);
            e.a(a);
        }
    }
}
