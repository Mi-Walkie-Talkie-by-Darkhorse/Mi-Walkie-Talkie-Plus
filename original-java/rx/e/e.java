package rx.e;

import java.util.concurrent.Executor;
import rx.d;
import rx.internal.schedulers.a;

/* compiled from: Schedulers */
public final class e {
    private static final e d = new e();
    private final d a;
    private final d b;
    private final d c;

    private e() {
        d a2 = rx.d.d.a().d().a();
        if (a2 != null) {
            this.a = a2;
        } else {
            this.a = new a();
        }
        d b2 = rx.d.d.a().d().b();
        if (b2 != null) {
            this.b = b2;
        } else {
            this.b = new a();
        }
        d c2 = rx.d.d.a().d().c();
        if (c2 != null) {
            this.c = c2;
        } else {
            this.c = d.c();
        }
    }

    public static d a() {
        return d.a;
    }

    public static d b() {
        return d.b;
    }

    public static d a(Executor executor) {
        return new b(executor);
    }
}
