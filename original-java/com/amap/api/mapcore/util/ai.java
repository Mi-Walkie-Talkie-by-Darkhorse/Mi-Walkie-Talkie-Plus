package com.amap.api.mapcore.util;

import com.autonavi.amap.mapcore.IPoint;

/* compiled from: IBounds */
public class ai {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;

    public ai(int i, int i2, int i3, int i4) {
        a(i, i2, i3, i4);
    }

    public void a(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i3;
        this.c = i2;
        this.d = i4;
        this.e = (i + i2) / 2;
        this.f = (i3 + i4) / 2;
    }

    public boolean a(int i, int i2) {
        return this.a <= i && i <= this.c && this.b <= i2 && i2 <= this.d;
    }

    public boolean a(IPoint iPoint) {
        if (iPoint == null) {
            return false;
        }
        return a(iPoint.x, iPoint.y);
    }

    public boolean b(int i, int i2, int i3, int i4) {
        return i < this.c && this.a < i2 && i3 < this.d && this.b < i4;
    }

    public boolean a(ai aiVar) {
        if (aiVar == null) {
            return false;
        }
        return b(aiVar.a, aiVar.c, aiVar.b, aiVar.d);
    }
}
