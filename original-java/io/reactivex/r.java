package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.schedulers.e;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: Scheduler */
public abstract class r {
    static final long a = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    /* compiled from: Scheduler */
    static final class a implements io.reactivex.disposables.b, Runnable {
        final Runnable a;
        final c b;
        Thread c;

        a(Runnable runnable, c cVar) {
            this.a = runnable;
            this.b = cVar;
        }

        public void run() {
            this.c = Thread.currentThread();
            try {
                this.a.run();
            } finally {
                dispose();
                this.c = null;
            }
        }

        public void dispose() {
            if (this.c != Thread.currentThread() || !(this.b instanceof e)) {
                this.b.dispose();
            } else {
                ((e) this.b).b();
            }
        }

        public boolean isDisposed() {
            return this.b.isDisposed();
        }
    }

    /* compiled from: Scheduler */
    static class b implements io.reactivex.disposables.b, Runnable {
        final Runnable a;
        @NonNull
        final c b;
        @NonNull
        volatile boolean c;

        b(@NonNull Runnable runnable, @NonNull c cVar) {
            this.a = runnable;
            this.b = cVar;
        }

        public void run() {
            if (!this.c) {
                try {
                    this.a.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.b.dispose();
                    throw ExceptionHelper.a(th);
                }
            }
        }

        public void dispose() {
            this.c = true;
            this.b.dispose();
        }

        public boolean isDisposed() {
            return this.c;
        }
    }

    /* compiled from: Scheduler */
    public static abstract class c implements io.reactivex.disposables.b {

        /* compiled from: Scheduler */
        final class a implements Runnable {
            @NonNull
            final Runnable a;
            @NonNull
            final SequentialDisposable b;
            final long c;
            long d;
            long e;
            long f;

            a(long j, Runnable runnable, @NonNull long j2, SequentialDisposable sequentialDisposable, @NonNull long j3) {
                this.a = runnable;
                this.b = sequentialDisposable;
                this.c = j3;
                this.e = j2;
                this.f = j;
            }

            public void run() {
                long j;
                this.a.run();
                if (!this.b.isDisposed()) {
                    long a2 = c.this.a(TimeUnit.NANOSECONDS);
                    if (r.a + a2 < this.e || a2 >= this.e + this.c + r.a) {
                        j = this.c + a2;
                        long j2 = this.c;
                        long j3 = this.d + 1;
                        this.d = j3;
                        this.f = j - (j2 * j3);
                    } else {
                        long j4 = this.f;
                        long j5 = this.d + 1;
                        this.d = j5;
                        j = j4 + (j5 * this.c);
                    }
                    this.e = a2;
                    this.b.b(c.this.a(this, j - a2, TimeUnit.NANOSECONDS));
                }
            }
        }

        @NonNull
        public abstract io.reactivex.disposables.b a(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit);

        @NonNull
        public io.reactivex.disposables.b a(@NonNull Runnable runnable) {
            return a(runnable, 0, TimeUnit.NANOSECONDS);
        }

        @NonNull
        public io.reactivex.disposables.b a(@NonNull Runnable runnable, long j, long j2, @NonNull TimeUnit timeUnit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable a2 = io.reactivex.d.a.a(runnable);
            long nanos = timeUnit.toNanos(j2);
            long a3 = a(TimeUnit.NANOSECONDS);
            io.reactivex.disposables.b a4 = a(new a(a3 + timeUnit.toNanos(j), a2, a3, sequentialDisposable2, nanos), j, timeUnit);
            if (a4 == EmptyDisposable.INSTANCE) {
                return a4;
            }
            sequentialDisposable.b(a4);
            return sequentialDisposable2;
        }

        public long a(@NonNull TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }
    }

    @NonNull
    public abstract c a();

    public long a(@NonNull TimeUnit timeUnit) {
        return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    public void b() {
    }

    @NonNull
    public io.reactivex.disposables.b a(@NonNull Runnable runnable) {
        return a(runnable, 0, TimeUnit.NANOSECONDS);
    }

    @NonNull
    public io.reactivex.disposables.b a(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
        c a2 = a();
        a aVar = new a(io.reactivex.d.a.a(runnable), a2);
        a2.a(aVar, j, timeUnit);
        return aVar;
    }

    @NonNull
    public io.reactivex.disposables.b a(@NonNull Runnable runnable, long j, long j2, @NonNull TimeUnit timeUnit) {
        c a2 = a();
        b bVar = new b(io.reactivex.d.a.a(runnable), a2);
        io.reactivex.disposables.b a3 = a2.a(bVar, j, j2, timeUnit);
        if (a3 == EmptyDisposable.INSTANCE) {
            return a3;
        }
        return bVar;
    }
}
