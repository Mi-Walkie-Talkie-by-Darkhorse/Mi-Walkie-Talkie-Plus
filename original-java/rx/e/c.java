package rx.e;

import java.util.concurrent.TimeUnit;
import rx.d;
import rx.f;

/* compiled from: ImmediateScheduler */
public final class c extends d {
    private static final c a = new c();

    /* compiled from: ImmediateScheduler */
    private class a extends rx.d.a implements f {
        final rx.f.a a;

        private a() {
            this.a = new rx.f.a();
        }

        public f a(rx.b.a aVar, long j, TimeUnit timeUnit) {
            return a(new f(aVar, this, c.this.b() + timeUnit.toMillis(j)));
        }

        public f a(rx.b.a aVar) {
            aVar.a();
            return rx.f.d.b();
        }

        public void unsubscribe() {
            this.a.unsubscribe();
        }

        public boolean isUnsubscribed() {
            return this.a.isUnsubscribed();
        }
    }

    c() {
    }

    public rx.d.a a() {
        return new a();
    }
}
