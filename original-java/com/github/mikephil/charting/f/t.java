package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import com.github.mikephil.charting.components.LimitLine;
import com.github.mikephil.charting.components.LimitLine.LimitLabelPosition;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.components.YAxis.YAxisLabelPosition;
import com.github.mikephil.charting.g.d;
import com.github.mikephil.charting.g.g;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import java.util.List;

/* compiled from: YAxisRenderer */
public class t extends a {
    protected YAxis g;
    protected Paint h;
    protected Path i = new Path();
    protected RectF j = new RectF();
    protected float[] k = new float[2];
    protected Path l = new Path();
    protected RectF m = new RectF();
    protected Path n = new Path();
    protected float[] p = new float[2];
    protected RectF q = new RectF();

    public t(j jVar, YAxis yAxis, g gVar) {
        super(jVar, gVar, yAxis);
        this.g = yAxis;
        if (this.o != null) {
            this.d.setColor(ViewCompat.MEASURED_STATE_MASK);
            this.d.setTextSize(i.a(10.0f));
            this.h = new Paint(1);
            this.h.setColor(-7829368);
            this.h.setStrokeWidth(1.0f);
            this.h.setStyle(Style.STROKE);
        }
    }

    public void a(Canvas canvas) {
        float g2;
        if (this.g.x() && this.g.h()) {
            float[] c = c();
            this.d.setTypeface(this.g.u());
            this.d.setTextSize(this.g.v());
            this.d.setColor(this.g.w());
            float s = this.g.s();
            float b = (((float) i.b(this.d, TraceFormat.STR_ASSERT)) / 2.5f) + this.g.t();
            AxisDependency y = this.g.y();
            YAxisLabelPosition B = this.g.B();
            if (y == AxisDependency.LEFT) {
                if (B == YAxisLabelPosition.OUTSIDE_CHART) {
                    this.d.setTextAlign(Align.RIGHT);
                    g2 = this.o.a() - s;
                } else {
                    this.d.setTextAlign(Align.LEFT);
                    g2 = s + this.o.a();
                }
            } else if (B == YAxisLabelPosition.OUTSIDE_CHART) {
                this.d.setTextAlign(Align.LEFT);
                g2 = s + this.o.g();
            } else {
                this.d.setTextAlign(Align.RIGHT);
                g2 = this.o.g() - s;
            }
            a(canvas, g2, c, b);
        }
    }

    public void b(Canvas canvas) {
        if (this.g.x() && this.g.b()) {
            this.e.setColor(this.g.g());
            this.e.setStrokeWidth(this.g.e());
            if (this.g.y() == AxisDependency.LEFT) {
                canvas.drawLine(this.o.f(), this.o.e(), this.o.f(), this.o.h(), this.e);
                return;
            }
            canvas.drawLine(this.o.g(), this.o.e(), this.o.g(), this.o.h(), this.e);
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f, float[] fArr, float f2) {
        int i2 = 0;
        while (i2 < this.g.d) {
            String c = this.g.c(i2);
            if (this.g.C() || i2 < this.g.d - 1) {
                canvas.drawText(c, f, fArr[(i2 * 2) + 1] + f2, this.d);
                i2++;
            } else {
                return;
            }
        }
    }

    public void c(Canvas canvas) {
        if (this.g.x()) {
            if (this.g.a()) {
                int save = canvas.save();
                canvas.clipRect(b());
                float[] c = c();
                this.c.setColor(this.g.d());
                this.c.setStrokeWidth(this.g.f());
                this.c.setPathEffect(this.g.q());
                Path path = this.i;
                path.reset();
                for (int i2 = 0; i2 < c.length; i2 += 2) {
                    canvas.drawPath(a(path, i2, c), this.c);
                    path.reset();
                }
                canvas.restoreToCount(save);
            }
            if (this.g.G()) {
                d(canvas);
            }
        }
    }

    public RectF b() {
        this.j.set(this.o.k());
        this.j.inset(0.0f, -this.a.f());
        return this.j;
    }

    /* access modifiers changed from: protected */
    public Path a(Path path, int i2, float[] fArr) {
        path.moveTo(this.o.a(), fArr[i2 + 1]);
        path.lineTo(this.o.g(), fArr[i2 + 1]);
        return path;
    }

    /* access modifiers changed from: protected */
    public float[] c() {
        if (this.k.length != this.g.d * 2) {
            this.k = new float[(this.g.d * 2)];
        }
        float[] fArr = this.k;
        for (int i2 = 0; i2 < fArr.length; i2 += 2) {
            fArr[i2 + 1] = this.g.b[i2 / 2];
        }
        this.b.a(fArr);
        return fArr;
    }

    /* access modifiers changed from: protected */
    public void d(Canvas canvas) {
        int save = canvas.save();
        this.m.set(this.o.k());
        this.m.inset(0.0f, -this.g.I());
        canvas.clipRect(this.m);
        d b = this.b.b(0.0f, 0.0f);
        this.h.setColor(this.g.H());
        this.h.setStrokeWidth(this.g.I());
        Path path = this.l;
        path.reset();
        path.moveTo(this.o.f(), (float) b.b);
        path.lineTo(this.o.g(), (float) b.b);
        canvas.drawPath(path, this.h);
        canvas.restoreToCount(save);
    }

    public void e(Canvas canvas) {
        int i2 = 0;
        List m2 = this.g.m();
        if (m2 != null && m2.size() > 0) {
            float[] fArr = this.p;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            Path path = this.n;
            path.reset();
            while (true) {
                int i3 = i2;
                if (i3 < m2.size()) {
                    LimitLine limitLine = (LimitLine) m2.get(i3);
                    if (limitLine.x()) {
                        int save = canvas.save();
                        this.q.set(this.o.k());
                        this.q.inset(0.0f, -limitLine.b());
                        canvas.clipRect(this.q);
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
                        String g2 = limitLine.g();
                        if (g2 != null && !g2.equals("")) {
                            this.f.setStyle(limitLine.e());
                            this.f.setPathEffect(null);
                            this.f.setColor(limitLine.w());
                            this.f.setTypeface(limitLine.u());
                            this.f.setStrokeWidth(0.5f);
                            this.f.setTextSize(limitLine.v());
                            float b = (float) i.b(this.f, g2);
                            float a = i.a(4.0f) + limitLine.s();
                            float b2 = limitLine.b() + b + limitLine.t();
                            LimitLabelPosition f = limitLine.f();
                            if (f == LimitLabelPosition.RIGHT_TOP) {
                                this.f.setTextAlign(Align.RIGHT);
                                canvas.drawText(g2, this.o.g() - a, b + (fArr[1] - b2), this.f);
                            } else if (f == LimitLabelPosition.RIGHT_BOTTOM) {
                                this.f.setTextAlign(Align.RIGHT);
                                canvas.drawText(g2, this.o.g() - a, fArr[1] + b2, this.f);
                            } else if (f == LimitLabelPosition.LEFT_TOP) {
                                this.f.setTextAlign(Align.LEFT);
                                canvas.drawText(g2, this.o.f() + a, b + (fArr[1] - b2), this.f);
                            } else {
                                this.f.setTextAlign(Align.LEFT);
                                canvas.drawText(g2, this.o.a() + a, fArr[1] + b2, this.f);
                            }
                        }
                        canvas.restoreToCount(save);
                    }
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        }
    }
}
