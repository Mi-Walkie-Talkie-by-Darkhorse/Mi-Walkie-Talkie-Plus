package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import com.github.mikephil.charting.data.g;
import com.github.mikephil.charting.e.a.d;
import com.github.mikephil.charting.f.e;

public class CandleStickChart extends BarLineChartBase<g> implements d {
    public CandleStickChart(Context context) {
        super(context);
    }

    public CandleStickChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CandleStickChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void a() {
        super.a();
        this.Q = new e(this, this.T, this.S);
        getXAxis().d(0.5f);
        getXAxis().e(0.5f);
    }

    public g getCandleData() {
        return (g) this.E;
    }
}
