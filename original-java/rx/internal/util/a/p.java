package rx.internal.util.a;

/* compiled from: SpmcArrayQueue */
abstract class p<E> extends l<E> {
    protected static final long e = y.a(p.class, "producerIndex");
    private volatile long d;

    /* access modifiers changed from: protected */
    public final long b() {
        return this.d;
    }

    /* access modifiers changed from: protected */
    public final void d(long j) {
        y.a.putOrderedLong(this, e, j);
    }

    public p(int i) {
        super(i);
    }
}
