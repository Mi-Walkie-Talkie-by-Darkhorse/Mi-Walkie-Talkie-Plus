package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import com.github.mikephil.charting.d.c;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.a;
import com.github.mikephil.charting.data.g;
import com.github.mikephil.charting.data.i;
import com.github.mikephil.charting.data.j;
import com.github.mikephil.charting.data.o;
import com.github.mikephil.charting.e.a.f;

public class CombinedChart extends BarLineChartBase<i> implements f {
    protected boolean a = false;
    protected DrawOrder[] ac;
    private boolean ad = true;
    private boolean ae = false;

    public enum DrawOrder {
        BAR,
        BUBBLE,
        LINE,
        CANDLE,
        SCATTER
    }

    public CombinedChart(Context context) {
        super(context);
    }

    public CombinedChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CombinedChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void a() {
        super.a();
        this.ac = new DrawOrder[]{DrawOrder.BAR, DrawOrder.BUBBLE, DrawOrder.LINE, DrawOrder.CANDLE, DrawOrder.SCATTER};
        setHighlighter(new c(this, this));
        setHighlightFullBarEnabled(true);
        this.Q = new com.github.mikephil.charting.f.f(this, this.T, this.S);
    }

    public i getCombinedData() {
        return (i) this.E;
    }

    public void setData(i iVar) {
        super.setData(iVar);
        setHighlighter(new c(this, this));
        ((com.github.mikephil.charting.f.f) this.Q).b();
        this.Q.a();
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

    public j getLineData() {
        if (this.E == null) {
            return null;
        }
        return ((i) this.E).l();
    }

    public a getBarData() {
        if (this.E == null) {
            return null;
        }
        return ((i) this.E).m();
    }

    public o getScatterData() {
        if (this.E == null) {
            return null;
        }
        return ((i) this.E).n();
    }

    public g getCandleData() {
        if (this.E == null) {
            return null;
        }
        return ((i) this.E).o();
    }

    public com.github.mikephil.charting.data.f getBubbleData() {
        if (this.E == null) {
            return null;
        }
        return ((i) this.E).a();
    }

    public boolean d() {
        return this.ae;
    }

    public boolean c() {
        return this.ad;
    }

    public void setDrawValueAboveBar(boolean z) {
        this.ad = z;
    }

    public void setDrawBarShadow(boolean z) {
        this.ae = z;
    }

    public void setHighlightFullBarEnabled(boolean z) {
        this.a = z;
    }

    public boolean e() {
        return this.a;
    }

    public DrawOrder[] getDrawOrder() {
        return this.ac;
    }

    public void setDrawOrder(DrawOrder[] drawOrderArr) {
        if (drawOrderArr != null && drawOrderArr.length > 0) {
            this.ac = drawOrderArr;
        }
    }
}
