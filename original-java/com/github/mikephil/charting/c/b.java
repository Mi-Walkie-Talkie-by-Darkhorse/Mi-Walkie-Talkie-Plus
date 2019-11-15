package com.github.mikephil.charting.c;

import com.github.mikephil.charting.data.j;
import com.github.mikephil.charting.e.a.g;
import com.github.mikephil.charting.e.b.f;

/* compiled from: DefaultFillFormatter */
public class b implements e {
    public float a(f fVar, g gVar) {
        float yChartMax = gVar.getYChartMax();
        float yChartMin = gVar.getYChartMin();
        j lineData = gVar.getLineData();
        if (fVar.v() > 0.0f && fVar.u() < 0.0f) {
            return 0.0f;
        }
        if (lineData.f() > 0.0f) {
            yChartMax = 0.0f;
        }
        if (lineData.e() < 0.0f) {
            yChartMin = 0.0f;
        }
        if (fVar.u() < 0.0f) {
            yChartMin = yChartMax;
        }
        return yChartMin;
    }
}
