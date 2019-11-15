package com.github.mikephil.charting.components;

import com.github.mikephil.charting.g.i;

public class XAxis extends a {
    public int B;
    public int C;
    public int D;
    public int E;
    protected float F;
    private boolean G;
    private XAxisPosition H;

    public enum XAxisPosition {
        TOP,
        BOTTOM,
        BOTH_SIDED,
        TOP_INSIDE,
        BOTTOM_INSIDE
    }

    public XAxis() {
        this.B = 1;
        this.C = 1;
        this.D = 1;
        this.E = 1;
        this.F = 0.0f;
        this.G = false;
        this.H = XAxisPosition.TOP;
        this.x = i.a(4.0f);
    }

    public XAxisPosition y() {
        return this.H;
    }

    public void a(XAxisPosition xAxisPosition) {
        this.H = xAxisPosition;
    }

    public float z() {
        return this.F;
    }

    public boolean A() {
        return this.G;
    }
}
