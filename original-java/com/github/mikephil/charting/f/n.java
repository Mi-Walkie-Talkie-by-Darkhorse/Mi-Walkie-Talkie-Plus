package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.a.a;
import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.RadarEntry;
import com.github.mikephil.charting.g.e;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import org.bouncycastle.crypto.tls.CipherSuite;

/* compiled from: RadarChartRenderer */
public class n extends k {
    protected RadarChart a;
    protected Paint b;
    protected Paint c;
    protected Path d = new Path();
    protected Path e = new Path();

    public n(RadarChart radarChart, a aVar, j jVar) {
        super(aVar, jVar);
        this.a = radarChart;
        this.i = new Paint(1);
        this.i.setStyle(Style.STROKE);
        this.i.setStrokeWidth(2.0f);
        this.i.setColor(Color.rgb(255, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256, 115));
        this.b = new Paint(1);
        this.b.setStyle(Style.STROKE);
        this.c = new Paint(1);
    }

    public void a() {
    }

    public void a(Canvas canvas) {
        com.github.mikephil.charting.data.n nVar = (com.github.mikephil.charting.data.n) this.a.getData();
        int s = ((com.github.mikephil.charting.e.b.j) nVar.k()).s();
        for (com.github.mikephil.charting.e.b.j jVar : nVar.i()) {
            if (jVar.p()) {
                a(canvas, jVar, s);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, com.github.mikephil.charting.e.b.j jVar, int i) {
        float b2 = this.g.b();
        float a2 = this.g.a();
        float sliceAngle = this.a.getSliceAngle();
        float factor = this.a.getFactor();
        e centerOffsets = this.a.getCenterOffsets();
        e a3 = e.a(0.0f, 0.0f);
        Path path = this.d;
        path.reset();
        boolean z = false;
        for (int i2 = 0; i2 < jVar.s(); i2++) {
            this.h.setColor(jVar.a(i2));
            i.a(centerOffsets, (((RadarEntry) jVar.d(i2)).b() - this.a.getYChartMin()) * factor * a2, (((float) i2) * sliceAngle * b2) + this.a.getRotationAngle(), a3);
            if (!Float.isNaN(a3.a)) {
                if (!z) {
                    path.moveTo(a3.a, a3.b);
                    z = true;
                } else {
                    path.lineTo(a3.a, a3.b);
                }
            }
        }
        if (jVar.s() > i) {
            path.lineTo(centerOffsets.a, centerOffsets.b);
        }
        path.close();
        if (jVar.O()) {
            Drawable L = jVar.L();
            if (L != null) {
                a(canvas, path, L);
            } else {
                a(canvas, path, jVar.K(), jVar.M());
            }
        }
        this.h.setStrokeWidth(jVar.N());
        this.h.setStyle(Style.STROKE);
        if (!jVar.O() || jVar.M() < 255) {
            canvas.drawPath(path, this.h);
        }
        e.a(centerOffsets);
        e.a(a3);
    }

    public void b(Canvas canvas) {
        float b2 = this.g.b();
        float a2 = this.g.a();
        float sliceAngle = this.a.getSliceAngle();
        float factor = this.a.getFactor();
        e centerOffsets = this.a.getCenterOffsets();
        e a3 = e.a(0.0f, 0.0f);
        float a4 = i.a(5.0f);
        for (int i = 0; i < ((com.github.mikephil.charting.data.n) this.a.getData()).d(); i++) {
            com.github.mikephil.charting.e.b.j jVar = (com.github.mikephil.charting.e.b.j) ((com.github.mikephil.charting.data.n) this.a.getData()).a(i);
            if (a(jVar)) {
                b((com.github.mikephil.charting.e.b.e) jVar);
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 >= jVar.s()) {
                        break;
                    }
                    RadarEntry radarEntry = (RadarEntry) jVar.d(i3);
                    i.a(centerOffsets, (radarEntry.b() - this.a.getYChartMin()) * factor * a2, (((float) i3) * sliceAngle * b2) + this.a.getRotationAngle(), a3);
                    a(canvas, jVar.g(), radarEntry.b(), radarEntry, i, a3.a, a3.b - a4, jVar.c(i3));
                    i2 = i3 + 1;
                }
            }
        }
        e.a(centerOffsets);
        e.a(a3);
    }

    public void c(Canvas canvas) {
        d(canvas);
    }

    /* access modifiers changed from: protected */
    public void d(Canvas canvas) {
        float sliceAngle = this.a.getSliceAngle();
        float factor = this.a.getFactor();
        float rotationAngle = this.a.getRotationAngle();
        e centerOffsets = this.a.getCenterOffsets();
        this.b.setStrokeWidth(this.a.getWebLineWidth());
        this.b.setColor(this.a.getWebColor());
        this.b.setAlpha(this.a.getWebAlpha());
        int skipWebLineCount = this.a.getSkipWebLineCount() + 1;
        int s = ((com.github.mikephil.charting.e.b.j) ((com.github.mikephil.charting.data.n) this.a.getData()).k()).s();
        e a2 = e.a(0.0f, 0.0f);
        for (int i = 0; i < s; i += skipWebLineCount) {
            i.a(centerOffsets, this.a.getYRange() * factor, (((float) i) * sliceAngle) + rotationAngle, a2);
            canvas.drawLine(centerOffsets.a, centerOffsets.b, a2.a, a2.b, this.b);
        }
        e.a(a2);
        this.b.setStrokeWidth(this.a.getWebLineWidthInner());
        this.b.setColor(this.a.getWebColorInner());
        this.b.setAlpha(this.a.getWebAlpha());
        int i2 = this.a.getYAxis().d;
        e a3 = e.a(0.0f, 0.0f);
        e a4 = e.a(0.0f, 0.0f);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = 0;
            while (true) {
                int i5 = i4;
                if (i5 >= ((com.github.mikephil.charting.data.n) this.a.getData()).j()) {
                    break;
                }
                float yChartMin = (this.a.getYAxis().b[i3] - this.a.getYChartMin()) * factor;
                i.a(centerOffsets, yChartMin, (((float) i5) * sliceAngle) + rotationAngle, a3);
                i.a(centerOffsets, yChartMin, (((float) (i5 + 1)) * sliceAngle) + rotationAngle, a4);
                canvas.drawLine(a3.a, a3.b, a4.a, a4.b, this.b);
                i4 = i5 + 1;
            }
        }
        e.a(a3);
        e.a(a4);
    }

    public void a(Canvas canvas, d[] dVarArr) {
        int i;
        float sliceAngle = this.a.getSliceAngle();
        float factor = this.a.getFactor();
        e centerOffsets = this.a.getCenterOffsets();
        e a2 = e.a(0.0f, 0.0f);
        com.github.mikephil.charting.data.n nVar = (com.github.mikephil.charting.data.n) this.a.getData();
        for (d dVar : dVarArr) {
            com.github.mikephil.charting.e.b.j jVar = (com.github.mikephil.charting.e.b.j) nVar.a(dVar.f());
            if (jVar != null && jVar.f()) {
                RadarEntry radarEntry = (RadarEntry) jVar.d((int) dVar.a());
                if (a(radarEntry, jVar)) {
                    i.a(centerOffsets, (radarEntry.b() - this.a.getYChartMin()) * factor * this.g.a(), (dVar.a() * sliceAngle * this.g.b()) + this.a.getRotationAngle(), a2);
                    dVar.a(a2.a, a2.b);
                    a(canvas, a2.a, a2.b, jVar);
                    if (jVar.d() && !Float.isNaN(a2.a) && !Float.isNaN(a2.b)) {
                        int t = jVar.t();
                        if (t == 1122867) {
                            t = jVar.a(0);
                        }
                        if (jVar.y() < 255) {
                            i = com.github.mikephil.charting.g.a.a(t, jVar.y());
                        } else {
                            i = t;
                        }
                        a(canvas, a2, jVar.z(), jVar.A(), jVar.r(), i, jVar.B());
                    }
                }
            }
        }
        e.a(centerOffsets);
        e.a(a2);
    }

    public void a(Canvas canvas, e eVar, float f, float f2, int i, int i2, float f3) {
        canvas.save();
        float a2 = i.a(f2);
        float a3 = i.a(f);
        if (i != 1122867) {
            Path path = this.e;
            path.reset();
            path.addCircle(eVar.a, eVar.b, a2, Direction.CW);
            if (a3 > 0.0f) {
                path.addCircle(eVar.a, eVar.b, a3, Direction.CCW);
            }
            this.c.setColor(i);
            this.c.setStyle(Style.FILL);
            canvas.drawPath(path, this.c);
        }
        if (i2 != 1122867) {
            this.c.setColor(i2);
            this.c.setStyle(Style.STROKE);
            this.c.setStrokeWidth(i.a(f3));
            canvas.drawCircle(eVar.a, eVar.b, a2, this.c);
        }
        canvas.restore();
    }
}
