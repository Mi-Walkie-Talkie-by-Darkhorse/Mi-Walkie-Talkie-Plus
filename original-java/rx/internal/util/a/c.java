package rx.internal.util.a;

/* compiled from: ConcurrentSequencedCircularArrayQueue */
public abstract class c<E> extends a<E> {
    private static final long e = ((long) (y.a.arrayBaseOffset(long[].class) + (32 << (f - a))));
    private static final int f = (a + 3);
    protected final long[] d;

    static {
        if (8 == y.a.arrayIndexScale(long[].class)) {
            return;
        }
        throw new IllegalStateException("Unexpected long[] element size");
    }

    public c(int i) {
        super(i);
        int i2 = (int) (this.b + 1);
        this.d = new long[((i2 << a) + 64)];
        for (long j = 0; j < ((long) i2); j++) {
            a(this.d, d(j), j);
        }
    }

    /* access modifiers changed from: protected */
    public final long d(long j) {
        return e + ((this.b & j) << f);
    }

    /* access modifiers changed from: protected */
    public final void a(long[] jArr, long j, long j2) {
        y.a.putOrderedLong(jArr, j, j2);
    }

    /* access modifiers changed from: protected */
    public final long a(long[] jArr, long j) {
        return y.a.getLongVolatile(jArr, j);
    }
}
