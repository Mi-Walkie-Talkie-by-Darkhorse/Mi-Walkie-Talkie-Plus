package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.a;
import com.github.mikephil.charting.f.b;

public class BarChart extends BarLineChartBase<a> implements com.github.mikephil.charting.e.a.a {
    protected boolean a = false;
    private boolean ac = true;
    private boolean ad = false;
    private boolean ae = false;

    public BarChart(Context context) {
        super(context);
    }

    public BarChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BarChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void a() {
        super.a();
        this.Q = new b(this, this.T, this.S);
        setHighlighter(new com.github.mikephil.charting.d.a(this));
        getXAxis().d(0.5f);
        getXAxis().e(0.5f);
    }

    /* access modifiers changed from: protected */
    public void b() {
        if (this.ae) {
            this.J.a(((a) this.E).g() - (((a) this.E).a() / 2.0f), (((a) this.E).a() / 2.0f) + ((a) this.E).h());
        } else {
            this.J.a(((a) this.E).g(), ((a) this.E).h());
        }
        this.o.a(((a) this.E).a(AxisDependency.LEFT), ((a) this.E).b(AxisDependency.LEFT));
        this.p.a(((a) this.E).a(AxisDependency.RIGHT), ((a) this.E).b(AxisDependency.RIGHT));
    }

    public d a(float f, float f2) {
        if (this.E == null) {
            Log.e("MPAndroidChart", "Can't select by touch. No data set.");
            return null;
        }
        d a2 = getHighlighter().a(f, f2);
        if (a2 == null || !e()) {
            return a2;
        }
        return new d(a2.a(), a2.b(), a2.c(), a2.d(), a2.f(), -1, a2.h());
    }

    public void setDrawValueAboveBar(boolean z) {
        this.ac = z;
    }

    public boolean c() {
        return this.ac;
    }

    public void setDrawBarShadow(boolean z) {
        this.ad = z;
    }

    public boolean d() {
        return this.ad;
    }

    public void setHighlightFullBarEnabled(boolean z) {
        this.a = z;
    }

    public boolean e() {
        return this.a;
    }

    public a getBarData() {
        return (a) this.E;
    }

    public void setFitBars(boolean z) {
        this.ae = z;
    }
}
