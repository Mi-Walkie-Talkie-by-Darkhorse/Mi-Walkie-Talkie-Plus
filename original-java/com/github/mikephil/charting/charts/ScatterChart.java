package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import com.github.mikephil.charting.data.o;
import com.github.mikephil.charting.e.a.h;
import com.github.mikephil.charting.f.p;

public class ScatterChart extends BarLineChartBase<o> implements h {
    public ScatterChart(Context context) {
        super(context);
    }

    public ScatterChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScatterChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void a() {
        super.a();
        this.Q = new p(this, this.T, this.S);
    }

    public o getScatterData() {
        return (o) this.E;
    }
}
