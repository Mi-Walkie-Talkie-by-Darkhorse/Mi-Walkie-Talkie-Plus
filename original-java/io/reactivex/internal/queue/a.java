package io.reactivex.internal.queue;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.a.f;
import io.reactivex.internal.util.j;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: SpscLinkedArrayQueue */
public final class a<T> implements f<T> {
    static final int a = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    private static final Object j = new Object();
    final AtomicLong b = new AtomicLong();
    int c;
    long d;
    final int e;
    AtomicReferenceArray<Object> f;
    final int g;
    AtomicReferenceArray<Object> h;
    final AtomicLong i = new AtomicLong();

    public a(int i2) {
        int a2 = j.a(Math.max(8, i2));
        int i3 = a2 - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(a2 + 1);
        this.f = atomicReferenceArray;
        this.e = i3;
        a(a2);
        this.h = atomicReferenceArray;
        this.g = i3;
        this.d = (long) (i3 - 1);
        a(0);
    }

    public boolean a(T t) {
        if (t == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        AtomicReferenceArray<Object> atomicReferenceArray = this.f;
        long h2 = h();
        int i2 = this.e;
        int a2 = a(h2, i2);
        if (h2 < this.d) {
            return a(atomicReferenceArray, t, h2, a2);
        }
        int i3 = this.c;
        if (b(atomicReferenceArray, a(((long) i3) + h2, i2)) == null) {
            this.d = (((long) i3) + h2) - 1;
            return a(atomicReferenceArray, t, h2, a2);
        } else if (b(atomicReferenceArray, a(1 + h2, i2)) == null) {
            return a(atomicReferenceArray, t, h2, a2);
        } else {
            a(atomicReferenceArray, h2, a2, t, (long) i2);
            return true;
        }
    }

    private boolean a(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j2, int i2) {
        a(atomicReferenceArray, i2, (Object) t);
        a(1 + j2);
        return true;
    }

    private void a(AtomicReferenceArray<Object> atomicReferenceArray, long j2, int i2, T t, long j3) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f = atomicReferenceArray2;
        this.d = (j2 + j3) - 1;
        a(atomicReferenceArray2, i2, (Object) t);
        a(atomicReferenceArray, atomicReferenceArray2);
        a(atomicReferenceArray, i2, j);
        a(j2 + 1);
    }

    private void a(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        a(atomicReferenceArray, b(atomicReferenceArray.length() - 1), (Object) atomicReferenceArray2);
    }

    private AtomicReferenceArray<Object> a(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        int b2 = b(i2);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) b(atomicReferenceArray, b2);
        a(atomicReferenceArray, b2, (Object) null);
        return atomicReferenceArray2;
    }

    @Nullable
    public T e_() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.h;
        long i2 = i();
        int i3 = this.g;
        int a2 = a(i2, i3);
        T b2 = b(atomicReferenceArray, a2);
        boolean z = b2 == j;
        if (b2 != null && !z) {
            a(atomicReferenceArray, a2, (Object) null);
            b(1 + i2);
            return b2;
        } else if (z) {
            return a(a(atomicReferenceArray, i3 + 1), i2, i3);
        } else {
            return null;
        }
    }

    private T a(AtomicReferenceArray<Object> atomicReferenceArray, long j2, int i2) {
        this.h = atomicReferenceArray;
        int a2 = a(j2, i2);
        T b2 = b(atomicReferenceArray, a2);
        if (b2 != null) {
            a(atomicReferenceArray, a2, (Object) null);
            b(1 + j2);
        }
        return b2;
    }

    public T d() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.h;
        long i2 = i();
        int i3 = this.g;
        T b2 = b(atomicReferenceArray, a(i2, i3));
        if (b2 == j) {
            return b(a(atomicReferenceArray, i3 + 1), i2, i3);
        }
        return b2;
    }

    private T b(AtomicReferenceArray<Object> atomicReferenceArray, long j2, int i2) {
        this.h = atomicReferenceArray;
        return b(atomicReferenceArray, a(j2, i2));
    }

    public void c() {
        while (true) {
            if (e_() == null && b()) {
                return;
            }
        }
    }

    public int e() {
        long g2 = g();
        while (true) {
            long f2 = f();
            long g3 = g();
            if (g2 == g3) {
                return (int) (f2 - g3);
            }
            g2 = g3;
        }
    }

    public boolean b() {
        return f() == g();
    }

    private void a(int i2) {
        this.c = Math.min(i2 / 4, a);
    }

    private long f() {
        return this.b.get();
    }

    private long g() {
        return this.i.get();
    }

    private long h() {
        return this.b.get();
    }

    private long i() {
        return this.i.get();
    }

    private void a(long j2) {
        this.b.lazySet(j2);
    }

    private void b(long j2) {
        this.i.lazySet(j2);
    }

    private static int a(long j2, int i2) {
        return b(((int) j2) & i2);
    }

    private static int b(int i2) {
        return i2;
    }

    private static void a(AtomicReferenceArray<Object> atomicReferenceArray, int i2, Object obj) {
        atomicReferenceArray.lazySet(i2, obj);
    }

    private static <E> Object b(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        return atomicReferenceArray.get(i2);
    }

    public boolean a(T t, T t2) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f;
        long f2 = f();
        int i2 = this.e;
        if (b(atomicReferenceArray, a(f2 + 2, i2)) == null) {
            int a2 = a(f2, i2);
            a(atomicReferenceArray, a2 + 1, (Object) t2);
            a(atomicReferenceArray, a2, (Object) t);
            a(f2 + 2);
        } else {
            AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
            this.f = atomicReferenceArray2;
            int a3 = a(f2, i2);
            a(atomicReferenceArray2, a3 + 1, (Object) t2);
            a(atomicReferenceArray2, a3, (Object) t);
            a(atomicReferenceArray, atomicReferenceArray2);
            a(atomicReferenceArray, a3, j);
            a(f2 + 2);
        }
        return true;
    }
}
