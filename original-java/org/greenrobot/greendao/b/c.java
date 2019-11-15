package org.greenrobot.greendao.b;

import java.util.Arrays;

/* compiled from: LongHashMap */
public final class c<T> {
    private a<T>[] a;
    private int b;
    private int c;
    private int d;

    /* compiled from: LongHashMap */
    static final class a<T> {
        final long a;
        T b;
        a<T> c;

        a(long j, T t, a<T> aVar) {
            this.a = j;
            this.b = t;
            this.c = aVar;
        }
    }

    public c() {
        this(16);
    }

    public c(int i) {
        this.b = i;
        this.c = (i * 4) / 3;
        this.a = new a[i];
    }

    public T a(long j) {
        for (a<T> aVar = this.a[((((int) (j >>> 32)) ^ ((int) j)) & Integer.MAX_VALUE) % this.b]; aVar != null; aVar = aVar.c) {
            if (aVar.a == j) {
                return aVar.b;
            }
        }
        return null;
    }

    public T a(long j, T t) {
        int i = ((((int) (j >>> 32)) ^ ((int) j)) & Integer.MAX_VALUE) % this.b;
        a<T> aVar = this.a[i];
        for (a<T> aVar2 = aVar; aVar2 != null; aVar2 = aVar2.c) {
            if (aVar2.a == j) {
                T t2 = aVar2.b;
                aVar2.b = t;
                return t2;
            }
        }
        this.a[i] = new a<>(j, t, aVar);
        this.d++;
        if (this.d > this.c) {
            a(this.b * 2);
        }
        return null;
    }

    public T b(long j) {
        int i = ((((int) (j >>> 32)) ^ ((int) j)) & Integer.MAX_VALUE) % this.b;
        a<T> aVar = this.a[i];
        a<T> aVar2 = null;
        while (aVar != null) {
            a<T> aVar3 = aVar.c;
            if (aVar.a == j) {
                if (aVar2 == null) {
                    this.a[i] = aVar3;
                } else {
                    aVar2.c = aVar3;
                }
                this.d--;
                return aVar.b;
            }
            aVar2 = aVar;
            aVar = aVar3;
        }
        return null;
    }

    public void a() {
        this.d = 0;
        Arrays.fill(this.a, null);
    }

    public void a(int i) {
        a<T>[] aVarArr = new a[i];
        for (a<T> aVar : this.a) {
            while (aVar != null) {
                long j = aVar.a;
                int i2 = ((((int) (j >>> 32)) ^ ((int) j)) & Integer.MAX_VALUE) % i;
                a<T> aVar2 = aVar.c;
                aVar.c = aVarArr[i2];
                aVarArr[i2] = aVar;
                aVar = aVar2;
            }
        }
        this.a = aVarArr;
        this.b = i;
        this.c = (i * 4) / 3;
    }

    public void b(int i) {
        a((i * 5) / 3);
    }
}
