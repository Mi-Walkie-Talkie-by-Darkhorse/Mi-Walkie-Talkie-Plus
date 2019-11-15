package com.github.mikephil.charting.d;

import com.github.mikephil.charting.data.DataSet.Rounding;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.e.a.a;
import com.github.mikephil.charting.g.d;
import java.util.ArrayList;
import java.util.List;

/* compiled from: HorizontalBarHighlighter */
public class e extends a {
    public e(a aVar) {
        super(aVar);
    }

    public d a(float f, float f2) {
        com.github.mikephil.charting.data.a barData = ((a) this.a).getBarData();
        d b = b(f2, f);
        d a = a((float) b.b, f2, f);
        if (a == null) {
            return null;
        }
        com.github.mikephil.charting.e.b.a aVar = (com.github.mikephil.charting.e.b.a) barData.a(a.f());
        if (aVar.d()) {
            return a(a, aVar, (float) b.b, (float) b.a);
        }
        d.a(b);
        return a;
    }

    /* access modifiers changed from: protected */
    public List<d> a(com.github.mikephil.charting.e.b.e eVar, int i, float f, Rounding rounding) {
        ArrayList arrayList = new ArrayList();
        List<Entry> a = eVar.a(f);
        if (a.size() == 0) {
            Entry a2 = eVar.a(f, Float.NaN, rounding);
            if (a2 != null) {
                a = eVar.a(a2.h());
            }
        }
        if (a.size() == 0) {
            return arrayList;
        }
        for (Entry entry : a) {
            d b = ((a) this.a).a(eVar.q()).b(entry.b(), entry.h());
            arrayList.add(new d(entry.h(), entry.b(), (float) b.a, (float) b.b, i, eVar.q()));
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public float a(float f, float f2, float f3, float f4) {
        return Math.abs(f2 - f4);
    }
}
