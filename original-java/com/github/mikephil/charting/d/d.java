package com.github.mikephil.charting.d;

import com.github.mikephil.charting.components.YAxis.AxisDependency;

/* compiled from: Highlight */
public class d {
    private float a;
    private float b;
    private float c;
    private float d;
    private int e;
    private int f;
    private int g;
    private AxisDependency h;
    private float i;
    private float j;

    public d(float f2, float f3, float f4, float f5, int i2, AxisDependency axisDependency) {
        this.a = Float.NaN;
        this.b = Float.NaN;
        this.e = -1;
        this.g = -1;
        this.a = f2;
        this.b = f3;
        this.c = f4;
        this.d = f5;
        this.f = i2;
        this.h = axisDependency;
    }

    public d(float f2, float f3, float f4, float f5, int i2, int i3, AxisDependency axisDependency) {
        this(f2, f3, f4, f5, i2, axisDependency);
        this.g = i3;
    }

    public float a() {
        return this.a;
    }

    public float b() {
        return this.b;
    }

    public float c() {
        return this.c;
    }

    public float d() {
        return this.d;
    }

    public int e() {
        return this.e;
    }

    public void a(int i2) {
        this.e = i2;
    }

    public int f() {
        return this.f;
    }

    public int g() {
        return this.g;
    }

    public AxisDependency h() {
        return this.h;
    }

    public void a(float f2, float f3) {
        this.i = f2;
        this.j = f3;
    }

    public float i() {
        return this.i;
    }

    public float j() {
        return this.j;
    }

    public boolean a(d dVar) {
        if (dVar != null && this.f == dVar.f && this.a == dVar.a && this.g == dVar.g && this.e == dVar.e) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "Highlight, x: " + this.a + ", y: " + this.b + ", dataSetIndex: " + this.f + ", stackIndex (only stacked barentry): " + this.g;
    }
}
