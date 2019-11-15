package com.github.mikephil.charting.data;

import com.github.mikephil.charting.e.b.i;

public class PieDataSet extends DataSet<PieEntry> implements i {
    private float a;
    private boolean p;
    private float q;
    private ValuePosition r;
    private ValuePosition s;
    private int t;
    private float u;
    private float v;
    private float w;
    private float x;
    private boolean y;

    public enum ValuePosition {
        INSIDE_SLICE,
        OUTSIDE_SLICE
    }

    /* access modifiers changed from: protected */
    public void a(PieEntry pieEntry) {
        if (pieEntry != null) {
            c(pieEntry);
        }
    }

    public float a() {
        return this.a;
    }

    public boolean y() {
        return this.p;
    }

    public float z() {
        return this.q;
    }

    public ValuePosition A() {
        return this.r;
    }

    public ValuePosition B() {
        return this.s;
    }

    public int C() {
        return this.t;
    }

    public float D() {
        return this.u;
    }

    public float E() {
        return this.v;
    }

    public float F() {
        return this.w;
    }

    public float G() {
        return this.x;
    }

    public boolean H() {
        return this.y;
    }
}
