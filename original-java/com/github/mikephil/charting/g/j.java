package com.github.mikephil.charting.g;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;

/* compiled from: ViewPortHandler */
public class j {
    protected final Matrix a = new Matrix();
    protected RectF b = new RectF();
    protected float c = 0.0f;
    protected float d = 0.0f;
    protected float[] e = new float[9];
    protected Matrix f = new Matrix();
    protected final float[] g = new float[9];
    private float h = 1.0f;
    private float i = Float.MAX_VALUE;
    private float j = 1.0f;
    private float k = Float.MAX_VALUE;
    private float l = 1.0f;
    private float m = 1.0f;
    private float n = 0.0f;
    private float o = 0.0f;
    private float p = 0.0f;
    private float q = 0.0f;

    public void a(float f2, float f3) {
        float a2 = a();
        float c2 = c();
        float b2 = b();
        float d2 = d();
        this.d = f3;
        this.c = f2;
        a(a2, c2, b2, d2);
    }

    public void a(float f2, float f3, float f4, float f5) {
        this.b.set(f2, f3, this.c - f4, this.d - f5);
    }

    public float a() {
        return this.b.left;
    }

    public float b() {
        return this.c - this.b.right;
    }

    public float c() {
        return this.b.top;
    }

    public float d() {
        return this.d - this.b.bottom;
    }

    public float e() {
        return this.b.top;
    }

    public float f() {
        return this.b.left;
    }

    public float g() {
        return this.b.right;
    }

    public float h() {
        return this.b.bottom;
    }

    public float i() {
        return this.b.width();
    }

    public float j() {
        return this.b.height();
    }

    public RectF k() {
        return this.b;
    }

    public e l() {
        return e.a(this.b.centerX(), this.b.centerY());
    }

    public float m() {
        return this.d;
    }

    public float n() {
        return this.c;
    }

    public float o() {
        return Math.min(this.b.width(), this.b.height());
    }

    public void a(float f2, float f3, float f4, float f5, Matrix matrix) {
        matrix.reset();
        matrix.set(this.a);
        matrix.postScale(f2, f3, f4, f5);
    }

    public void a(float[] fArr, View view) {
        Matrix matrix = this.f;
        matrix.reset();
        matrix.set(this.a);
        matrix.postTranslate(-(fArr[0] - a()), -(fArr[1] - c()));
        a(matrix, view, true);
    }

    public Matrix a(Matrix matrix, View view, boolean z) {
        this.a.set(matrix);
        a(this.a, this.b);
        if (z) {
            view.invalidate();
        }
        matrix.set(this.a);
        return matrix;
    }

    public void a(Matrix matrix, RectF rectF) {
        float f2;
        float f3 = 0.0f;
        matrix.getValues(this.g);
        float f4 = this.g[2];
        float f5 = this.g[0];
        float f6 = this.g[5];
        float f7 = this.g[4];
        this.l = Math.min(Math.max(this.j, f5), this.k);
        this.m = Math.min(Math.max(this.h, f7), this.i);
        if (rectF != null) {
            f2 = rectF.width();
            f3 = rectF.height();
        } else {
            f2 = 0.0f;
        }
        this.n = Math.min(Math.max(f4, ((-f2) * (this.l - 1.0f)) - this.p), this.p);
        this.o = Math.max(Math.min(f6, (f3 * (this.m - 1.0f)) + this.q), -this.q);
        this.g[2] = this.n;
        this.g[0] = this.l;
        this.g[5] = this.o;
        this.g[4] = this.m;
        matrix.setValues(this.g);
    }

    public void a(float f2) {
        if (f2 < 1.0f) {
            f2 = 1.0f;
        }
        this.j = f2;
        a(this.a, this.b);
    }

    public void b(float f2) {
        if (f2 == 0.0f) {
            f2 = Float.MAX_VALUE;
        }
        this.k = f2;
        a(this.a, this.b);
    }

    public void b(float f2, float f3) {
        if (f2 < 1.0f) {
            f2 = 1.0f;
        }
        if (f3 == 0.0f) {
            f3 = Float.MAX_VALUE;
        }
        this.j = f2;
        this.k = f3;
        a(this.a, this.b);
    }

    public void c(float f2) {
        if (f2 < 1.0f) {
            f2 = 1.0f;
        }
        this.h = f2;
        a(this.a, this.b);
    }

    public void d(float f2) {
        if (f2 == 0.0f) {
            f2 = Float.MAX_VALUE;
        }
        this.i = f2;
        a(this.a, this.b);
    }

    public void c(float f2, float f3) {
        if (f2 < 1.0f) {
            f2 = 1.0f;
        }
        if (f3 == 0.0f) {
            f3 = Float.MAX_VALUE;
        }
        this.h = f2;
        this.i = f3;
        a(this.a, this.b);
    }

    public Matrix p() {
        return this.a;
    }

    public boolean e(float f2) {
        return g(f2) && h(f2);
    }

    public boolean f(float f2) {
        return i(f2) && j(f2);
    }

    public boolean d(float f2, float f3) {
        return e(f2) && f(f3);
    }

    public boolean g(float f2) {
        return this.b.left <= 1.0f + f2;
    }

    public boolean h(float f2) {
        return this.b.right >= (((float) ((int) (f2 * 100.0f))) / 100.0f) - 1.0f;
    }

    public boolean i(float f2) {
        return this.b.top <= f2;
    }

    public boolean j(float f2) {
        return this.b.bottom >= ((float) ((int) (f2 * 100.0f))) / 100.0f;
    }

    public float q() {
        return this.l;
    }

    public float r() {
        return this.m;
    }

    public boolean s() {
        return u() && t();
    }

    public boolean t() {
        return this.m <= this.h && this.h <= 1.0f;
    }

    public boolean u() {
        return this.l <= this.j && this.j <= 1.0f;
    }

    public void k(float f2) {
        this.p = i.a(f2);
    }

    public void l(float f2) {
        this.q = i.a(f2);
    }

    public boolean v() {
        return this.p <= 0.0f && this.q <= 0.0f;
    }

    public boolean w() {
        return this.l > this.j;
    }

    public boolean x() {
        return this.l < this.k;
    }

    public boolean y() {
        return this.m > this.h;
    }

    public boolean z() {
        return this.m < this.i;
    }
}
