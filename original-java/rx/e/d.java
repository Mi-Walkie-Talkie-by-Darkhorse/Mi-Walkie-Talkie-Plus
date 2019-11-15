package rx.e;

import rx.d.a;
import rx.internal.schedulers.c;
import rx.internal.util.RxThreadFactory;

/* compiled from: NewThreadScheduler */
public final class d extends rx.d {
    private static final RxThreadFactory a = new RxThreadFactory("RxNewThreadScheduler-");
    private static final d b = new d();

    static d c() {
        return b;
    }

    private d() {
    }

    public a a() {
        return new c(a);
    }
}
