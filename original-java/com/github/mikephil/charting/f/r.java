package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.components.LimitLine;
import com.github.mikephil.charting.components.LimitLine.LimitLabelPosition;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.XAxis.XAxisPosition;
import com.github.mikephil.charting.g.b;
import com.github.mikephil.charting.g.d;
import com.github.mikephil.charting.g.e;
import com.github.mikephil.charting.g.g;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import java.util.List;

/* compiled from: XAxisRendererHorizontalBarChart */
public class r extends q {
    protected BarChart n;
    protected Path p = new Path();

    public r(j jVar, XAxis xAxis, g gVar, BarChart barChart) {
        super(jVar, xAxis, gVar);
        this.n = barChart;
    }

    public void a(float f, float f2, boolean z) {
        float f3;
        float f4;
        if (this.o.i() > 10.0f && !this.o.t()) {
            d a = this.b.a(this.o.f(), this.o.h());
            d a2 = this.b.a(this.o.f(), this.o.e());
            if (z) {
                f3 = (float) a2.b;
                f4 = (float) a.b;
            } else {
                f3 = (float) a.b;
                f4 = (float) a2.b;
            }
            d.a(a);
            d.a(a2);
            f2 = f4;
            f = f3;
        }
        a(f, f2);
    }

    /* access modifiers changed from: protected */
    public void c() {
        this.d.setTypeface(this.g.u());
        this.d.setTextSize(this.g.v());
        b c = i.c(this.d, this.g.o());
        float s = (float) ((int) (c.a + (this.g.s() * 3.5f)));
        float f = c.b;
        b a = i.a(c.a, f, this.g.z());
        this.g.B = Math.round(s);
        this.g.C = Math.round(f);
        this.g.D = (int) (a.a + (this.g.s() * 3.5f));
        this.g.E = Math.round(a.b);
        b.a(a);
    }

    public void a(Canvas canvas) {
        if (this.g.x() && this.g.h()) {
            float s = this.g.s();
            this.d.setTypeface(this.g.u());
            this.d.setTextSize(this.g.v());
            this.d.setColor(this.g.w());
            e a = e.a(0.0f, 0.0f);
            if (this.g.y() == XAxisPosition.TOP) {
                a.a = 0.0f;
                a.b = 0.5f;
                a(canvas, s + this.o.g(), a);
            } else if (this.g.y() == XAxisPosition.TOP_INSIDE) {
                a.a = 1.0f;
                a.b = 0.5f;
                a(canvas, this.o.g() - s, a);
            } else if (this.g.y() == XAxisPosition.BOTTOM) {
                a.a = 1.0f;
                a.b = 0.5f;
                a(canvas, this.o.f() - s, a);
            } else if (this.g.y() == XAxisPosition.BOTTOM_INSIDE) {
                a.a = 1.0f;
                a.b = 0.5f;
                a(canvas, s + this.o.f(), a);
            } else {
                a.a = 0.0f;
                a.b = 0.5f;
                a(canvas, this.o.g() + s, a);
                a.a = 1.0f;
                a.b = 0.5f;
                a(canvas, this.o.f() - s, a);
            }
            e.a(a);
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f, e eVar) {
        int i = 0;
        float z = this.g.z();
        boolean c = this.g.c();
        float[] fArr = new float[(this.g.d * 2)];
        for (int i2 = 0; i2 < fArr.length; i2 += 2) {
            if (c) {
                fArr[i2 + 1] = this.g.c[i2 / 2];
            } else {
                fArr[i2 + 1] = this.g.b[i2 / 2];
            }
        }
        this.b.a(fArr);
        while (true) {
            int i3 = i;
            if (i3 < fArr.length) {
                float f2 = fArr[i3 + 1];
                if (this.o.f(f2)) {
                    a(canvas, this.g.p().a(this.g.b[i3 / 2], this.g), f, f2, eVar, z);
                }
                i = i3 + 2;
            } else {
                return;
            }
        }
    }

    public RectF d() {
        this.j.set(this.o.k());
        this.j.inset(0.0f, -this.a.f());
        return this.j;
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f, float f2, Path path) {
        path.moveTo(this.o.g(), f2);
        path.lineTo(this.o.f(), f2);
        canvas.drawPath(path, this.c);
        path.reset();
    }

    public void b(Canvas canvas) {
        if (this.g.b() && this.g.x()) {
            this.e.setColor(this.g.g());
            this.e.setStrokeWidth(this.g.e());
            if (this.g.y() == XAxisPosition.TOP || this.g.y() == XAxisPosition.TOP_INSIDE || this.g.y() == XAxisPosition.BOTH_SIDED) {
                canvas.drawLine(this.o.g(), this.o.e(), this.o.g(), this.o.h(), this.e);
            }
            if (this.g.y() == XAxisPosition.BOTTOM || this.g.y() == XAxisPosition.BOTTOM_INSIDE || this.g.y() == XAxisPosition.BOTH_SIDED) {
                canvas.drawLine(this.o.f(), this.o.e(), this.o.f(), this.o.h(), this.e);
            }
        }
    }

    public void d(Canvas canvas) {
        int i = 0;
        List m = this.g.m();
        if (m != null && m.size() > 0) {
            float[] fArr = this.k;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            Path path = this.p;
            path.reset();
            while (true) {
                int i2 = i;
                if (i2 < m.size()) {
                    LimitLine limitLine = (LimitLine) m.get(i2);
                    if (limitLine.x()) {
                        int save = canvas.save();
                        this.l.set(this.o.k());
                        this.l.inset(0.0f, -limitLine.b());
                        canvas.clipRect(this.l);
                        this.f.setStyle(Style.STROKE);
                        this.f.setColor(limitLine.c());
                        this.f.setStrokeWidth(limitLine.b());
                        this.f.setPathEffect(limitLine.d());
                        fArr[1] = limitLine.a();
                        this.b.a(fArr);
                        path.moveTo(this.o.f(), fArr[1]);
                        path.lineTo(this.o.g(), fArr[1]);
                        canvas.drawPath(path, this.f);
                        path.reset();
                        String g = limitLine.g();
                        if (g != null && !g.equals("")) {
                            this.f.setStyle(limitLine.e());
                            this.f.setPathEffect(null);
                            this.f.setColor(limitLine.w());
                            this.f.setStrokeWidth(0.5f);
                            this.f.setTextSize(limitLine.v());
                            float b = (float) i.b(this.f, g);
                            float a = i.a(4.0f) + limitLine.s();
                            float b2 = limitLine.b() + b + limitLine.t();
                            LimitLabelPosition f = limitLine.f();
                            if (f == LimitLabelPosition.RIGHT_TOP) {
                                this.f.setTextAlign(Align.RIGHT);
                                canvas.drawText(g, this.o.g() - a, b + (fArr[1] - b2), this.f);
                            } else if (f == LimitLabelPosition.RIGHT_BOTTOM) {
                                this.f.setTextAlign(Align.RIGHT);
                                canvas.drawText(g, this.o.g() - a, fArr[1] + b2, this.f);
                            } else if (f == LimitLabelPosition.LEFT_TOP) {
                                this.f.setTextAlign(Align.LEFT);
                                canvas.drawText(g, this.o.f() + a, b + (fArr[1] - b2), this.f);
                            } else {
                                this.f.setTextAlign(Align.LEFT);
                                canvas.drawText(g, this.o.a() + a, fArr[1] + b2, this.f);
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
