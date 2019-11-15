package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import com.github.mikephil.charting.data.j;
import com.github.mikephil.charting.e.a.g;

public class LineChart extends BarLineChartBase<j> implements g {
    public LineChart(Context context) {
        super(context);
    }

    public LineChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LineChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void a() {
        super.a();
        this.Q = new com.github.mikephil.charting.f.j(this, this.T, this.S);
    }

    public j getLineData() {
        return (j) this.E;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        if (this.Q != null && (this.Q instanceof com.github.mikephil.charting.f.j)) {
            ((com.github.mikephil.charting.f.j) this.Q).b();
        }
        super.onDetachedFromWindow();
    }
}
