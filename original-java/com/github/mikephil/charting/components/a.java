package com.github.mikephil.charting.components;

import android.graphics.DashPathEffect;
import com.github.mikephil.charting.c.d;
import com.github.mikephil.charting.g.i;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AxisBase */
public abstract class a extends b {
    private int B;
    private float C;
    private int D;
    private float E;
    private int F;
    private DashPathEffect G;
    private DashPathEffect H;
    protected d a;
    public float[] b;
    public float[] c;
    public int d;
    public int e;
    protected float f;
    protected boolean g;
    protected boolean h;
    protected boolean i;
    protected boolean j;
    protected boolean k;
    protected boolean l;
    protected List<LimitLine> m;
    protected boolean n;
    protected float o;
    protected float p;
    protected boolean q;
    protected boolean r;
    public float s;
    public float t;
    public float u;

    public a() {
        this.B = -7829368;
        this.C = 1.0f;
        this.D = -7829368;
        this.E = 1.0f;
        this.b = new float[0];
        this.c = new float[0];
        this.F = 6;
        this.f = 1.0f;
        this.g = false;
        this.h = false;
        this.i = true;
        this.j = true;
        this.k = true;
        this.l = false;
        this.G = null;
        this.H = null;
        this.n = false;
        this.o = 0.0f;
        this.p = 0.0f;
        this.q = false;
        this.r = false;
        this.s = 0.0f;
        this.t = 0.0f;
        this.u = 0.0f;
        this.z = i.a(10.0f);
        this.w = i.a(5.0f);
        this.x = i.a(5.0f);
        this.m = new ArrayList();
    }

    public void a(boolean z) {
        this.i = z;
    }

    public boolean a() {
        return this.i;
    }

    public boolean b() {
        return this.j;
    }

    public boolean c() {
        return this.l && this.d > 0;
    }

    public int d() {
        return this.B;
    }

    public void a(float f2) {
        this.E = i.a(f2);
    }

    public float e() {
        return this.E;
    }

    public float f() {
        return this.C;
    }

    public void a(int i2) {
        this.D = i2;
    }

    public int g() {
        return this.D;
    }

    public boolean h() {
        return this.k;
    }

    public void b(int i2) {
        int i3 = 25;
        int i4 = 2;
        if (i2 <= 25) {
            i3 = i2;
        }
        if (i3 >= 2) {
            i4 = i3;
        }
        this.F = i4;
        this.h = false;
    }

    public void a(int i2, boolean z) {
        b(i2);
        this.h = z;
    }

    public boolean i() {
        return this.h;
    }

    public int j() {
        return this.F;
    }

    public boolean k() {
        return this.g;
    }

    public float l() {
        return this.f;
    }

    public List<LimitLine> m() {
        return this.m;
    }

    public boolean n() {
        return this.n;
    }

    public String o() {
        String str = "";
        int i2 = 0;
        while (i2 < this.b.length) {
            String c2 = c(i2);
            if (c2 == null || str.length() >= c2.length()) {
                c2 = str;
            }
            i2++;
            str = c2;
        }
        return str;
    }

    public String c(int i2) {
        if (i2 < 0 || i2 >= this.b.length) {
            return "";
        }
        return p().a(this.b[i2], this);
    }

    public void a(d dVar) {
        if (dVar == null) {
            this.a = new com.github.mikephil.charting.c.a(this.e);
        } else {
            this.a = dVar;
        }
    }

    public d p() {
        if (this.a == null || ((this.a instanceof com.github.mikephil.charting.c.a) && ((com.github.mikephil.charting.c.a) this.a).a() != this.e)) {
            this.a = new com.github.mikephil.charting.c.a(this.e);
        }
        return this.a;
    }

    public DashPathEffect q() {
        return this.H;
    }

    public DashPathEffect r() {
        return this.G;
    }

    public void b(float f2) {
        this.q = true;
        this.t = f2;
        this.u = Math.abs(this.s - f2);
    }

    public void c(float f2) {
        this.r = true;
        this.s = f2;
        this.u = Math.abs(f2 - this.t);
    }

    public void a(float f2, float f3) {
        float f4 = this.q ? this.t : f2 - this.o;
        float f5 = this.r ? this.s : this.p + f3;
        if (Math.abs(f5 - f4) == 0.0f) {
            f5 += 1.0f;
            f4 -= 1.0f;
        }
        this.t = f4;
        this.s = f5;
        this.u = Math.abs(f5 - f4);
    }

    public void d(float f2) {
        this.o = f2;
    }

    public void e(float f2) {
        this.p = f2;
    }
}
