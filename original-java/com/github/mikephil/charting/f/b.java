package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.e.a.a;
import com.github.mikephil.charting.e.a.e;
import com.github.mikephil.charting.g.g;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import com.tencent.connect.common.Constants;
import java.util.List;

/* compiled from: BarChartRenderer */
public class b extends c {
    protected a a;
    protected RectF b = new RectF();
    protected com.github.mikephil.charting.b.b[] c;
    protected Paint d;
    protected Paint e;
    private RectF l = new RectF();

    public b(a aVar, com.github.mikephil.charting.a.a aVar2, j jVar) {
        super(aVar2, jVar);
        this.a = aVar;
        this.i = new Paint(1);
        this.i.setStyle(Style.FILL);
        this.i.setColor(Color.rgb(0, 0, 0));
        this.i.setAlpha(120);
        this.d = new Paint(1);
        this.d.setStyle(Style.FILL);
        this.e = new Paint(1);
        this.e.setStyle(Style.STROKE);
    }

    public void a() {
        com.github.mikephil.charting.data.a barData = this.a.getBarData();
        this.c = new com.github.mikephil.charting.b.b[barData.d()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.length) {
                com.github.mikephil.charting.e.b.a aVar = (com.github.mikephil.charting.e.b.a) barData.a(i2);
                this.c[i2] = new com.github.mikephil.charting.b.b((aVar.d() ? aVar.r() : 1) * aVar.s() * 4, barData.d(), aVar.d());
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void a(Canvas canvas) {
        com.github.mikephil.charting.data.a barData = this.a.getBarData();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < barData.d()) {
                com.github.mikephil.charting.e.b.a aVar = (com.github.mikephil.charting.e.b.a) barData.a(i2);
                if (aVar.p()) {
                    a(canvas, aVar, i2);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, com.github.mikephil.charting.e.b.a aVar, int i) {
        int i2 = 0;
        g a2 = this.a.a(aVar.q());
        this.e.setColor(aVar.z());
        this.e.setStrokeWidth(i.a(aVar.y()));
        boolean z = aVar.y() > 0.0f;
        float b2 = this.g.b();
        float a3 = this.g.a();
        if (this.a.d()) {
            this.d.setColor(aVar.t());
            float a4 = this.a.getBarData().a() / 2.0f;
            int min = Math.min((int) Math.ceil((double) (((float) aVar.s()) * b2)), aVar.s());
            for (int i3 = 0; i3 < min; i3++) {
                float h = ((BarEntry) aVar.d(i3)).h();
                this.l.left = h - a4;
                this.l.right = h + a4;
                a2.a(this.l);
                if (this.o.g(this.l.right)) {
                    if (!this.o.h(this.l.left)) {
                        break;
                    }
                    this.l.top = this.o.e();
                    this.l.bottom = this.o.h();
                    canvas.drawRect(this.l, this.d);
                }
            }
        }
        com.github.mikephil.charting.b.b bVar = this.c[i];
        bVar.a(b2, a3);
        bVar.a(i);
        bVar.a(this.a.d(aVar.q()));
        bVar.a(this.a.getBarData().a());
        bVar.a(aVar);
        a2.a(bVar.b);
        boolean z2 = aVar.b().size() == 1;
        if (z2) {
            this.h.setColor(aVar.c());
        }
        while (true) {
            int i4 = i2;
            if (i4 < bVar.b()) {
                if (this.o.g(bVar.b[i4 + 2])) {
                    if (this.o.h(bVar.b[i4])) {
                        if (!z2) {
                            this.h.setColor(aVar.a(i4 / 4));
                        }
                        canvas.drawRect(bVar.b[i4], bVar.b[i4 + 1], bVar.b[i4 + 2], bVar.b[i4 + 3], this.h);
                        if (z) {
                            canvas.drawRect(bVar.b[i4], bVar.b[i4 + 1], bVar.b[i4 + 2], bVar.b[i4 + 3], this.e);
                        }
                    } else {
                        return;
                    }
                }
                i2 = i4 + 4;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(float f, float f2, float f3, float f4, g gVar) {
        this.b.set(f - f4, f2, f + f4, f3);
        gVar.a(this.b, this.g.a());
    }

    public void b(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        if (a((e) this.a)) {
            List i = this.a.getBarData().i();
            float a2 = i.a(4.5f);
            boolean c2 = this.a.c();
            for (int i2 = 0; i2 < this.a.getBarData().d(); i2++) {
                com.github.mikephil.charting.e.b.a aVar = (com.github.mikephil.charting.e.b.a) i.get(i2);
                if (a(aVar)) {
                    b((com.github.mikephil.charting.e.b.e) aVar);
                    boolean d2 = this.a.d(aVar.q());
                    float b2 = (float) i.b(this.k, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO);
                    float f6 = c2 ? -a2 : b2 + a2;
                    if (c2) {
                        f = b2 + a2;
                    } else {
                        f = -a2;
                    }
                    if (d2) {
                        f2 = (-f) - b2;
                        f3 = (-f6) - b2;
                    } else {
                        f2 = f;
                        f3 = f6;
                    }
                    com.github.mikephil.charting.b.b bVar = this.c[i2];
                    float a3 = this.g.a();
                    if (!aVar.d()) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3;
                            if (((float) i4) >= ((float) bVar.b.length) * this.g.b()) {
                                break;
                            }
                            float f7 = (bVar.b[i4] + bVar.b[i4 + 2]) / 2.0f;
                            if (!this.o.h(f7)) {
                                break;
                            }
                            if (this.o.f(bVar.b[i4 + 1]) && this.o.g(f7)) {
                                BarEntry barEntry = (BarEntry) aVar.d(i4 / 4);
                                float b3 = barEntry.b();
                                a(canvas, aVar.g(), b3, barEntry, i2, f7, b3 >= 0.0f ? bVar.b[i4 + 1] + f3 : bVar.b[i4 + 3] + f2, aVar.c(i4 / 4));
                            }
                            i3 = i4 + 4;
                        }
                    } else {
                        g a4 = this.a.a(aVar.q());
                        int i5 = 0;
                        int i6 = 0;
                        while (((float) i5) < ((float) aVar.s()) * this.g.b()) {
                            BarEntry barEntry2 = (BarEntry) aVar.d(i5);
                            float[] a5 = barEntry2.a();
                            float f8 = (bVar.b[i6] + bVar.b[i6 + 2]) / 2.0f;
                            int c3 = aVar.c(i5);
                            if (a5 == null) {
                                if (!this.o.h(f8)) {
                                    break;
                                } else if (this.o.f(bVar.b[i6 + 1]) && this.o.g(f8)) {
                                    a(canvas, aVar.g(), barEntry2.b(), barEntry2, i2, f8, bVar.b[i6 + 1] + (barEntry2.b() >= 0.0f ? f3 : f2), c3);
                                }
                            } else {
                                float[] fArr = new float[(a5.length * 2)];
                                float f9 = 0.0f;
                                float f10 = -barEntry2.f();
                                int i7 = 0;
                                int i8 = 0;
                                while (i7 < fArr.length) {
                                    float f11 = a5[i8];
                                    if (f11 >= 0.0f) {
                                        f9 += f11;
                                        f5 = f9;
                                    } else {
                                        float f12 = f10;
                                        f10 -= f11;
                                        f5 = f12;
                                    }
                                    fArr[i7 + 1] = f5 * a3;
                                    i7 += 2;
                                    i8++;
                                }
                                a4.a(fArr);
                                int i9 = 0;
                                while (true) {
                                    int i10 = i9;
                                    if (i10 >= fArr.length) {
                                        break;
                                    }
                                    float f13 = fArr[i10 + 1];
                                    if (a5[i10 / 2] >= 0.0f) {
                                        f4 = f3;
                                    } else {
                                        f4 = f2;
                                    }
                                    float f14 = f13 + f4;
                                    if (!this.o.h(f8)) {
                                        break;
                                    }
                                    if (this.o.f(f14) && this.o.g(f8)) {
                                        a(canvas, aVar.g(), a5[i10 / 2], barEntry2, i2, f8, f14, c3);
                                    }
                                    i9 = i10 + 2;
                                }
                            }
                            i5++;
                            i6 = a5 == null ? i6 + 4 : i6 + (a5.length * 4);
                        }
                    }
                }
            }
        }
    }

    public void a(Canvas canvas, d[] dVarArr) {
        float b2;
        float f;
        com.github.mikephil.charting.data.a barData = this.a.getBarData();
        for (d dVar : dVarArr) {
            com.github.mikephil.charting.e.b.a aVar = (com.github.mikephil.charting.e.b.a) barData.a(dVar.f());
            if (aVar != null && aVar.f()) {
                BarEntry barEntry = (BarEntry) aVar.b(dVar.a(), dVar.b());
                if (a(barEntry, aVar)) {
                    g a2 = this.a.a(aVar.q());
                    this.i.setColor(aVar.a());
                    this.i.setAlpha(aVar.A());
                    if (!(dVar.g() >= 0 && barEntry.d())) {
                        b2 = barEntry.b();
                        f = 0.0f;
                    } else if (this.a.e()) {
                        b2 = barEntry.e();
                        f = -barEntry.f();
                    } else {
                        com.github.mikephil.charting.d.j jVar = barEntry.c()[dVar.g()];
                        b2 = jVar.a;
                        f = jVar.b;
                    }
                    a(barEntry.h(), b2, f, barData.a() / 2.0f, a2);
                    a(dVar, this.b);
                    canvas.drawRect(this.b, this.i);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(d dVar, RectF rectF) {
        dVar.a(rectF.centerX(), rectF.top);
    }

    public void c(Canvas canvas) {
    }
}
