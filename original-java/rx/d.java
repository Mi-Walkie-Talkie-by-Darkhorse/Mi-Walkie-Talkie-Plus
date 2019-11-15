package rx;

import java.util.concurrent.TimeUnit;
import rx.f.c;

/* compiled from: Scheduler */
public abstract class d {

    /* compiled from: Scheduler */
    public static abstract class a implements f {
        public abstract f a(rx.b.a aVar);

        public abstract f a(rx.b.a aVar, long j, TimeUnit timeUnit);

        public f a(rx.b.a aVar, long j, long j2, TimeUnit timeUnit) {
            final long nanos = timeUnit.toNanos(j2);
            final long nanos2 = TimeUnit.MILLISECONDS.toNanos(a()) + timeUnit.toNanos(j);
            final c cVar = new c();
            final rx.b.a aVar2 = aVar;
            AnonymousClass1 r0 = new rx.b.a() {
                long a = 0;

                public void a() {
                    if (!cVar.isUnsubscribed()) {
                        aVar2.a();
                        long j = nanos2;
                        long j2 = this.a + 1;
                        this.a = j2;
                        cVar.a(a.this.a(this, (j + (j2 * nanos)) - TimeUnit.MILLISECONDS.toNanos(a.this.a()), TimeUnit.NANOSECONDS));
                    }
                }
            };
            c cVar2 = new c();
            cVar.a(cVar2);
            cVar2.a(a(r0, j, timeUnit));
            return cVar;
        }

        public long a() {
            return System.currentTimeMillis();
        }
    }

    public abstract a a();

    public long b() {
        return System.currentTimeMillis();
    }
}
