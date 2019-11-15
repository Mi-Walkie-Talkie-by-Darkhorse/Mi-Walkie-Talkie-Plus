package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import com.github.mikephil.charting.components.XAxis.XAxisPosition;
import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.d.e;
import com.github.mikephil.charting.f.r;
import com.github.mikephil.charting.f.u;
import com.github.mikephil.charting.g.c;
import com.github.mikephil.charting.g.h;
import com.github.mikephil.charting.g.i;

public class HorizontalBarChart extends BarChart {
    protected float[] ac = new float[2];
    private RectF ad = new RectF();

    public HorizontalBarChart(Context context) {
        super(context);
    }

    public HorizontalBarChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HorizontalBarChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void a() {
        this.S = new c();
        super.a();
        this.s = new h(this.S);
        this.t = new h(this.S);
        this.Q = new com.github.mikephil.charting.f.h(this, this.T, this.S);
        setHighlighter(new e(this));
        this.q = new u(this.S, this.o, this.s);
        this.r = new u(this.S, this.p, this.t);
        this.u = new r(this.S, this.J, this.s, this);
    }

    public void j() {
        a(this.ad);
        float f = 0.0f + this.ad.left;
        float f2 = this.ad.top + 0.0f;
        float f3 = 0.0f + this.ad.right;
        float f4 = this.ad.bottom + 0.0f;
        if (this.o.J()) {
            f2 += this.o.b(this.q.a());
        }
        if (this.p.J()) {
            f4 += this.p.b(this.r.a());
        }
        float f5 = (float) this.J.D;
        if (this.J.x()) {
            if (this.J.y() == XAxisPosition.BOTTOM) {
                f += f5;
            } else if (this.J.y() == XAxisPosition.TOP) {
                f3 += f5;
            } else if (this.J.y() == XAxisPosition.BOTH_SIDED) {
                f += f5;
                f3 += f5;
            }
        }
        float extraTopOffset = f2 + getExtraTopOffset();
        float extraRightOffset = f3 + getExtraRightOffset();
        float extraBottomOffset = f4 + getExtraBottomOffset();
        float extraLeftOffset = f + getExtraLeftOffset();
        float a = i.a(this.l);
        this.S.a(Math.max(a, extraLeftOffset), Math.max(a, extraTopOffset), Math.max(a, extraRightOffset), Math.max(a, extraBottomOffset));
        if (this.D) {
            Log.i("MPAndroidChart", "offsetLeft: " + extraLeftOffset + ", offsetTop: " + extraTopOffset + ", offsetRight: " + extraRightOffset + ", offsetBottom: " + extraBottomOffset);
            Log.i("MPAndroidChart", "Content: " + this.S.k().toString());
        }
        g();
        f();
    }

    /* access modifiers changed from: protected */
    public void f() {
        this.t.a(this.p.t, this.p.u, this.J.u, this.J.t);
        this.s.a(this.o.t, this.o.u, this.J.u, this.J.t);
    }

    /* access modifiers changed from: protected */
    public float[] a(d dVar) {
        return new float[]{dVar.j(), dVar.i()};
    }

    public d a(float f, float f2) {
        if (this.E != null) {
            return getHighlighter().a(f2, f);
        }
        if (this.D) {
            Log.e("MPAndroidChart", "Can't select by touch. No data set.");
        }
        return null;
    }

    public float getLowestVisibleX() {
        a(AxisDependency.LEFT).a(this.S.f(), this.S.h(), this.A);
        return (float) Math.max((double) this.J.t, this.A.b);
    }

    public float getHighestVisibleX() {
        a(AxisDependency.LEFT).a(this.S.f(), this.S.e(), this.B);
        return (float) Math.min((double) this.J.s, this.B.b);
    }

    public void setVisibleXRangeMaximum(float f) {
        this.S.c(this.J.u / f);
    }

    public void setVisibleXRangeMinimum(float f) {
        this.S.d(this.J.u / f);
    }

    public void setVisibleXRange(float f, float f2) {
        this.S.c(this.J.u / f, this.J.u / f2);
    }

    public void setVisibleYRangeMaximum(float f, AxisDependency axisDependency) {
        this.S.a(b(axisDependency) / f);
    }

    public void setVisibleYRangeMinimum(float f, AxisDependency axisDependency) {
        this.S.b(b(axisDependency) / f);
    }

    public void setVisibleYRange(float f, float f2, AxisDependency axisDependency) {
        this.S.b(b(axisDependency) / f, b(axisDependency) / f2);
    }
}
