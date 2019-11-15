package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.e;
import io.reactivex.r;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ComputationScheduler */
public final class a extends r {
    static final b b = new b(0, c);
    static final RxThreadFactory c = new RxThreadFactory("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
    static final int d = a(Runtime.getRuntime().availableProcessors(), Integer.getInteger("rx2.computation-threads", 0).intValue());
    static final c e = new c(new RxThreadFactory("RxComputationShutdown"));
    final ThreadFactory f;
    final AtomicReference<b> g;

    /* renamed from: io.reactivex.internal.schedulers.a$a reason: collision with other inner class name */
    /* compiled from: ComputationScheduler */
    static final class C0090a extends io.reactivex.r.c {
        volatile boolean a;
        private final e b = new e();
        private final io.reactivex.disposables.a c = new io.reactivex.disposables.a();
        private final e d = new e();
        private final c e;

        C0090a(c cVar) {
            this.e = cVar;
            this.d.a((io.reactivex.disposables.b) this.b);
            this.d.a((io.reactivex.disposables.b) this.c);
        }

        public void dispose() {
            if (!this.a) {
                this.a = true;
                this.d.dispose();
            }
        }

        public boolean isDisposed() {
            return this.a;
        }

        @NonNull
        public io.reactivex.disposables.b a(@NonNull Runnable runnable) {
            if (this.a) {
                return EmptyDisposable.INSTANCE;
            }
            return this.e.a(runnable, 0, TimeUnit.MILLISECONDS, this.b);
        }

        @NonNull
        public io.reactivex.disposables.b a(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            if (this.a) {
                return EmptyDisposable.INSTANCE;
            }
            return this.e.a(runnable, j, timeUnit, this.c);
        }
    }

    /* compiled from: ComputationScheduler */
    static final class b {
        final int a;
        final c[] b;
        long c;

        b(int i, ThreadFactory threadFactory) {
            this.a = i;
            this.b = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.b[i2] = new c(threadFactory);
            }
        }

        public c a() {
            int i = this.a;
            if (i == 0) {
                return a.e;
            }
            c[] cVarArr = this.b;
            long j = this.c;
            this.c = 1 + j;
            return cVarArr[(int) (j % ((long) i))];
        }

        public void b() {
            for (c dispose : this.b) {
                dispose.dispose();
            }
        }
    }

    /* compiled from: ComputationScheduler */
    static final class c extends e {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        e.dispose();
        b.b();
    }

    static int a(int i, int i2) {
        return (i2 <= 0 || i2 > i) ? i : i2;
    }

    public a() {
        this(c);
    }

    public a(ThreadFactory threadFactory) {
        this.f = threadFactory;
        this.g = new AtomicReference<>(b);
        b();
    }

    @NonNull
    public io.reactivex.r.c a() {
        return new C0090a(((b) this.g.get()).a());
    }

    @NonNull
    public io.reactivex.disposables.b a(@NonNull Runnable runnable, long j, TimeUnit timeUnit) {
        return ((b) this.g.get()).a().b(runnable, j, timeUnit);
    }

    @NonNull
    public io.reactivex.disposables.b a(@NonNull Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return ((b) this.g.get()).a().b(runnable, j, j2, timeUnit);
    }

    public void b() {
        b bVar = new b(d, this.f);
        if (!this.g.compareAndSet(b, bVar)) {
            bVar.b();
        }
    }
}
