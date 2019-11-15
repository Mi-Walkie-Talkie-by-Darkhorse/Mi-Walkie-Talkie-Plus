package pl.droidsonroids.gif;

/* compiled from: ConditionVariable */
class b {
    private volatile boolean a;

    b() {
    }

    /* access modifiers changed from: 0000 */
    public synchronized void a(boolean z) {
        if (z) {
            a();
        } else {
            b();
        }
    }

    /* access modifiers changed from: 0000 */
    public synchronized void a() {
        boolean z = this.a;
        this.a = true;
        if (!z) {
            notify();
        }
    }

    /* access modifiers changed from: 0000 */
    public synchronized void b() {
        this.a = false;
    }

    /* access modifiers changed from: 0000 */
    public synchronized void c() throws InterruptedException {
        while (!this.a) {
            wait();
        }
    }
}
