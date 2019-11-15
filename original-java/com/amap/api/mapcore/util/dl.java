package com.amap.api.mapcore.util;

import com.autonavi.amap.mapcore.DPoint;

/* compiled from: Bounds */
public class dl {
    public final double a;
    public final double b;
    public final double c;
    public final double d;
    public final double e;
    public final double f;

    public dl(double d2, double d3, double d4, double d5) {
        this.a = d2;
        this.b = d4;
        this.c = d3;
        this.d = d5;
        this.e = (d2 + d3) / 2.0d;
        this.f = (d4 + d5) / 2.0d;
    }

    public boolean a(double d2, double d3) {
        return this.a <= d2 && d2 <= this.c && this.b <= d3 && d3 <= this.d;
    }

    public boolean a(DPoint dPoint) {
        return a(dPoint.x, dPoint.y);
    }

    public boolean a(double d2, double d3, double d4, double d5) {
        return d2 < this.c && this.a < d3 && d4 < this.d && this.b < d5;
    }

    public boolean a(dl dlVar) {
        return a(dlVar.a, dlVar.c, dlVar.b, dlVar.d);
    }

    public boolean b(dl dlVar) {
        return dlVar.a >= this.a && dlVar.c <= this.c && dlVar.b >= this.b && dlVar.d <= this.d;
    }
}
