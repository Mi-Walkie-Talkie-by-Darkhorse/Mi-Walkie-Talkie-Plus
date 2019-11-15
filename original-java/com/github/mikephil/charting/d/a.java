package com.github.mikephil.charting.d;

import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.b;
import com.github.mikephil.charting.g.d;

/* compiled from: BarHighlighter */
public class a extends b<com.github.mikephil.charting.e.a.a> {
    public a(com.github.mikephil.charting.e.a.a aVar) {
        super(aVar);
    }

    public d a(float f, float f2) {
        d a = super.a(f, f2);
        if (a == null) {
            return null;
        }
        d b = b(f, f2);
        com.github.mikephil.charting.e.b.a aVar = (com.github.mikephil.charting.e.b.a) ((com.github.mikephil.charting.e.a.a) this.a).getBarData().a(a.f());
        if (aVar.d()) {
            return a(a, aVar, (float) b.a, (float) b.b);
        }
        d.a(b);
        return a;
    }

    public d a(d dVar, com.github.mikephil.charting.e.b.a aVar, float f, float f2) {
        BarEntry barEntry = (BarEntry) aVar.b(f, f2);
        if (barEntry == null) {
            return null;
        }
        if (barEntry.a() == null) {
            return dVar;
        }
        j[] c = barEntry.c();
        if (c.length <= 0) {
            return null;
        }
        int a = a(c, f2);
        d b = ((com.github.mikephil.charting.e.a.a) this.a).a(aVar.q()).b(dVar.a(), c[a].b);
        d dVar2 = new d(barEntry.h(), barEntry.b(), (float) b.a, (float) b.b, dVar.f(), a, dVar.h());
        d.a(b);
        return dVar2;
    }

    /* access modifiers changed from: protected */
    public int a(j[] jVarArr, float f) {
        if (jVarArr == null || jVarArr.length == 0) {
            return 0;
        }
        int length = jVarArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            if (jVarArr[i].a(f)) {
                return i2;
            }
            i++;
            i2++;
        }
        int max = Math.max(jVarArr.length - 1, 0);
        if (f <= jVarArr[max].b) {
            return 0;
        }
        return max;
    }

    /* access modifiers changed from: protected */
    public float a(float f, float f2, float f3, float f4) {
        return Math.abs(f - f3);
    }

    /* access modifiers changed from: protected */
    public b a() {
        return ((com.github.mikephil.charting.e.a.a) this.a).getBarData();
    }
}
