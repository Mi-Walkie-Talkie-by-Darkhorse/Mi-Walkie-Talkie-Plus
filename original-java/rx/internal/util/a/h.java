package rx.internal.util.a;

/* compiled from: MpmcArrayQueue */
abstract class h<E> extends f<E> {
    private static final long e = y.a(h.class, "producerIndex");
    private volatile long f;

    public h(int i) {
        super(i);
    }

    /* access modifiers changed from: protected */
    public final long b() {
        return this.f;
    }

    /* access modifiers changed from: protected */
    public final boolean c(long j, long j2) {
        return y.a.compareAndSwapLong(this, e, j, j2);
    }
}
