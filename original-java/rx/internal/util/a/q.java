package rx.internal.util.a;

/* compiled from: SpmcArrayQueue */
abstract class q<E> extends o<E> {
    private volatile long f;

    public q(int i) {
        super(i);
    }

    /* access modifiers changed from: protected */
    public final long c() {
        return this.f;
    }

    /* access modifiers changed from: protected */
    public final void e(long j) {
        this.f = j;
    }
}
