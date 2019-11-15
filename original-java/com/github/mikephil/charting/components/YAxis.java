package com.github.mikephil.charting.components;

import android.graphics.Paint;
import com.github.mikephil.charting.g.i;

public class YAxis extends a {
    protected boolean B;
    protected boolean C;
    protected int D;
    protected float E;
    protected float F;
    protected float G;
    protected float H;
    protected float I;
    private boolean J;
    private YAxisLabelPosition K;
    private AxisDependency L;

    public enum AxisDependency {
        LEFT,
        RIGHT
    }

    public enum YAxisLabelPosition {
        OUTSIDE_CHART,
        INSIDE_CHART
    }

    public YAxis() {
        this.J = true;
        this.B = false;
        this.C = false;
        this.D = -7829368;
        this.E = 1.0f;
        this.F = 10.0f;
        this.G = 10.0f;
        this.K = YAxisLabelPosition.OUTSIDE_CHART;
        this.H = 0.0f;
        this.I = Float.POSITIVE_INFINITY;
        this.L = AxisDependency.LEFT;
        this.x = 0.0f;
    }

    public YAxis(AxisDependency axisDependency) {
        this.J = true;
        this.B = false;
        this.C = false;
        this.D = -7829368;
        this.E = 1.0f;
        this.F = 10.0f;
        this.G = 10.0f;
        this.K = YAxisLabelPosition.OUTSIDE_CHART;
        this.H = 0.0f;
        this.I = Float.POSITIVE_INFINITY;
        this.L = axisDependency;
        this.x = 0.0f;
    }

    public AxisDependency y() {
        return this.L;
    }

    public float z() {
        return this.H;
    }

    public float A() {
        return this.I;
    }

    public YAxisLabelPosition B() {
        return this.K;
    }

    public boolean C() {
        return this.J;
    }

    public boolean D() {
        return this.B;
    }

    public void f(float f) {
        this.F = f;
    }

    public float E() {
        return this.F;
    }

    public void g(float f) {
        this.G = f;
    }

    public float F() {
        return this.G;
    }

    public boolean G() {
        return this.C;
    }

    public int H() {
        return this.D;
    }

    public float I() {
        return this.E;
    }

    public float a(Paint paint) {
        paint.setTextSize(this.z);
        float s = (s() * 2.0f) + ((float) i.a(paint, o()));
        float z = z();
        float A = A();
        if (z > 0.0f) {
            z = i.a(z);
        }
        if (A > 0.0f && A != Float.POSITIVE_INFINITY) {
            A = i.a(A);
        }
        if (((double) A) <= 0.0d) {
            A = s;
        }
        return Math.max(z, Math.min(s, A));
    }

    public float b(Paint paint) {
        paint.setTextSize(this.z);
        return ((float) i.b(paint, o())) + (t() * 2.0f);
    }

    public boolean J() {
        if (!x() || !h() || B() != YAxisLabelPosition.OUTSIDE_CHART) {
            return false;
        }
        return true;
    }

    public void a(float f, float f2) {
        if (this.q) {
            f = this.t;
        }
        if (this.r) {
            f2 = this.s;
        }
        float abs = Math.abs(f2 - f);
        if (abs == 0.0f) {
            f2 += 1.0f;
            f -= 1.0f;
        }
        if (!this.q) {
            this.t = f - ((abs / 100.0f) * F());
        }
        if (!this.r) {
            this.s = ((abs / 100.0f) * E()) + f2;
        }
        this.u = Math.abs(this.s - this.t);
    }
}
