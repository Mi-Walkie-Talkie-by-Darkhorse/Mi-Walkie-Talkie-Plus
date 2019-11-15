package com.github.mikephil.charting.d;

import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.n;
import com.github.mikephil.charting.g.e;
import java.util.List;

/* compiled from: RadarHighlighter */
public class i extends h<RadarChart> {
    public i(RadarChart radarChart) {
        super(radarChart);
    }

    /* access modifiers changed from: protected */
    public d a(int i, float f, float f2) {
        float f3;
        d dVar;
        List a = a(i);
        float d = ((RadarChart) this.a).d(f, f2) / ((RadarChart) this.a).getFactor();
        d dVar2 = null;
        float f4 = Float.MAX_VALUE;
        int i2 = 0;
        while (i2 < a.size()) {
            d dVar3 = (d) a.get(i2);
            float abs = Math.abs(dVar3.b() - d);
            if (abs < f4) {
                float f5 = abs;
                dVar = dVar3;
                f3 = f5;
            } else {
                f3 = f4;
                dVar = dVar2;
            }
            i2++;
            dVar2 = dVar;
            f4 = f3;
        }
        return dVar2;
    }

    /* access modifiers changed from: protected */
    public List<d> a(int i) {
        this.b.clear();
        float b = ((RadarChart) this.a).getAnimator().b();
        float a = ((RadarChart) this.a).getAnimator().a();
        float sliceAngle = ((RadarChart) this.a).getSliceAngle();
        float factor = ((RadarChart) this.a).getFactor();
        e a2 = e.a(0.0f, 0.0f);
        for (int i2 = 0; i2 < ((n) ((RadarChart) this.a).getData()).d(); i2++) {
            com.github.mikephil.charting.e.b.e a3 = ((n) ((RadarChart) this.a).getData()).a(i2);
            Entry d = a3.d(i);
            float b2 = d.b() - ((RadarChart) this.a).getYChartMin();
            com.github.mikephil.charting.g.i.a(((RadarChart) this.a).getCenterOffsets(), b2 * factor * a, ((RadarChart) this.a).getRotationAngle() + (((float) i) * sliceAngle * b), a2);
            this.b.add(new d((float) i, d.b(), a2.a, a2.b, i2, a3.q()));
        }
        return this.b;
    }
}
