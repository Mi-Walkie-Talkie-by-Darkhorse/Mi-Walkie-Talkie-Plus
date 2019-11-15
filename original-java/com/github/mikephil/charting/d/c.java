package com.github.mikephil.charting.d;

import com.github.mikephil.charting.data.DataSet.Rounding;
import com.github.mikephil.charting.data.b;
import com.github.mikephil.charting.data.h;
import com.github.mikephil.charting.e.a.a;
import com.github.mikephil.charting.e.a.f;
import com.github.mikephil.charting.e.b.e;
import java.util.List;

/* compiled from: CombinedHighlighter */
public class c extends b<f> implements f {
    protected a c;

    public c(f fVar, a aVar) {
        super(fVar);
        this.c = aVar.getBarData() == null ? null : new a(aVar);
    }

    /* access modifiers changed from: protected */
    public List<d> b(float f, float f2, float f3) {
        this.b.clear();
        List p = ((f) this.a).getCombinedData().p();
        for (int i = 0; i < p.size(); i++) {
            h hVar = (h) p.get(i);
            if (this.c == null || !(hVar instanceof com.github.mikephil.charting.data.a)) {
                int d = hVar.d();
                for (int i2 = 0; i2 < d; i2++) {
                    e a = ((b) p.get(i)).a(i2);
                    if (a.f()) {
                        for (d dVar : a(a, i2, f, Rounding.CLOSEST)) {
                            dVar.a(i);
                            this.b.add(dVar);
                        }
                    }
                }
            } else {
                d a2 = this.c.a(f2, f3);
                if (a2 != null) {
                    a2.a(i);
                    this.b.add(a2);
                }
            }
        }
        return this.b;
    }
}
