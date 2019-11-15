package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import com.github.mikephil.charting.a.a;
import com.github.mikephil.charting.data.CandleEntry;
import com.github.mikephil.charting.e.a.d;
import com.github.mikephil.charting.g.g;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import java.util.List;

/* compiled from: CandleStickChartRenderer */
public class e extends l {
    protected d a;
    private float[] b = new float[8];
    private float[] c = new float[4];
    private float[] d = new float[4];
    private float[] e = new float[4];
    private float[] l = new float[4];

    public e(d dVar, a aVar, j jVar) {
        super(aVar, jVar);
        this.a = dVar;
    }

    public void a() {
    }

    public void a(Canvas canvas) {
        for (com.github.mikephil.charting.e.b.d dVar : this.a.getCandleData().i()) {
            if (dVar.p()) {
                a(canvas, dVar);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, com.github.mikephil.charting.e.b.d dVar) {
        int z;
        int y;
        int z2;
        int A;
        int B;
        g a2 = this.a.a(dVar.q());
        float a3 = this.g.a();
        float d2 = dVar.d();
        boolean r = dVar.r();
        this.f.a(this.a, dVar);
        this.h.setStrokeWidth(dVar.t());
        int i = this.f.a;
        while (true) {
            int i2 = i;
            if (i2 <= this.f.c + this.f.a) {
                CandleEntry candleEntry = (CandleEntry) dVar.d(i2);
                if (candleEntry != null) {
                    float h = candleEntry.h();
                    float e2 = candleEntry.e();
                    float d3 = candleEntry.d();
                    float a4 = candleEntry.a();
                    float c2 = candleEntry.c();
                    if (r) {
                        this.b[0] = h;
                        this.b[2] = h;
                        this.b[4] = h;
                        this.b[6] = h;
                        if (e2 > d3) {
                            this.b[1] = a4 * a3;
                            this.b[3] = e2 * a3;
                            this.b[5] = c2 * a3;
                            this.b[7] = d3 * a3;
                        } else if (e2 < d3) {
                            this.b[1] = a4 * a3;
                            this.b[3] = d3 * a3;
                            this.b[5] = c2 * a3;
                            this.b[7] = e2 * a3;
                        } else {
                            this.b[1] = a4 * a3;
                            this.b[3] = e2 * a3;
                            this.b[5] = c2 * a3;
                            this.b[7] = this.b[3];
                        }
                        a2.a(this.b);
                        if (!dVar.E()) {
                            Paint paint = this.h;
                            if (dVar.y() == 1122867) {
                                y = dVar.a(i2);
                            } else {
                                y = dVar.y();
                            }
                            paint.setColor(y);
                        } else if (e2 > d3) {
                            Paint paint2 = this.h;
                            if (dVar.B() == 1122867) {
                                B = dVar.a(i2);
                            } else {
                                B = dVar.B();
                            }
                            paint2.setColor(B);
                        } else if (e2 < d3) {
                            Paint paint3 = this.h;
                            if (dVar.A() == 1122867) {
                                A = dVar.a(i2);
                            } else {
                                A = dVar.A();
                            }
                            paint3.setColor(A);
                        } else {
                            Paint paint4 = this.h;
                            if (dVar.z() == 1122867) {
                                z2 = dVar.a(i2);
                            } else {
                                z2 = dVar.z();
                            }
                            paint4.setColor(z2);
                        }
                        this.h.setStyle(Style.STROKE);
                        canvas.drawLines(this.b, this.h);
                        this.c[0] = (h - 0.5f) + d2;
                        this.c[1] = d3 * a3;
                        this.c[2] = (h + 0.5f) - d2;
                        this.c[3] = e2 * a3;
                        a2.a(this.c);
                        if (e2 > d3) {
                            if (dVar.B() == 1122867) {
                                this.h.setColor(dVar.a(i2));
                            } else {
                                this.h.setColor(dVar.B());
                            }
                            this.h.setStyle(dVar.D());
                            canvas.drawRect(this.c[0], this.c[3], this.c[2], this.c[1], this.h);
                        } else if (e2 < d3) {
                            if (dVar.A() == 1122867) {
                                this.h.setColor(dVar.a(i2));
                            } else {
                                this.h.setColor(dVar.A());
                            }
                            this.h.setStyle(dVar.C());
                            canvas.drawRect(this.c[0], this.c[1], this.c[2], this.c[3], this.h);
                        } else {
                            if (dVar.z() == 1122867) {
                                this.h.setColor(dVar.a(i2));
                            } else {
                                this.h.setColor(dVar.z());
                            }
                            canvas.drawLine(this.c[0], this.c[1], this.c[2], this.c[3], this.h);
                        }
                    } else {
                        this.d[0] = h;
                        this.d[1] = a4 * a3;
                        this.d[2] = h;
                        this.d[3] = c2 * a3;
                        this.e[0] = (h - 0.5f) + d2;
                        this.e[1] = e2 * a3;
                        this.e[2] = h;
                        this.e[3] = e2 * a3;
                        this.l[0] = (0.5f + h) - d2;
                        this.l[1] = d3 * a3;
                        this.l[2] = h;
                        this.l[3] = d3 * a3;
                        a2.a(this.d);
                        a2.a(this.e);
                        a2.a(this.l);
                        if (e2 > d3) {
                            if (dVar.B() == 1122867) {
                                z = dVar.a(i2);
                            } else {
                                z = dVar.B();
                            }
                        } else if (e2 < d3) {
                            if (dVar.A() == 1122867) {
                                z = dVar.a(i2);
                            } else {
                                z = dVar.A();
                            }
                        } else if (dVar.z() == 1122867) {
                            z = dVar.a(i2);
                        } else {
                            z = dVar.z();
                        }
                        this.h.setColor(z);
                        canvas.drawLine(this.d[0], this.d[1], this.d[2], this.d[3], this.h);
                        canvas.drawLine(this.e[0], this.e[1], this.e[2], this.e[3], this.h);
                        canvas.drawLine(this.l[0], this.l[1], this.l[2], this.l[3], this.h);
                    }
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void b(Canvas canvas) {
        if (a((com.github.mikephil.charting.e.a.e) this.a)) {
            List i = this.a.getCandleData().i();
            for (int i2 = 0; i2 < i.size(); i2++) {
                com.github.mikephil.charting.e.b.d dVar = (com.github.mikephil.charting.e.b.d) i.get(i2);
                if (a(dVar)) {
                    b((com.github.mikephil.charting.e.b.e) dVar);
                    g a2 = this.a.a(dVar.q());
                    this.f.a(this.a, dVar);
                    float[] a3 = a2.a(dVar, this.g.b(), this.g.a(), this.f.a, this.f.b);
                    float a4 = i.a(5.0f);
                    for (int i3 = 0; i3 < a3.length; i3 += 2) {
                        float f = a3[i3];
                        float f2 = a3[i3 + 1];
                        if (!this.o.h(f)) {
                            break;
                        }
                        if (this.o.g(f) && this.o.f(f2)) {
                            CandleEntry candleEntry = (CandleEntry) dVar.d((i3 / 2) + this.f.a);
                            a(canvas, dVar.g(), candleEntry.a(), candleEntry, i2, f, f2 - a4, dVar.c(i3 / 2));
                        }
                    }
                }
            }
        }
    }

    public void c(Canvas canvas) {
    }

    public void a(Canvas canvas, com.github.mikephil.charting.d.d[] dVarArr) {
        com.github.mikephil.charting.data.g candleData = this.a.getCandleData();
        for (com.github.mikephil.charting.d.d dVar : dVarArr) {
            com.github.mikephil.charting.e.b.d dVar2 = (com.github.mikephil.charting.e.b.d) candleData.a(dVar.f());
            if (dVar2 != null && dVar2.f()) {
                CandleEntry candleEntry = (CandleEntry) dVar2.b(dVar.a(), dVar.b());
                if (a(candleEntry, dVar2)) {
                    com.github.mikephil.charting.g.d b2 = this.a.a(dVar2.q()).b(candleEntry.h(), ((candleEntry.c() * this.g.a()) + (candleEntry.a() * this.g.a())) / 2.0f);
                    dVar.a((float) b2.a, (float) b2.b);
                    a(canvas, (float) b2.a, (float) b2.b, dVar2);
                }
            }
        }
    }
}
