package com.github.mikephil.charting.e.a;

import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.g.g;

/* compiled from: BarLineScatterCandleBubbleDataProvider */
public interface b extends e {
    g a(AxisDependency axisDependency);

    boolean d(AxisDependency axisDependency);

    com.github.mikephil.charting.data.b getData();

    float getHighestVisibleX();

    float getLowestVisibleX();
}
