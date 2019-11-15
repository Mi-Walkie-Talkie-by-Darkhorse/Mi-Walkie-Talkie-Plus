package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
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

/* compiled from: XAxisRenderer */
public class q extends a {
    protected XAxis g;
    protected Path h = new Path();
    protected float[] i = new float[2];
    protected RectF j = new RectF();
    protected float[] k = new float[2];
    protected RectF l = new RectF();
    float[] m = new float[4];
    private Path n = new Path();

    public q(j jVar, XAxis xAxis, g gVar) {
        super(jVar, gVar, xAxis);
        this.g = xAxis;
        this.d.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.d.setTextAlign(Align.CENTER);
        this.d.setTextSize(i.a(10.0f));
    }

    /* access modifiers changed from: protected */
    public void b() {
        this.c.setColor(this.g.d());
        this.c.setStrokeWidth(this.g.f());
        this.c.setPathEffect(this.g.q());
    }

    public void a(float f, float f2, boolean z) {
        float f3;
        float f4;
        if (this.o.i() > 10.0f && !this.o.u()) {
            d a = this.b.a(this.o.f(), this.o.e());
            d a2 = this.b.a(this.o.g(), this.o.e());
            if (z) {
                f3 = (float) a2.a;
                f4 = (float) a.a;
            } else {
                f3 = (float) a.a;
                f4 = (float) a2.a;
            }
            d.a(a);
            d.a(a2);
            f2 = f4;
            f = f3;
        }
        a(f, f2);
    }

    /* access modifiers changed from: protected */
    public void a(float f, float f2) {
        super.a(f, f2);
        c();
    }

    /* access modifiers changed from: protected */
    public void c() {
        String o = this.g.o();
        this.d.setTypeface(this.g.u());
        this.d.setTextSize(this.g.v());
        b c = i.c(this.d, o);
        float f = c.a;
        float b = (float) i.b(this.d, "Q");
        b a = i.a(f, b, this.g.z());
        this.g.B = Math.round(f);
        this.g.C = Math.round(b);
        this.g.D = Math.round(a.a);
        this.g.E = Math.round(a.b);
        b.a(a);
        b.a(c);
    }

    public void a(Canvas canvas) {
        if (this.g.x() && this.g.h()) {
            float t = this.g.t();
            this.d.setTypeface(this.g.u());
            this.d.setTextSize(this.g.v());
            this.d.setColor(this.g.w());
            e a = e.a(0.0f, 0.0f);
            if (this.g.y() == XAxisPosition.TOP) {
                a.a = 0.5f;
                a.b = 1.0f;
                a(canvas, this.o.e() - t, a);
            } else if (this.g.y() == XAxisPosition.TOP_INSIDE) {
                a.a = 0.5f;
                a.b = 1.0f;
                a(canvas, t + this.o.e() + ((float) this.g.E), a);
            } else if (this.g.y() == XAxisPosition.BOTTOM) {
                a.a = 0.5f;
                a.b = 0.0f;
                a(canvas, t + this.o.h(), a);
            } else if (this.g.y() == XAxisPosition.BOTTOM_INSIDE) {
                a.a = 0.5f;
                a.b = 0.0f;
                a(canvas, (this.o.h() - t) - ((float) this.g.E), a);
            } else {
                a.a = 0.5f;
                a.b = 1.0f;
                a(canvas, this.o.e() - t, a);
                a.a = 0.5f;
                a.b = 0.0f;
                a(canvas, t + this.o.h(), a);
            }
            e.a(a);
        }
    }

    public void b(Canvas canvas) {
        if (this.g.b() && this.g.x()) {
            this.e.setColor(this.g.g());
            this.e.setStrokeWidth(this.g.e());
            this.e.setPathEffect(this.g.r());
            if (this.g.y() == XAxisPosition.TOP || this.g.y() == XAxisPosition.TOP_INSIDE || this.g.y() == XAxisPosition.BOTH_SIDED) {
                canvas.drawLine(this.o.f(), this.o.e(), this.o.g(), this.o.e(), this.e);
            }
            if (this.g.y() == XAxisPosition.BOTTOM || this.g.y() == XAxisPosition.BOTTOM_INSIDE || this.g.y() == XAxisPosition.BOTH_SIDED) {
                canvas.drawLine(this.o.f(), this.o.h(), this.o.g(), this.o.h(), this.e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f, e eVar) {
        float f2;
        int i2 = 0;
        float z = this.g.z();
        boolean c = this.g.c();
        float[] fArr = new float[(this.g.d * 2)];
        for (int i3 = 0; i3 < fArr.length; i3 += 2) {
            if (c) {
                fArr[i3] = this.g.c[i3 / 2];
            } else {
                fArr[i3] = this.g.b[i3 / 2];
            }
        }
        this.b.a(fArr);
        while (true) {
            int i4 = i2;
            if (i4 < fArr.length) {
                float f3 = fArr[i4];
                if (this.o.e(f3)) {
                    String a = this.g.p().a(this.g.b[i4 / 2], this.g);
                    if (this.g.A()) {
                        if (i4 == this.g.d - 1 && this.g.d > 1) {
                            float a2 = (float) i.a(this.d, a);
                            if (a2 > this.o.b() * 2.0f && f3 + a2 > this.o.n()) {
                                f3 -= a2 / 2.0f;
                            }
                            f2 = f3;
                            a(canvas, a, f2, f, eVar, z);
                        } else if (i4 == 0) {
                            f2 = f3 + (((float) i.a(this.d, a)) / 2.0f);
                            a(canvas, a, f2, f, eVar, z);
                        }
                    }
                    f2 = f3;
                    a(canvas, a, f2, f, eVar, z);
                }
                i2 = i4 + 2;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, String str, float f, float f2, e eVar, float f3) {
        i.a(canvas, str, f, f2, this.d, eVar, f3);
    }

    public void c(Canvas canvas) {
        if (this.g.a() && this.g.x()) {
            int save = canvas.save();
            canvas.clipRect(d());
            if (this.i.length != this.a.d * 2) {
                this.i = new float[(this.g.d * 2)];
            }
            float[] fArr = this.i;
            for (int i2 = 0; i2 < fArr.length; i2 += 2) {
                fArr[i2] = this.g.b[i2 / 2];
                fArr[i2 + 1] = this.g.b[i2 / 2];
            }
            this.b.a(fArr);
            b();
            Path path = this.h;
            path.reset();
            for (int i3 = 0; i3 < fArr.length; i3 += 2) {
                a(canvas, fArr[i3], fArr[i3 + 1], path);
            }
            canvas.restoreToCount(save);
        }
    }

    public RectF d() {
        this.j.set(this.o.k());
        this.j.inset(-this.a.f(), 0.0f);
        return this.j;
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f, float f2, Path path) {
        path.moveTo(f, this.o.h());
        path.lineTo(f, this.o.e());
        canvas.drawPath(path, this.c);
        path.reset();
    }

    public void d(Canvas canvas) {
        List m2 = this.g.m();
        if (m2 != null && m2.size() > 0) {
            float[] fArr = this.k;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            for (int i2 = 0; i2 < m2.size(); i2++) {
                LimitLine limitLine = (LimitLine) m2.get(i2);
                if (limitLine.x()) {
                    int save = canvas.save();
                    this.l.set(this.o.k());
                    this.l.inset(-limitLine.b(), 0.0f);
                    canvas.clipRect(this.l);
                    fArr[0] = limitLine.a();
                    fArr[1] = 0.0f;
                    this.b.a(fArr);
                    a(canvas, limitLine, fArr);
                    a(canvas, limitLine, fArr, 2.0f + limitLine.t());
                    canvas.restoreToCount(save);
                }
            }
        }
    }

    public void a(Canvas canvas, LimitLine limitLine, float[] fArr) {
        this.m[0] = fArr[0];
        this.m[1] = this.o.e();
        this.m[2] = fArr[0];
        this.m[3] = this.o.h();
        this.n.reset();
        this.n.moveTo(this.m[0], this.m[1]);
        this.n.lineTo(this.m[2], this.m[3]);
        this.f.setStyle(Style.STROKE);
        this.f.setColor(limitLine.c());
        this.f.setStrokeWidth(limitLine.b());
        this.f.setPathEffect(limitLine.d());
        canvas.drawPath(this.n, this.f);
    }

    public void a(Canvas canvas, LimitLine limitLine, float[] fArr, float f) {
        String g2 = limitLine.g();
        if (g2 != null && !g2.equals("")) {
            this.f.setStyle(limitLine.e());
            this.f.setPathEffect(null);
            this.f.setColor(limitLine.w());
            this.f.setStrokeWidth(0.5f);
            this.f.setTextSize(limitLine.v());
            float b = limitLine.b() + limitLine.s();
            LimitLabelPosition f2 = limitLine.f();
            if (f2 == LimitLabelPosition.RIGHT_TOP) {
                float b2 = (float) i.b(this.f, g2);
                this.f.setTextAlign(Align.LEFT);
                canvas.drawText(g2, b + fArr[0], b2 + this.o.e() + f, this.f);
            } else if (f2 == LimitLabelPosition.RIGHT_BOTTOM) {
                this.f.setTextAlign(Align.LEFT);
                canvas.drawText(g2, b + fArr[0], this.o.h() - f, this.f);
            } else if (f2 == LimitLabelPosition.LEFT_TOP) {
                this.f.setTextAlign(Align.RIGHT);
                canvas.drawText(g2, fArr[0] - b, ((float) i.b(this.f, g2)) + this.o.e() + f, this.f);
            } else {
                this.f.setTextAlign(Align.RIGHT);
                canvas.drawText(g2, fArr[0] - b, this.o.h() - f, this.f);
            }
        }
    }
}
