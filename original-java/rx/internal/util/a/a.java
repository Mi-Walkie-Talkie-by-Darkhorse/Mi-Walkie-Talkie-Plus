package rx.internal.util.a;

import java.util.Iterator;

/* compiled from: ConcurrentCircularArrayQueue */
public abstract class a<E> extends b<E> {
    protected static final int a = Integer.getInteger("sparse.shift", 0).intValue();
    private static final long d = ((long) (y.a.arrayBaseOffset(Object[].class) + (32 << (e - a))));
    private static final int e;
    protected final long b;
    protected final E[] c;

    static {
        int arrayIndexScale = y.a.arrayIndexScale(Object[].class);
        if (4 == arrayIndexScale) {
            e = a + 2;
        } else if (8 == arrayIndexScale) {
            e = a + 3;
        } else {
            throw new IllegalStateException("Unknown pointer size");
        }
    }

    public a(int i) {
        int a2 = i.a(i);
        this.b = (long) (a2 - 1);
        this.c = (Object[]) new Object[((a2 << a) + 64)];
    }

    /* access modifiers changed from: protected */
    public final long a(long j) {
        return a(j, this.b);
    }

    /* access modifiers changed from: protected */
    public final long a(long j, long j2) {
        return d + ((j & j2) << e);
    }

    /* access modifiers changed from: protected */
    public final void a(long j, E e2) {
        a(this.c, j, e2);
    }

    /* access modifiers changed from: protected */
    public final void a(E[] eArr, long j, E e2) {
        y.a.putObject(eArr, j, e2);
    }

    /* access modifiers changed from: protected */
    public final void b(E[] eArr, long j, E e2) {
        y.a.putOrderedObject(eArr, j, e2);
    }

    /* access modifiers changed from: protected */
    public final E b(long j) {
        return a(this.c, j);
    }

    /* access modifiers changed from: protected */
    public final E a(E[] eArr, long j) {
        return y.a.getObject(eArr, j);
    }

    /* access modifiers changed from: protected */
    public final E c(long j) {
        return b(this.c, j);
    }

    /* access modifiers changed from: protected */
    public final E b(E[] eArr, long j) {
        return y.a.getObjectVolatile(eArr, j);
    }

    public Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }
}
