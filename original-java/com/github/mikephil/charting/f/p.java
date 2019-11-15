package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.util.Log;
import com.github.mikephil.charting.a.a;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.o;
import com.github.mikephil.charting.e.a.e;
import com.github.mikephil.charting.e.a.h;
import com.github.mikephil.charting.e.b.k;
import com.github.mikephil.charting.g.g;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import java.util.List;

/* compiled from: ScatterChartRenderer */
public class p extends l {
    protected h a;
    float[] b = new float[2];

    public p(h hVar, a aVar, j jVar) {
        super(aVar, jVar);
        this.a = hVar;
    }

    public void a() {
    }

    public void a(Canvas canvas) {
        for (k kVar : this.a.getScatterData().i()) {
            if (kVar.p()) {
                a(canvas, kVar);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, k kVar) {
        j jVar = this.o;
        g a2 = this.a.a(kVar.q());
        float a3 = this.g.a();
        com.github.mikephil.charting.f.a.a r = kVar.r();
        if (r == null) {
            Log.i("MISSING", "There's no IShapeRenderer specified for ScatterDataSet");
            return;
        }
        int min = (int) Math.min(Math.ceil((double) (((float) kVar.s()) * this.g.b())), (double) ((float) kVar.s()));
        int i = 0;
        while (i < min) {
            Entry d = kVar.d(i);
            this.b[0] = d.h();
            this.b[1] = d.b() * a3;
            a2.a(this.b);
            if (jVar.h(this.b[0])) {
                if (jVar.g(this.b[0]) && jVar.f(this.b[1])) {
                    this.h.setColor(kVar.a(i / 2));
                    r.a(canvas, kVar, this.o, this.b[0], this.b[1], this.h);
                }
                i++;
            } else {
                return;
            }
        }
    }

    public void b(Canvas canvas) {
        if (a((e) this.a)) {
            List i = this.a.getScatterData().i();
            for (int i2 = 0; i2 < this.a.getScatterData().d(); i2++) {
                k kVar = (k) i.get(i2);
                if (a(kVar)) {
                    b((com.github.mikephil.charting.e.b.e) kVar);
                    this.f.a(this.a, kVar);
                    float[] a2 = this.a.a(kVar.q()).a(kVar, this.g.b(), this.g.a(), this.f.a, this.f.b);
                    float a3 = i.a(kVar.d());
                    int i3 = 0;
                    while (i3 < a2.length && this.o.h(a2[i3])) {
                        if (this.o.g(a2[i3]) && this.o.f(a2[i3 + 1])) {
                            Entry d = kVar.d((i3 / 2) + this.f.a);
                            a(canvas, kVar.g(), d.b(), d, i2, a2[i3], a2[i3 + 1] - a3, kVar.c((i3 / 2) + this.f.a));
                        }
                        i3 += 2;
                    }
                }
            }
        }
    }

    public void c(Canvas canvas) {
    }

    public void a(Canvas canvas, d[] dVarArr) {
        o scatterData = this.a.getScatterData();
        for (d dVar : dVarArr) {
            k kVar = (k) scatterData.a(dVar.f());
            if (kVar != null && kVar.f()) {
                Entry b2 = kVar.b(dVar.a(), dVar.b());
                if (a(b2, kVar)) {
                    com.github.mikephil.charting.g.d b3 = this.a.a(kVar.q()).b(b2.h(), b2.b() * this.g.a());
                    dVar.a((float) b3.a, (float) b3.b);
                    a(canvas, (float) b3.a, (float) b3.b, kVar);
                }
            }
        }
    }
}
