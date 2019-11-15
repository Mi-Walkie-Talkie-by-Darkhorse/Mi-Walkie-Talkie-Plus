package com.github.mikephil.charting.d;

import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.data.DataSet.Rounding;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.e.a.b;
import com.github.mikephil.charting.e.b.e;
import com.github.mikephil.charting.g.d;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ChartHighlighter */
public class b<T extends com.github.mikephil.charting.e.a.b> implements f {
    protected T a;
    protected List<d> b = new ArrayList();

    public b(T t) {
        this.a = t;
    }

    public d a(float f, float f2) {
        d b2 = b(f, f2);
        float f3 = (float) b2.a;
        d.a(b2);
        return a(f3, f, f2);
    }

    /* access modifiers changed from: protected */
    public d b(float f, float f2) {
        return this.a.a(AxisDependency.LEFT).a(f, f2);
    }

    /* access modifiers changed from: protected */
    public d a(float f, float f2, float f3) {
        List b2 = b(f, f2, f3);
        if (b2.isEmpty()) {
            return null;
        }
        return a(b2, f2, f3, a(b2, f3, AxisDependency.LEFT) < a(b2, f3, AxisDependency.RIGHT) ? AxisDependency.LEFT : AxisDependency.RIGHT, this.a.getMaxHighlightDistance());
    }

    /* access modifiers changed from: protected */
    public float a(List<d> list, float f, AxisDependency axisDependency) {
        int i = 0;
        float f2 = Float.MAX_VALUE;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return f2;
            }
            d dVar = (d) list.get(i2);
            if (dVar.h() == axisDependency) {
                float abs = Math.abs(a(dVar) - f);
                if (abs < f2) {
                    f2 = abs;
                }
            }
            i = i2 + 1;
        }
    }

    /* access modifiers changed from: protected */
    public float a(d dVar) {
        return dVar.d();
    }

    /* access modifiers changed from: protected */
    public List<d> b(float f, float f2, float f3) {
        this.b.clear();
        com.github.mikephil.charting.data.b a2 = a();
        if (a2 == null) {
            return this.b;
        }
        int d = a2.d();
        for (int i = 0; i < d; i++) {
            e a3 = a2.a(i);
            if (a3.f()) {
                this.b.addAll(a(a3, i, f, Rounding.CLOSEST));
            }
        }
        return this.b;
    }

    /* access modifiers changed from: protected */
    public List<d> a(e eVar, int i, float f, Rounding rounding) {
        ArrayList arrayList = new ArrayList();
        List<Entry> a2 = eVar.a(f);
        if (a2.size() == 0) {
            Entry a3 = eVar.a(f, Float.NaN, rounding);
            if (a3 != null) {
                a2 = eVar.a(a3.h());
            }
        }
        if (a2.size() == 0) {
            return arrayList;
        }
        for (Entry entry : a2) {
            d b2 = this.a.a(eVar.q()).b(entry.h(), entry.b());
            arrayList.add(new d(entry.h(), entry.b(), (float) b2.a, (float) b2.b, i, eVar.q()));
        }
        return arrayList;
    }

    public d a(List<d> list, float f, float f2, AxisDependency axisDependency, float f3) {
        float f4;
        d dVar;
        d dVar2 = null;
        int i = 0;
        float f5 = f3;
        while (i < list.size()) {
            d dVar3 = (d) list.get(i);
            if (axisDependency == null || dVar3.h() == axisDependency) {
                float a2 = a(f, f2, dVar3.c(), dVar3.d());
                if (a2 < f5) {
                    dVar = dVar3;
                    f4 = a2;
                    i++;
                    dVar2 = dVar;
                    f5 = f4;
                }
            }
            f4 = f5;
            dVar = dVar2;
            i++;
            dVar2 = dVar;
            f5 = f4;
        }
        return dVar2;
    }

    /* access modifiers changed from: protected */
    public float a(float f, float f2, float f3, float f4) {
        return (float) Math.hypot((double) (f - f3), (double) (f2 - f4));
    }

    /* access modifiers changed from: protected */
    public com.github.mikephil.charting.data.b a() {
        return this.a.getData();
    }
}
