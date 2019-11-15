package com.github.mikephil.charting.components;

import android.graphics.DashPathEffect;
import android.graphics.Paint.Style;

public class LimitLine extends b {
    private float a;
    private float b;
    private int c;
    private Style d;
    private String e;
    private DashPathEffect f;
    private LimitLabelPosition g;

    public enum LimitLabelPosition {
        LEFT_TOP,
        LEFT_BOTTOM,
        RIGHT_TOP,
        RIGHT_BOTTOM
    }

    public float a() {
        return this.a;
    }

    public float b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public DashPathEffect d() {
        return this.f;
    }

    public Style e() {
        return this.d;
    }

    public LimitLabelPosition f() {
        return this.g;
    }

    public String g() {
        return this.e;
    }
}
