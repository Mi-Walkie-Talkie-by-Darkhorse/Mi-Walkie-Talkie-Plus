package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Paint.Align;
import android.graphics.RectF;
import com.github.mikephil.charting.b.b;
import com.github.mikephil.charting.b.c;
import com.github.mikephil.charting.c.f;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.e.a.a;
import com.github.mikephil.charting.e.b.e;
import com.github.mikephil.charting.g.g;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import com.tencent.connect.common.Constants;
import java.util.List;

/* compiled from: HorizontalBarChartRenderer */
public class h extends b {
    private RectF l = new RectF();

    public h(a aVar, com.github.mikephil.charting.a.a aVar2, j jVar) {
        super(aVar, aVar2, jVar);
        this.k.setTextAlign(Align.LEFT);
    }

    public void a() {
        com.github.mikephil.charting.data.a barData = this.a.getBarData();
        this.c = new c[barData.d()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.length) {
                com.github.mikephil.charting.e.b.a aVar = (com.github.mikephil.charting.e.b.a) barData.a(i2);
                this.c[i2] = new c((aVar.d() ? aVar.r() : 1) * aVar.s() * 4, barData.d(), aVar.d());
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, com.github.mikephil.charting.e.b.a aVar, int i) {
        int i2 = 0;
        g a = this.a.a(aVar.q());
        this.e.setColor(aVar.z());
        this.e.setStrokeWidth(i.a(aVar.y()));
        boolean z = aVar.y() > 0.0f;
        float b = this.g.b();
        float a2 = this.g.a();
        if (this.a.d()) {
            this.d.setColor(aVar.t());
            float a3 = this.a.getBarData().a() / 2.0f;
            int min = Math.min((int) Math.ceil((double) (((float) aVar.s()) * b)), aVar.s());
            for (int i3 = 0; i3 < min; i3++) {
                float h = ((BarEntry) aVar.d(i3)).h();
                this.l.top = h - a3;
                this.l.bottom = h + a3;
                a.a(this.l);
                if (this.o.i(this.l.bottom)) {
                    if (!this.o.j(this.l.top)) {
                        break;
                    }
                    this.l.left = this.o.f();
                    this.l.right = this.o.g();
                    canvas.drawRect(this.l, this.d);
                }
            }
        }
        b bVar = this.c[i];
        bVar.a(b, a2);
        bVar.a(i);
        bVar.a(this.a.d(aVar.q()));
        bVar.a(this.a.getBarData().a());
        bVar.a(aVar);
        a.a(bVar.b);
        boolean z2 = aVar.b().size() == 1;
        if (z2) {
            this.h.setColor(aVar.c());
        }
        while (true) {
            int i4 = i2;
            if (i4 < bVar.b() && this.o.i(bVar.b[i4 + 3])) {
                if (this.o.j(bVar.b[i4 + 1])) {
                    if (!z2) {
                        this.h.setColor(aVar.a(i4 / 4));
                    }
                    canvas.drawRect(bVar.b[i4], bVar.b[i4 + 1], bVar.b[i4 + 2], bVar.b[i4 + 3], this.h);
                    if (z) {
                        canvas.drawRect(bVar.b[i4], bVar.b[i4 + 1], bVar.b[i4 + 2], bVar.b[i4 + 3], this.e);
                    }
                }
                i2 = i4 + 4;
            } else {
                return;
            }
        }
    }

    public void b(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        if (a(this.a)) {
            List i = this.a.getBarData().i();
            float a = i.a(5.0f);
            boolean c = this.a.c();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < this.a.getBarData().d()) {
                    com.github.mikephil.charting.e.b.a aVar = (com.github.mikephil.charting.e.b.a) i.get(i3);
                    if (a(aVar)) {
                        boolean d = this.a.d(aVar.q());
                        b((e) aVar);
                        float b = ((float) i.b(this.k, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ)) / 2.0f;
                        f g = aVar.g();
                        b bVar = this.c[i3];
                        float a2 = this.g.a();
                        if (!aVar.d()) {
                            int i4 = 0;
                            while (true) {
                                int i5 = i4;
                                if (((float) i5) >= ((float) bVar.b.length) * this.g.b()) {
                                    break;
                                }
                                float f5 = (bVar.b[i5 + 1] + bVar.b[i5 + 3]) / 2.0f;
                                if (!this.o.i(bVar.b[i5 + 1])) {
                                    break;
                                }
                                if (this.o.e(bVar.b[i5]) && this.o.j(bVar.b[i5 + 1])) {
                                    BarEntry barEntry = (BarEntry) aVar.d(i5 / 4);
                                    float b2 = barEntry.b();
                                    String a3 = g.a(b2, barEntry, i3, this.o);
                                    float a4 = (float) i.a(this.k, a3);
                                    float f6 = c ? a : -(a4 + a);
                                    if (c) {
                                        f4 = -(a4 + a);
                                    } else {
                                        f4 = a;
                                    }
                                    if (d) {
                                        f6 = (-f6) - a4;
                                        f4 = (-f4) - a4;
                                    }
                                    float f7 = bVar.b[i5 + 2];
                                    if (b2 < 0.0f) {
                                        f6 = f4;
                                    }
                                    a(canvas, a3, f7 + f6, f5 + b, aVar.c(i5 / 2));
                                }
                                i4 = i5 + 4;
                            }
                        } else {
                            g a5 = this.a.a(aVar.q());
                            int i6 = 0;
                            int i7 = 0;
                            while (((float) i6) < ((float) aVar.s()) * this.g.b()) {
                                BarEntry barEntry2 = (BarEntry) aVar.d(i6);
                                int c2 = aVar.c(i6);
                                float[] a6 = barEntry2.a();
                                if (a6 == null) {
                                    if (!this.o.i(bVar.b[i7 + 1])) {
                                        break;
                                    } else if (this.o.e(bVar.b[i7]) && this.o.j(bVar.b[i7 + 1])) {
                                        String a7 = g.a(barEntry2.b(), barEntry2, i3, this.o);
                                        float a8 = (float) i.a(this.k, a7);
                                        float f8 = c ? a : -(a8 + a);
                                        if (c) {
                                            f3 = -(a8 + a);
                                        } else {
                                            f3 = a;
                                        }
                                        if (d) {
                                            f8 = (-f8) - a8;
                                            f3 = (-f3) - a8;
                                        }
                                        float f9 = bVar.b[i7 + 2];
                                        if (barEntry2.b() < 0.0f) {
                                            f8 = f3;
                                        }
                                        a(canvas, a7, f9 + f8, bVar.b[i7 + 1] + b, c2);
                                    }
                                } else {
                                    float[] fArr = new float[(a6.length * 2)];
                                    float f10 = 0.0f;
                                    float f11 = -barEntry2.f();
                                    int i8 = 0;
                                    int i9 = 0;
                                    while (i8 < fArr.length) {
                                        float f12 = a6[i9];
                                        if (f12 >= 0.0f) {
                                            f10 += f12;
                                            f2 = f10;
                                        } else {
                                            float f13 = f11;
                                            f11 -= f12;
                                            f2 = f13;
                                        }
                                        fArr[i8] = f2 * a2;
                                        i8 += 2;
                                        i9++;
                                    }
                                    a5.a(fArr);
                                    int i10 = 0;
                                    while (true) {
                                        int i11 = i10;
                                        if (i11 >= fArr.length) {
                                            break;
                                        }
                                        float f14 = a6[i11 / 2];
                                        String a9 = g.a(f14, barEntry2, i3, this.o);
                                        float a10 = (float) i.a(this.k, a9);
                                        float f15 = c ? a : -(a10 + a);
                                        if (c) {
                                            f = -(a10 + a);
                                        } else {
                                            f = a;
                                        }
                                        if (d) {
                                            f15 = (-f15) - a10;
                                            f = (-f) - a10;
                                        }
                                        float f16 = fArr[i11];
                                        if (f14 < 0.0f) {
                                            f15 = f;
                                        }
                                        float f17 = f16 + f15;
                                        float f18 = (bVar.b[i7 + 1] + bVar.b[i7 + 3]) / 2.0f;
                                        if (!this.o.i(f18)) {
                                            break;
                                        }
                                        if (this.o.e(f17) && this.o.j(f18)) {
                                            a(canvas, a9, f17, f18 + b, c2);
                                        }
                                        i10 = i11 + 2;
                                    }
                                }
                                i6++;
                                i7 = a6 == null ? i7 + 4 : i7 + (a6.length * 4);
                            }
                        }
                    }
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, String str, float f, float f2, int i) {
        this.k.setColor(i);
        canvas.drawText(str, f, f2, this.k);
    }

    /* access modifiers changed from: protected */
    public void a(float f, float f2, float f3, float f4, g gVar) {
        this.b.set(f2, f - f4, f3, f + f4);
        gVar.b(this.b, this.g.a());
    }

    /* access modifiers changed from: protected */
    public void a(d dVar, RectF rectF) {
        dVar.a(rectF.centerY(), rectF.right);
    }

    /* access modifiers changed from: protected */
    public boolean a(com.github.mikephil.charting.e.a.e eVar) {
        return ((float) eVar.getData().j()) < ((float) eVar.getMaxVisibleCount()) * this.o.r();
    }
}
