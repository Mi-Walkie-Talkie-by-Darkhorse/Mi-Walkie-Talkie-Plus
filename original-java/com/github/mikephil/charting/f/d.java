package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint.Style;
import com.github.mikephil.charting.a.a;
import com.github.mikephil.charting.data.BubbleEntry;
import com.github.mikephil.charting.data.f;
import com.github.mikephil.charting.e.a.c;
import com.github.mikephil.charting.e.a.e;
import com.github.mikephil.charting.g.g;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import java.util.List;

/* compiled from: BubbleChartRenderer */
public class d extends c {
    protected c a;
    private float[] b = new float[4];
    private float[] c = new float[2];
    private float[] d = new float[3];

    public d(c cVar, a aVar, j jVar) {
        super(aVar, jVar);
        this.a = cVar;
        this.h.setStyle(Style.FILL);
        this.i.setStyle(Style.STROKE);
        this.i.setStrokeWidth(i.a(1.5f));
    }

    public void a() {
    }

    public void a(Canvas canvas) {
        for (com.github.mikephil.charting.e.b.c cVar : this.a.getBubbleData().i()) {
            if (cVar.p()) {
                a(canvas, cVar);
            }
        }
    }

    /* access modifiers changed from: protected */
    public float a(float f, float f2, float f3, boolean z) {
        if (z) {
            f = f2 == 0.0f ? 1.0f : (float) Math.sqrt((double) (f / f2));
        }
        return f3 * f;
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, com.github.mikephil.charting.e.b.c cVar) {
        g a2 = this.a.a(cVar.q());
        float a3 = this.g.a();
        this.f.a(this.a, cVar);
        this.b[0] = 0.0f;
        this.b[2] = 1.0f;
        a2.a(this.b);
        boolean r = cVar.r();
        float min = Math.min(Math.abs(this.o.h() - this.o.e()), Math.abs(this.b[2] - this.b[0]));
        int i = this.f.a;
        while (true) {
            int i2 = i;
            if (i2 <= this.f.c + this.f.a) {
                BubbleEntry bubbleEntry = (BubbleEntry) cVar.d(i2);
                this.c[0] = bubbleEntry.h();
                this.c[1] = bubbleEntry.b() * a3;
                a2.a(this.c);
                float a4 = a(bubbleEntry.a(), cVar.d(), min, r) / 2.0f;
                if (this.o.i(this.c[1] + a4) && this.o.j(this.c[1] - a4) && this.o.g(this.c[0] + a4)) {
                    if (this.o.h(this.c[0] - a4)) {
                        this.h.setColor(cVar.a((int) bubbleEntry.h()));
                        canvas.drawCircle(this.c[0], this.c[1], a4, this.h);
                    } else {
                        return;
                    }
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void b(Canvas canvas) {
        float f;
        f bubbleData = this.a.getBubbleData();
        if (bubbleData != null && a((e) this.a)) {
            List i = bubbleData.i();
            float b2 = (float) i.b(this.k, "1");
            for (int i2 = 0; i2 < i.size(); i2++) {
                com.github.mikephil.charting.e.b.c cVar = (com.github.mikephil.charting.e.b.c) i.get(i2);
                if (a(cVar)) {
                    b((com.github.mikephil.charting.e.b.e) cVar);
                    float max = Math.max(0.0f, Math.min(1.0f, this.g.b()));
                    float a2 = this.g.a();
                    this.f.a(this.a, cVar);
                    float[] a3 = this.a.a(cVar.q()).a(cVar, a2, this.f.a, this.f.b);
                    if (max == 1.0f) {
                        f = a2;
                    } else {
                        f = max;
                    }
                    int i3 = 0;
                    while (true) {
                        int i4 = i3;
                        if (i4 >= a3.length) {
                            break;
                        }
                        int c2 = cVar.c((i4 / 2) + this.f.a);
                        int argb = Color.argb(Math.round(255.0f * f), Color.red(c2), Color.green(c2), Color.blue(c2));
                        float f2 = a3[i4];
                        float f3 = a3[i4 + 1];
                        if (!this.o.h(f2)) {
                            break;
                        }
                        if (this.o.g(f2) && this.o.f(f3)) {
                            BubbleEntry bubbleEntry = (BubbleEntry) cVar.d((i4 / 2) + this.f.a);
                            float f4 = f3 + (0.5f * b2);
                            a(canvas, cVar.g(), bubbleEntry.a(), bubbleEntry, i2, f2, f4, argb);
                        }
                        i3 = i4 + 2;
                    }
                }
            }
        }
    }

    public void c(Canvas canvas) {
    }

    public void a(Canvas canvas, com.github.mikephil.charting.d.d[] dVarArr) {
        f bubbleData = this.a.getBubbleData();
        float a2 = this.g.a();
        for (com.github.mikephil.charting.d.d dVar : dVarArr) {
            com.github.mikephil.charting.e.b.c cVar = (com.github.mikephil.charting.e.b.c) bubbleData.a(dVar.f());
            if (cVar != null && cVar.f()) {
                BubbleEntry bubbleEntry = (BubbleEntry) cVar.b(dVar.a(), dVar.b());
                if (bubbleEntry.b() == dVar.b() && a(bubbleEntry, cVar)) {
                    g a3 = this.a.a(cVar.q());
                    this.b[0] = 0.0f;
                    this.b[2] = 1.0f;
                    a3.a(this.b);
                    boolean r = cVar.r();
                    float min = Math.min(Math.abs(this.o.h() - this.o.e()), Math.abs(this.b[2] - this.b[0]));
                    this.c[0] = bubbleEntry.h();
                    this.c[1] = bubbleEntry.b() * a2;
                    a3.a(this.c);
                    dVar.a(this.c[0], this.c[1]);
                    float a4 = a(bubbleEntry.a(), cVar.d(), min, r) / 2.0f;
                    if (this.o.i(this.c[1] + a4) && this.o.j(this.c[1] - a4) && this.o.g(this.c[0] + a4)) {
                        if (this.o.h(this.c[0] - a4)) {
                            int a5 = cVar.a((int) bubbleEntry.h());
                            Color.RGBToHSV(Color.red(a5), Color.green(a5), Color.blue(a5), this.d);
                            float[] fArr = this.d;
                            fArr[2] = fArr[2] * 0.5f;
                            this.i.setColor(Color.HSVToColor(Color.alpha(a5), this.d));
                            this.i.setStrokeWidth(cVar.t());
                            canvas.drawCircle(this.c[0], this.c[1], a4, this.i);
                        } else {
                            return;
                        }
                    }
                }
            }
        }
    }
}
