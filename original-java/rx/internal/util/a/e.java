package rx.internal.util.a;

/* compiled from: MpmcArrayQueue */
abstract class e<E> extends g<E> {
    private static final long e = y.a(e.class, "consumerIndex");
    private volatile long f;

    public e(int i) {
        super(i);
    }

    /* access modifiers changed from: protected */
    public final long a() {
        return this.f;
    }

    /* access modifiers changed from: protected */
    public final boolean b(long j, long j2) {
        return y.a.compareAndSwapLong(this, e, j, j2);
    }
}
