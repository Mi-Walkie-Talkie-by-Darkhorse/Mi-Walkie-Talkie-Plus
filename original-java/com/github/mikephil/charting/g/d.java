package com.github.mikephil.charting.g;

import com.github.mikephil.charting.g.f.a;

/* compiled from: MPPointD */
public class d extends a {
    private static f<d> c = f.a(64, new d(0.0d, 0.0d));
    public double a;
    public double b;

    static {
        c.a(0.5f);
    }

    public static d a(double d, double d2) {
        d dVar = (d) c.a();
        dVar.a = d;
        dVar.b = d2;
        return dVar;
    }

    public static void a(d dVar) {
        c.a(dVar);
    }

    /* access modifiers changed from: protected */
    public a a() {
        return new d(0.0d, 0.0d);
    }

    private d(double d, double d2) {
        this.a = d;
        this.b = d2;
    }

    public String toString() {
        return "MPPointD, x: " + this.a + ", y: " + this.b;
    }
}
