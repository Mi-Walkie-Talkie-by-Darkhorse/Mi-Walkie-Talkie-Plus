package com.github.mikephil.charting.d;

import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.data.m;
import com.github.mikephil.charting.e.b.i;

/* compiled from: PieHighlighter */
public class g extends h<PieChart> {
    public g(PieChart pieChart) {
        super(pieChart);
    }

    /* access modifiers changed from: protected */
    public d a(int i, float f, float f2) {
        i a = ((m) ((PieChart) this.a).getData()).a();
        return new d((float) i, a.d(i).b(), f, f2, 0, a.q());
    }
}
