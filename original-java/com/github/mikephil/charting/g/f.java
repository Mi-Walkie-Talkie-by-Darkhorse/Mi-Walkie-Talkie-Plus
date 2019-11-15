package com.github.mikephil.charting.g;

import com.github.mikephil.charting.g.f.a;

/* compiled from: ObjectPool */
public class f<T extends a> {
    private static int a = 0;
    private int b;
    private int c;
    private Object[] d;
    private int e;
    private T f;
    private float g;

    /* compiled from: ObjectPool */
    public static abstract class a {
        public static int d = -1;
        int e = d;

        /* access modifiers changed from: protected */
        public abstract a a();
    }

    public static synchronized f a(int i, a aVar) {
        f fVar;
        synchronized (f.class) {
            fVar = new f(i, aVar);
            fVar.b = a;
            a++;
        }
        return fVar;
    }

    private f(int i, T t) {
        if (i <= 0) {
            throw new IllegalArgumentException("Object Pool must be instantiated with a capacity greater than 0!");
        }
        this.c = i;
        this.d = new Object[this.c];
        this.e = 0;
        this.f = t;
        this.g = 1.0f;
        b();
    }

    public void a(float f2) {
        if (f2 > 1.0f) {
            f2 = 1.0f;
        } else if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        this.g = f2;
    }

    private void b() {
        b(this.g);
    }

    private void b(float f2) {
        int i = 1;
        int i2 = (int) (((float) this.c) * f2);
        if (i2 >= 1) {
            if (i2 > this.c) {
                i = this.c;
            } else {
                i = i2;
            }
        }
        for (int i3 = 0; i3 < i; i3++) {
            this.d[i3] = this.f.a();
        }
        this.e = i - 1;
    }

    public synchronized T a() {
        T t;
        if (this.e == -1 && this.g > 0.0f) {
            b();
        }
        t = (a) this.d[this.e];
        t.e = a.d;
        this.e--;
        return t;
    }

    public synchronized void a(T t) {
        if (t.e == a.d) {
            this.e++;
            if (this.e >= this.d.length) {
                c();
            }
            t.e = this.b;
            this.d[this.e] = t;
        } else if (t.e == this.b) {
            throw new IllegalArgumentException("The object passed is already stored in this pool!");
        } else {
            throw new IllegalArgumentException("The object to recycle already belongs to poolId " + t.e + ".  Object cannot belong to two different pool instances simultaneously!");
        }
    }

    private void c() {
        int i = this.c;
        this.c *= 2;
        Object[] objArr = new Object[this.c];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = this.d[i2];
        }
        this.d = objArr;
    }
}
