package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import com.github.mikephil.charting.data.f;
import com.github.mikephil.charting.e.a.c;
import com.github.mikephil.charting.f.d;

public class BubbleChart extends BarLineChartBase<f> implements c {
    public BubbleChart(Context context) {
        super(context);
    }

    public BubbleChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BubbleChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void a() {
        super.a();
        this.Q = new d(this, this.T, this.S);
    }

    public f getBubbleData() {
        return (f) this.E;
    }
}
