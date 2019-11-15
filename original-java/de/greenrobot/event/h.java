package de.greenrobot.event;

/* compiled from: PendingPostQueue */
final class h {
    private g a;
    private g b;

    h() {
    }

    /* access modifiers changed from: 0000 */
    public synchronized void a(g gVar) {
        if (gVar == null) {
            throw new NullPointerException("null cannot be enqueued");
        }
        if (this.b != null) {
            this.b.c = gVar;
            this.b = gVar;
        } else if (this.a == null) {
            this.b = gVar;
            this.a = gVar;
        } else {
            throw new IllegalStateException("Head present, but no tail");
        }
        notifyAll();
    }

    /* access modifiers changed from: 0000 */
    public synchronized g a() {
        g gVar;
        gVar = this.a;
        if (this.a != null) {
            this.a = this.a.c;
            if (this.a == null) {
                this.b = null;
            }
        }
        return gVar;
    }

    /* access modifiers changed from: 0000 */
    public synchronized g a(int i) throws InterruptedException {
        if (this.a == null) {
            wait((long) i);
        }
        return a();
    }
}
