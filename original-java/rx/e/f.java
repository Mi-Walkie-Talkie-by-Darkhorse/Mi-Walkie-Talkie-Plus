package rx.e;

import rx.b.a;
import rx.d;

/* compiled from: SleepingAction */
class f implements a {
    private final a a;
    private final d.a b;
    private final long c;

    public f(a aVar, d.a aVar2, long j) {
        this.a = aVar;
        this.b = aVar2;
        this.c = j;
    }

    public void a() {
        if (!this.b.isUnsubscribed()) {
            if (this.c > this.b.a()) {
                long a2 = this.c - this.b.a();
                if (a2 > 0) {
                    try {
                        Thread.sleep(a2);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        throw new RuntimeException(e);
                    }
                }
            }
            if (!this.b.isUnsubscribed()) {
                this.a.a();
            }
        }
    }
}
