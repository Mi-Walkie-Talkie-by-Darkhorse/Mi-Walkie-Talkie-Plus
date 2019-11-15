package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.r;
import io.reactivex.r.c;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleScheduler */
public final class h extends r {
    static final RxThreadFactory d = new RxThreadFactory("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    static final ScheduledExecutorService e = Executors.newScheduledThreadPool(0);
    final ThreadFactory b;
    final AtomicReference<ScheduledExecutorService> c;

    /* compiled from: SingleScheduler */
    static final class a extends c {
        final ScheduledExecutorService a;
        final io.reactivex.disposables.a b = new io.reactivex.disposables.a();
        volatile boolean c;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.a = scheduledExecutorService;
        }

        @NonNull
        public b a(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            Future schedule;
            if (this.c) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(io.reactivex.d.a.a(runnable), this.b);
            this.b.a((b) scheduledRunnable);
            if (j <= 0) {
                try {
                    schedule = this.a.submit(scheduledRunnable);
                } catch (RejectedExecutionException e) {
                    dispose();
                    io.reactivex.d.a.a((Throwable) e);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                schedule = this.a.schedule(scheduledRunnable, j, timeUnit);
            }
            scheduledRunnable.a(schedule);
            return scheduledRunnable;
        }

        public void dispose() {
            if (!this.c) {
                this.c = true;
                this.b.dispose();
            }
        }

        public boolean isDisposed() {
            return this.c;
        }
    }

    static {
        e.shutdown();
    }

    public h() {
        this(d);
    }

    public h(ThreadFactory threadFactory) {
        this.c = new AtomicReference<>();
        this.b = threadFactory;
        this.c.lazySet(a(threadFactory));
    }

    static ScheduledExecutorService a(ThreadFactory threadFactory) {
        return g.a(threadFactory);
    }

    public void b() {
        ScheduledExecutorService scheduledExecutorService;
        ScheduledExecutorService scheduledExecutorService2 = null;
        do {
            scheduledExecutorService = (ScheduledExecutorService) this.c.get();
            if (scheduledExecutorService != e) {
                if (scheduledExecutorService2 != null) {
                    scheduledExecutorService2.shutdown();
                    return;
                }
                return;
            } else if (scheduledExecutorService2 == null) {
                scheduledExecutorService2 = a(this.b);
            }
        } while (!this.c.compareAndSet(scheduledExecutorService, scheduledExecutorService2));
    }

    @NonNull
    public c a() {
        return new a((ScheduledExecutorService) this.c.get());
    }

    @NonNull
    public b a(@NonNull Runnable runnable, long j, TimeUnit timeUnit) {
        Future schedule;
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(io.reactivex.d.a.a(runnable));
        if (j <= 0) {
            try {
                schedule = ((ScheduledExecutorService) this.c.get()).submit(scheduledDirectTask);
            } catch (RejectedExecutionException e2) {
                io.reactivex.d.a.a((Throwable) e2);
                return EmptyDisposable.INSTANCE;
            }
        } else {
            schedule = ((ScheduledExecutorService) this.c.get()).schedule(scheduledDirectTask, j, timeUnit);
        }
        scheduledDirectTask.a(schedule);
        return scheduledDirectTask;
    }

    @NonNull
    public b a(@NonNull Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Future schedule;
        Runnable a2 = io.reactivex.d.a.a(runnable);
        if (j2 <= 0) {
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.c.get();
            b bVar = new b(a2, scheduledExecutorService);
            if (j <= 0) {
                try {
                    schedule = scheduledExecutorService.submit(bVar);
                } catch (RejectedExecutionException e2) {
                    io.reactivex.d.a.a((Throwable) e2);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                schedule = scheduledExecutorService.schedule(bVar, j, timeUnit);
            }
            bVar.a(schedule);
            return bVar;
        }
        ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(a2);
        try {
            scheduledDirectPeriodicTask.a(((ScheduledExecutorService) this.c.get()).scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e3) {
            io.reactivex.d.a.a((Throwable) e3);
            return EmptyDisposable.INSTANCE;
        }
    }
}
