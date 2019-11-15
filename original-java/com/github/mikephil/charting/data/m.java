package com.github.mikephil.charting.data;

import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.e.b.i;

/* compiled from: PieData */
public class m extends h<i> {
    public i a() {
        return (i) this.i.get(0);
    }

    /* renamed from: b */
    public i a(int i) {
        if (i == 0) {
            return a();
        }
        return null;
    }

    public Entry a(d dVar) {
        return a().d((int) dVar.a());
    }

    public float l() {
        int i = 0;
        float f = 0.0f;
        while (true) {
            int i2 = i;
            if (i2 >= a().s()) {
                return f;
            }
            f += ((PieEntry) a().d(i2)).b();
            i = i2 + 1;
        }
    }
}
