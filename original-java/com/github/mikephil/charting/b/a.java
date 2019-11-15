package com.github.mikephil.charting.b;

/* compiled from: AbstractBuffer */
public abstract class a<T> {
    protected int a;
    public final float[] b;
    protected float c;
    protected float d;
    protected int e;
    protected int f;

    public a(int i) {
        this.a = 0;
        this.c = 1.0f;
        this.d = 1.0f;
        this.e = 0;
        this.f = 0;
        this.a = 0;
        this.b = new float[i];
    }

    public void a() {
        this.a = 0;
    }

    public int b() {
        return this.b.length;
    }

    public void a(float f2, float f3) {
        this.c = f2;
        this.d = f3;
    }
}
