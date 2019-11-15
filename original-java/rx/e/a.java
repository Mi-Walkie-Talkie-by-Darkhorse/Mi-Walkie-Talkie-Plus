package rx.e;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReference;
import rx.d;
import rx.f;
import rx.internal.schedulers.ScheduledAction;
import rx.internal.util.RxThreadFactory;

/* compiled from: CachedThreadScheduler */
final class a extends d {
    static final c a = new c(new RxThreadFactory("RxCachedThreadSchedulerShutdown-"));
    static final C0100a c = new C0100a(0, null);
    /* access modifiers changed from: private */
    public static final RxThreadFactory d = new RxThreadFactory("RxCachedThreadScheduler-");
    /* access modifiers changed from: private */
    public static final RxThreadFactory e = new RxThreadFactory("RxCachedWorkerPoolEvictor-");
    private static final TimeUnit f = TimeUnit.SECONDS;
    final AtomicReference<C0100a> b = new AtomicReference<>(c);

    /* renamed from: rx.e.a$a reason: collision with other inner class name */
    /* compiled from: CachedThreadScheduler */
    private static final class C0100a {
        private final long a;
        private final ConcurrentLinkedQueue<c> b;
        private final rx.f.b c;
        private final ScheduledExecutorService d;
        private final Future<?> e;

        C0100a(long j, TimeUnit timeUnit) {
            Future<?> future;
            ScheduledExecutorService scheduledExecutorService = null;
            this.a = timeUnit != null ? timeUnit.toNanos(j) : 0;
            this.b = new ConcurrentLinkedQueue<>();
            this.c = new rx.f.b();
            if (timeUnit != null) {
                ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, a.e);
                rx.internal.schedulers.c.b(newScheduledThreadPool);
                scheduledExecutorService = newScheduledThreadPool;
                future = newScheduledThreadPool.scheduleWithFixedDelay(new Runnable() {
                    public void run() {
                        C0100a.this.b();
                    }
                }, this.a, this.a, TimeUnit.NANOSECONDS);
            } else {
                future = null;
            }
            this.d = scheduledExecutorService;
            this.e = future;
        }

        /* access modifiers changed from: 0000 */
        public c a() {
            if (this.c.isUnsubscribed()) {
                return a.a;
            }
            while (!this.b.isEmpty()) {
                c cVar = (c) this.b.poll();
                if (cVar != null) {
                    return cVar;
                }
            }
            c cVar2 = new c(a.d);
            this.c.a((f) cVar2);
            return cVar2;
        }

        /* access modifiers changed from: 0000 */
        public void a(c cVar) {
            cVar.a(c() + this.a);
            this.b.offer(cVar);
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            if (!this.b.isEmpty()) {
                long c2 = c();
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    c cVar = (c) it.next();
                    if (cVar.c() > c2) {
                        return;
                    }
                    if (this.b.remove(cVar)) {
                        this.c.b(cVar);
                    }
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public long c() {
            return System.nanoTime();
        }

        /* access modifiers changed from: 0000 */
        public void d() {
            try {
                if (this.e != null) {
                    this.e.cancel(true);
                }
                if (this.d != null) {
                    this.d.shutdownNow();
                }
            } finally {
                this.c.unsubscribe();
            }
        }
    }

    /* compiled from: CachedThreadScheduler */
    private static final class b extends rx.d.a {
        static final AtomicIntegerFieldUpdater<b> b = AtomicIntegerFieldUpdater.newUpdater(b.class, "a");
        volatile int a;
        private final rx.f.b c = new rx.f.b();
        private final C0100a d;
        private final c e;

        b(C0100a aVar) {
            this.d = aVar;
            this.e = aVar.a();
        }

        public void unsubscribe() {
            if (b.compareAndSet(this, 0, 1)) {
                this.d.a(this.e);
            }
            this.c.unsubscribe();
        }

        public boolean isUnsubscribed() {
            return this.c.isUnsubscribed();
        }

        public f a(rx.b.a aVar) {
            return a(aVar, 0, null);
        }

        public f a(rx.b.a aVar, long j, TimeUnit timeUnit) {
            if (this.c.isUnsubscribed()) {
                return rx.f.d.b();
            }
            ScheduledAction b2 = this.e.b(aVar, j, timeUnit);
            this.c.a((f) b2);
            b2.a(this.c);
            return b2;
        }
    }

    /* compiled from: CachedThreadScheduler */
    private static final class c extends rx.internal.schedulers.c {
        private long c = 0;

        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }

        public long c() {
            return this.c;
        }

        public void a(long j) {
            this.c = j;
        }
    }

    static {
        a.unsubscribe();
        c.d();
    }

    public a() {
        c();
    }

    public void c() {
        C0100a aVar = new C0100a(60, f);
        if (!this.b.compareAndSet(c, aVar)) {
            aVar.d();
        }
    }

    public rx.d.a a() {
        return new b((C0100a) this.b.get());
    }
}
