package com.github.mikephil.charting.g;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.github.mikephil.charting.data.CandleEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.e.b.c;
import com.github.mikephil.charting.e.b.d;
import com.github.mikephil.charting.e.b.f;
import com.github.mikephil.charting.e.b.k;

/* compiled from: Transformer */
public class g {
    protected Matrix a = new Matrix();
    protected Matrix b = new Matrix();
    protected j c;
    protected float[] d = new float[1];
    protected float[] e = new float[1];
    protected float[] f = new float[1];
    protected float[] g = new float[1];
    protected Matrix h = new Matrix();
    float[] i = new float[2];
    private Matrix j = new Matrix();
    private Matrix k = new Matrix();

    public g(j jVar) {
        this.c = jVar;
    }

    public void a(float f2, float f3, float f4, float f5) {
        float f6 = 0.0f;
        float i2 = this.c.i() / f3;
        float j2 = this.c.j() / f4;
        if (Float.isInfinite(i2)) {
            i2 = 0.0f;
        }
        if (!Float.isInfinite(j2)) {
            f6 = j2;
        }
        this.a.reset();
        this.a.postTranslate(-f2, -f5);
        this.a.postScale(i2, -f6);
    }

    public void a(boolean z) {
        this.b.reset();
        if (!z) {
            this.b.postTranslate(this.c.a(), this.c.m() - this.c.d());
            return;
        }
        this.b.setTranslate(this.c.a(), -this.c.c());
        this.b.postScale(1.0f, -1.0f);
    }

    public float[] a(k kVar, float f2, float f3, int i2, int i3) {
        int i4 = ((int) ((((float) (i3 - i2)) * f2) + 1.0f)) * 2;
        if (this.d.length != i4) {
            this.d = new float[i4];
        }
        float[] fArr = this.d;
        for (int i5 = 0; i5 < i4; i5 += 2) {
            Entry d2 = kVar.d((i5 / 2) + i2);
            if (d2 != null) {
                fArr[i5] = d2.h();
                fArr[i5 + 1] = d2.b() * f3;
            } else {
                fArr[i5] = 0.0f;
                fArr[i5 + 1] = 0.0f;
            }
        }
        a().mapPoints(fArr);
        return fArr;
    }

    public float[] a(c cVar, float f2, int i2, int i3) {
        int i4 = ((i3 - i2) + 1) * 2;
        if (this.e.length != i4) {
            this.e = new float[i4];
        }
        float[] fArr = this.e;
        for (int i5 = 0; i5 < i4; i5 += 2) {
            Entry d2 = cVar.d((i5 / 2) + i2);
            if (d2 != null) {
                fArr[i5] = d2.h();
                fArr[i5 + 1] = d2.b() * f2;
            } else {
                fArr[i5] = 0.0f;
                fArr[i5 + 1] = 0.0f;
            }
        }
        a().mapPoints(fArr);
        return fArr;
    }

    public float[] a(f fVar, float f2, float f3, int i2, int i3) {
        int i4 = (((int) (((float) (i3 - i2)) * f2)) + 1) * 2;
        if (this.f.length != i4) {
            this.f = new float[i4];
        }
        float[] fArr = this.f;
        for (int i5 = 0; i5 < i4; i5 += 2) {
            Entry d2 = fVar.d((i5 / 2) + i2);
            if (d2 != null) {
                fArr[i5] = d2.h();
                fArr[i5 + 1] = d2.b() * f3;
            } else {
                fArr[i5] = 0.0f;
                fArr[i5 + 1] = 0.0f;
            }
        }
        a().mapPoints(fArr);
        return fArr;
    }

    public float[] a(d dVar, float f2, float f3, int i2, int i3) {
        int i4 = ((int) ((((float) (i3 - i2)) * f2) + 1.0f)) * 2;
        if (this.g.length != i4) {
            this.g = new float[i4];
        }
        float[] fArr = this.g;
        for (int i5 = 0; i5 < i4; i5 += 2) {
            CandleEntry candleEntry = (CandleEntry) dVar.d((i5 / 2) + i2);
            if (candleEntry != null) {
                fArr[i5] = candleEntry.h();
                fArr[i5 + 1] = candleEntry.a() * f3;
            } else {
                fArr[i5] = 0.0f;
                fArr[i5 + 1] = 0.0f;
            }
        }
        a().mapPoints(fArr);
        return fArr;
    }

    public void a(Path path) {
        path.transform(this.a);
        path.transform(this.c.p());
        path.transform(this.b);
    }

    public void a(float[] fArr) {
        this.a.mapPoints(fArr);
        this.c.p().mapPoints(fArr);
        this.b.mapPoints(fArr);
    }

    public void a(RectF rectF) {
        this.a.mapRect(rectF);
        this.c.p().mapRect(rectF);
        this.b.mapRect(rectF);
    }

    public void a(RectF rectF, float f2) {
        rectF.top *= f2;
        rectF.bottom *= f2;
        this.a.mapRect(rectF);
        this.c.p().mapRect(rectF);
        this.b.mapRect(rectF);
    }

    public void b(RectF rectF, float f2) {
        rectF.left *= f2;
        rectF.right *= f2;
        this.a.mapRect(rectF);
        this.c.p().mapRect(rectF);
        this.b.mapRect(rectF);
    }

    public void b(float[] fArr) {
        Matrix matrix = this.h;
        matrix.reset();
        this.b.invert(matrix);
        matrix.mapPoints(fArr);
        this.c.p().invert(matrix);
        matrix.mapPoints(fArr);
        this.a.invert(matrix);
        matrix.mapPoints(fArr);
    }

    public d a(float f2, float f3) {
        d a2 = d.a(0.0d, 0.0d);
        a(f2, f3, a2);
        return a2;
    }

    public void a(float f2, float f3, d dVar) {
        this.i[0] = f2;
        this.i[1] = f3;
        b(this.i);
        dVar.a = (double) this.i[0];
        dVar.b = (double) this.i[1];
    }

    public d b(float f2, float f3) {
        this.i[0] = f2;
        this.i[1] = f3;
        a(this.i);
        return d.a((double) this.i[0], (double) this.i[1]);
    }

    public Matrix a() {
        this.j.set(this.a);
        this.j.postConcat(this.c.a);
        this.j.postConcat(this.b);
        return this.j;
    }
}
