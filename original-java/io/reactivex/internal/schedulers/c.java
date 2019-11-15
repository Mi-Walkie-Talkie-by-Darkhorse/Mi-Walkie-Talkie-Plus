package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.r;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: IoScheduler */
public final class c extends r {
    static final RxThreadFactory b;
    static final RxThreadFactory c;
    static final C0091c d = new C0091c(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
    static final a g = new a(0, null, b);
    private static final TimeUnit h = TimeUnit.SECONDS;
    final ThreadFactory e;
    final AtomicReference<a> f;

    /* compiled from: IoScheduler */
    static final class a implements Runnable {
        final io.reactivex.disposables.a a;
        private final long b;
        private final ConcurrentLinkedQueue<C0091c> c;
        private final ScheduledExecutorService d;
        private final Future<?> e;
        private final ThreadFactory f;

        a(long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
            Future<?> future;
            ScheduledExecutorService scheduledExecutorService = null;
            this.b = timeUnit != null ? timeUnit.toNanos(j) : 0;
            this.c = new ConcurrentLinkedQueue<>();
            this.a = new io.reactivex.disposables.a();
            this.f = threadFactory;
            if (timeUnit != null) {
                ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, c.c);
                scheduledExecutorService = newScheduledThreadPool;
                future = newScheduledThreadPool.scheduleWithFixedDelay(this, this.b, this.b, TimeUnit.NANOSECONDS);
            } else {
                future = null;
            }
            this.d = scheduledExecutorService;
            this.e = future;
        }

        public void run() {
            b();
        }

        /* access modifiers changed from: 0000 */
        public C0091c a() {
            if (this.a.isDisposed()) {
                return c.d;
            }
            while (!this.c.isEmpty()) {
                C0091c cVar = (C0091c) this.c.poll();
                if (cVar != null) {
                    return cVar;
                }
            }
            C0091c cVar2 = new C0091c(this.f);
            this.a.a((io.reactivex.disposables.b) cVar2);
            return cVar2;
        }

        /* access modifiers changed from: 0000 */
        public void a(C0091c cVar) {
            cVar.a(c() + this.b);
            this.c.offer(cVar);
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            if (!this.c.isEmpty()) {
                long c2 = c();
                Iterator it = this.c.iterator();
                while (it.hasNext()) {
                    C0091c cVar = (C0091c) it.next();
                    if (cVar.a() > c2) {
                        return;
                    }
                    if (this.c.remove(cVar)) {
                        this.a.b(cVar);
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
            this.a.dispose();
            if (this.e != null) {
                this.e.cancel(true);
            }
            if (this.d != null) {
                this.d.shutdownNow();
            }
        }
    }

    /* compiled from: IoScheduler */
    static final class b extends io.reactivex.r.c {
        final AtomicBoolean a = new AtomicBoolean();
        private final io.reactivex.disposables.a b;
        private final a c;
        private final C0091c d;

        b(a aVar) {
            this.c = aVar;
            this.b = new io.reactivex.disposables.a();
            this.d = aVar.a();
        }

        public void dispose() {
            if (this.a.compareAndSet(false, true)) {
                this.b.dispose();
                this.c.a(this.d);
            }
        }

        public boolean isDisposed() {
            return this.a.get();
        }

        @NonNull
        public io.reactivex.disposables.b a(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            if (this.b.isDisposed()) {
                return EmptyDisposable.INSTANCE;
            }
            return this.d.a(runnable, j, timeUnit, this.b);
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.c$c reason: collision with other inner class name */
    /* compiled from: IoScheduler */
    static final class C0091c extends e {
        private long b = 0;

        C0091c(ThreadFactory threadFactory) {
            super(threadFactory);
        }

        public long a() {
            return this.b;
        }

        public void a(long j) {
            this.b = j;
        }
    }

    static {
        d.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        b = new RxThreadFactory("RxCachedThreadScheduler", max);
        c = new RxThreadFactory("RxCachedWorkerPoolEvictor", max);
        g.d();
    }

    public c() {
        this(b);
    }

    public c(ThreadFactory threadFactory) {
        this.e = threadFactory;
        this.f = new AtomicReference<>(g);
        b();
    }

    public void b() {
        a aVar = new a(60, h, this.e);
        if (!this.f.compareAndSet(g, aVar)) {
            aVar.d();
        }
    }

    @NonNull
    public io.reactivex.r.c a() {
        return new b((a) this.f.get());
    }
}
