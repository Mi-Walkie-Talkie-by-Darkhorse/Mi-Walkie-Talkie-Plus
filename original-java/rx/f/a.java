package rx.f;

import java.util.concurrent.atomic.AtomicReference;
import rx.f;

/* compiled from: BooleanSubscription */
public final class a implements f {
    static final rx.b.a b = new rx.b.a() {
        public void a() {
        }
    };
    final AtomicReference<rx.b.a> a;

    public a() {
        this.a = new AtomicReference<>();
    }

    private a(rx.b.a aVar) {
        this.a = new AtomicReference<>(aVar);
    }

    public static a a() {
        return new a();
    }

    public static a a(rx.b.a aVar) {
        return new a(aVar);
    }

    public boolean isUnsubscribed() {
        return this.a.get() == b;
    }

    public final void unsubscribe() {
        if (((rx.b.a) this.a.get()) != b) {
            rx.b.a aVar = (rx.b.a) this.a.getAndSet(b);
            if (aVar != null && aVar != b) {
                aVar.a();
            }
        }
    }
}
