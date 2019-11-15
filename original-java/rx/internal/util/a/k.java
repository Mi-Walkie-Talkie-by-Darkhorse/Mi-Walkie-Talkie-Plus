package rx.internal.util.a;

/* compiled from: SpmcArrayQueue */
abstract class k<E> extends m<E> {
    protected static final long d = y.a(k.class, "consumerIndex");
    private volatile long f;

    public k(int i) {
        super(i);
    }

    /* access modifiers changed from: protected */
    public final long a() {
        return this.f;
    }

    /* access modifiers changed from: protected */
    public final boolean b(long j, long j2) {
        return y.a.compareAndSwapLong(this, d, j, j2);
    }
}
