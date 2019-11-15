package rx.a.a;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: RxAndroidPlugins */
public final class a {
    private static final a a = new a();
    private final AtomicReference<b> b = new AtomicReference<>();

    public static a a() {
        return a;
    }

    a() {
    }

    public b b() {
        if (this.b.get() == null) {
            this.b.compareAndSet(null, b.a());
        }
        return (b) this.b.get();
    }
}
