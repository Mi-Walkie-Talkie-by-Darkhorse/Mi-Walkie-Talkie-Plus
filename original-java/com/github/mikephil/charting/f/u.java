package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import com.github.mikephil.charting.components.LimitLine;
import com.github.mikephil.charting.components.LimitLine.LimitLabelPosition;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.components.YAxis.YAxisLabelPosition;
import com.github.mikephil.charting.g.d;
import com.github.mikephil.charting.g.g;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import java.util.List;

/* compiled from: YAxisRendererHorizontalBarChart */
public class u extends t {
    protected Path r = new Path();
    protected Path s = new Path();
    protected float[] t = new float[4];

    public u(j jVar, YAxis yAxis, g gVar) {
        super(jVar, yAxis, gVar);
        this.f.setTextAlign(Align.LEFT);
    }

    public void a(float f, float f2, boolean z) {
        float f3;
        float f4;
        if (this.o.j() > 10.0f && !this.o.u()) {
            d a = this.b.a(this.o.f(), this.o.e());
            d a2 = this.b.a(this.o.g(), this.o.e());
            if (!z) {
                f3 = (float) a.a;
                f4 = (float) a2.a;
            } else {
                f3 = (float) a2.a;
                f4 = (float) a.a;
            }
            d.a(a);
            d.a(a2);
            f2 = f4;
            f = f3;
        }
        a(f, f2);
    }

    public void a(Canvas canvas) {
        float h;
        if (this.g.x() && this.g.h()) {
            float[] c = c();
            this.d.setTypeface(this.g.u());
            this.d.setTextSize(this.g.v());
            this.d.setColor(this.g.w());
            this.d.setTextAlign(Align.CENTER);
            float a = i.a(2.5f);
            float b = (float) i.b(this.d, "Q");
            AxisDependency y = this.g.y();
            YAxisLabelPosition B = this.g.B();
            if (y == AxisDependency.LEFT) {
                if (B == YAxisLabelPosition.OUTSIDE_CHART) {
                    h = this.o.e() - a;
                } else {
                    h = this.o.e() - a;
                }
            } else if (B == YAxisLabelPosition.OUTSIDE_CHART) {
                h = a + b + this.o.h();
            } else {
                h = a + b + this.o.h();
            }
            a(canvas, h, c, this.g.t());
        }
    }

    public void b(Canvas canvas) {
        if (this.g.x() && this.g.b()) {
            this.e.setColor(this.g.g());
            this.e.setStrokeWidth(this.g.e());
            if (this.g.y() == AxisDependency.LEFT) {
                canvas.drawLine(this.o.f(), this.o.e(), this.o.g(), this.o.e(), this.e);
                return;
            }
            canvas.drawLine(this.o.f(), this.o.h(), this.o.g(), this.o.h(), this.e);
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f, float[] fArr, float f2) {
        this.d.setTypeface(this.g.u());
        this.d.setTextSize(this.g.v());
        this.d.setColor(this.g.w());
        int i = 0;
        while (i < this.g.d) {
            String c = this.g.c(i);
            if (this.g.C() || i < this.g.d - 1) {
                canvas.drawText(c, fArr[i * 2], f - f2, this.d);
                i++;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public float[] c() {
        if (this.k.length != this.g.d * 2) {
            this.k = new float[(this.g.d * 2)];
        }
        float[] fArr = this.k;
        for (int i = 0; i < fArr.length; i += 2) {
            fArr[i] = this.g.b[i / 2];
        }
        this.b.a(fArr);
        return fArr;
    }

    public RectF b() {
        this.j.set(this.o.k());
        this.j.inset(-this.a.f(), 0.0f);
        return this.j;
    }

    /* access modifiers changed from: protected */
    public Path a(Path path, int i, float[] fArr) {
        path.moveTo(fArr[i], this.o.e());
        path.lineTo(fArr[i], this.o.h());
        return path;
    }

    /* access modifiers changed from: protected */
    public void d(Canvas canvas) {
        int save = canvas.save();
        this.m.set(this.o.k());
        this.m.inset(-this.g.I(), 0.0f);
        canvas.clipRect(this.q);
        d b = this.b.b(0.0f, 0.0f);
        this.h.setColor(this.g.H());
        this.h.setStrokeWidth(this.g.I());
        Path path = this.r;
        path.reset();
        path.moveTo(((float) b.a) - 1.0f, this.o.e());
        path.lineTo(((float) b.a) - 1.0f, this.o.h());
        canvas.drawPath(path, this.h);
        canvas.restoreToCount(save);
    }

    public void e(Canvas canvas) {
        List m = this.g.m();
        if (m != null && m.size() > 0) {
            float[] fArr = this.t;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            Path path = this.s;
            path.reset();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < m.size()) {
                    LimitLine limitLine = (LimitLine) m.get(i2);
                    if (limitLine.x()) {
                        int save = canvas.save();
                        this.q.set(this.o.k());
                        this.q.inset(-limitLine.b(), 0.0f);
                        canvas.clipRect(this.q);
                        fArr[0] = limitLine.a();
                        fArr[2] = limitLine.a();
                        this.b.a(fArr);
                        fArr[1] = this.o.e();
                        fArr[3] = this.o.h();
                        path.moveTo(fArr[0], fArr[1]);
                        path.lineTo(fArr[2], fArr[3]);
                        this.f.setStyle(Style.STROKE);
                        this.f.setColor(limitLine.c());
                        this.f.setPathEffect(limitLine.d());
                        this.f.setStrokeWidth(limitLine.b());
                        canvas.drawPath(path, this.f);
                        path.reset();
                        String g = limitLine.g();
                        if (g != null && !g.equals("")) {
                            this.f.setStyle(limitLine.e());
                            this.f.setPathEffect(null);
                            this.f.setColor(limitLine.w());
                            this.f.setTypeface(limitLine.u());
                            this.f.setStrokeWidth(0.5f);
                            this.f.setTextSize(limitLine.v());
                            float b = limitLine.b() + limitLine.s();
                            float a = i.a(2.0f) + limitLine.t();
                            LimitLabelPosition f = limitLine.f();
                            if (f == LimitLabelPosition.RIGHT_TOP) {
                                float b2 = (float) i.b(this.f, g);
                                this.f.setTextAlign(Align.LEFT);
                                canvas.drawText(g, b + fArr[0], b2 + a + this.o.e(), this.f);
                            } else if (f == LimitLabelPosition.RIGHT_BOTTOM) {
                                this.f.setTextAlign(Align.LEFT);
                                canvas.drawText(g, fArr[0] + b, this.o.h() - a, this.f);
                            } else if (f == LimitLabelPosition.LEFT_TOP) {
                                this.f.setTextAlign(Align.RIGHT);
                                canvas.drawText(g, fArr[0] - b, ((float) i.b(this.f, g)) + a + this.o.e(), this.f);
                            } else {
                                this.f.setTextAlign(Align.RIGHT);
                                canvas.drawText(g, fArr[0] - b, this.o.h() - a, this.f);
                            }
                        }
                        canvas.restoreToCount(save);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }
}
