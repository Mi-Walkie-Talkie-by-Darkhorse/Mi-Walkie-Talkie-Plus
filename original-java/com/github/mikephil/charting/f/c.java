package com.github.mikephil.charting.f;

import com.github.mikephil.charting.data.DataSet.Rounding;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.e.a.b;
import com.github.mikephil.charting.e.b.e;
import com.github.mikephil.charting.g.j;

/* compiled from: BarLineScatterCandleBubbleRenderer */
public abstract class c extends g {
    protected a f = new a();

    /* compiled from: BarLineScatterCandleBubbleRenderer */
    protected class a {
        public int a;
        public int b;
        public int c;

        protected a() {
        }

        public void a(b bVar, com.github.mikephil.charting.e.b.b bVar2) {
            int i = 0;
            float max = Math.max(0.0f, Math.min(1.0f, c.this.g.b()));
            float lowestVisibleX = bVar.getLowestVisibleX();
            float highestVisibleX = bVar.getHighestVisibleX();
            Entry a2 = bVar2.a(lowestVisibleX, Float.NaN, Rounding.DOWN);
            Entry a3 = bVar2.a(highestVisibleX, Float.NaN, Rounding.UP);
            this.a = a2 == null ? 0 : bVar2.d(a2);
            if (a3 != null) {
                i = bVar2.d(a3);
            }
            this.b = i;
            this.c = (int) (((float) (this.b - this.a)) * max);
        }
    }

    public c(com.github.mikephil.charting.a.a aVar, j jVar) {
        super(aVar, jVar);
    }

    /* access modifiers changed from: protected */
    public boolean a(e eVar) {
        return eVar.p() && eVar.o();
    }

    /* access modifiers changed from: protected */
    public boolean a(Entry entry, com.github.mikephil.charting.e.b.b bVar) {
        if (entry == null) {
            return false;
        }
        float d = (float) bVar.d(entry);
        if (entry == null || d >= ((float) bVar.s()) * this.g.b()) {
            return false;
        }
        return true;
    }
}
