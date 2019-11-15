package rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.d;
import rx.internal.util.RxThreadFactory;
import rx.internal.util.f;

/* compiled from: EventLoopsScheduler */
public class a extends d {
    static final int a;
    static final c b = new c(new RxThreadFactory("RxComputationShutdown-"));
    static final b c = new b(0);
    /* access modifiers changed from: private */
    public static final RxThreadFactory e = new RxThreadFactory("RxComputationThreadPool-");
    final AtomicReference<b> d = new AtomicReference<>(c);

    /* renamed from: rx.internal.schedulers.a$a reason: collision with other inner class name */
    /* compiled from: EventLoopsScheduler */
    private static class C0101a extends rx.d.a {
        private final f a = new f();
        private final rx.f.b b = new rx.f.b();
        private final f c = new f(this.a, this.b);
        private final c d;

        C0101a(c cVar) {
            this.d = cVar;
        }

        public void unsubscribe() {
            this.c.unsubscribe();
        }

        public boolean isUnsubscribed() {
            return this.c.isUnsubscribed();
        }

        public rx.f a(rx.b.a aVar) {
            if (isUnsubscribed()) {
                return rx.f.d.b();
            }
            return this.d.a(aVar, 0, (TimeUnit) null, this.a);
        }

        public rx.f a(rx.b.a aVar, long j, TimeUnit timeUnit) {
            if (isUnsubscribed()) {
                return rx.f.d.b();
            }
            return this.d.a(aVar, j, timeUnit, this.b);
        }
    }

    /* compiled from: EventLoopsScheduler */
    static final class b {
        final int a;
        final c[] b;
        long c;

        b(int i) {
            this.a = i;
            this.b = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.b[i2] = new c(a.e);
            }
        }

        public c a() {
            int i = this.a;
            if (i == 0) {
                return a.b;
            }
            c[] cVarArr = this.b;
            long j = this.c;
            this.c = 1 + j;
            return cVarArr[(int) (j % ((long) i))];
        }

        public void b() {
            for (c unsubscribe : this.b) {
                unsubscribe.unsubscribe();
            }
        }
    }

    /* compiled from: EventLoopsScheduler */
    private static final class c extends c {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        int intValue = Integer.getInteger("rx.scheduler.max-computation-threads", 0).intValue();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        if (intValue <= 0 || intValue > availableProcessors) {
            intValue = availableProcessors;
        }
        a = intValue;
        b.unsubscribe();
    }

    public a() {
        c();
    }

    public rx.d.a a() {
        return new C0101a(((b) this.d.get()).a());
    }

    public void c() {
        b bVar = new b(a);
        if (!this.d.compareAndSet(c, bVar)) {
            bVar.b();
        }
    }

    public rx.f a(rx.b.a aVar) {
        return ((b) this.d.get()).a().b(aVar, -1, TimeUnit.NANOSECONDS);
    }
}
