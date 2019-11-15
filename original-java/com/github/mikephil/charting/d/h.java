package com.github.mikephil.charting.d;

import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.charts.PieRadarChartBase;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PieRadarHighlighter */
public abstract class h<T extends PieRadarChartBase> implements f {
    protected T a;
    protected List<d> b = new ArrayList();

    /* access modifiers changed from: protected */
    public abstract d a(int i, float f, float f2);

    public h(T t) {
        this.a = t;
    }

    public d a(float f, float f2) {
        if (this.a.d(f, f2) > this.a.getRadius()) {
            return null;
        }
        float b2 = this.a.b(f, f2);
        if (this.a instanceof PieChart) {
            b2 /= this.a.getAnimator().a();
        }
        int a2 = this.a.a(b2);
        if (a2 < 0 || a2 >= this.a.getData().k().s()) {
            return null;
        }
        return a(a2, f, f2);
    }
}
