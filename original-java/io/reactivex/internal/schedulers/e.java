package io.reactivex.internal.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.d.a;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.r.c;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: NewThreadWorker */
public class e extends c implements b {
    volatile boolean a;
    private final ScheduledExecutorService b;

    public e(ThreadFactory threadFactory) {
        this.b = g.a(threadFactory);
    }

    @NonNull
    public b a(@NonNull Runnable runnable) {
        return a(runnable, 0, null);
    }

    @NonNull
    public b a(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
        if (this.a) {
            return EmptyDisposable.INSTANCE;
        }
        return a(runnable, j, timeUnit, null);
    }

    public b b(Runnable runnable, long j, TimeUnit timeUnit) {
        Future schedule;
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(a.a(runnable));
        if (j <= 0) {
            try {
                schedule = this.b.submit(scheduledDirectTask);
            } catch (RejectedExecutionException e) {
                a.a((Throwable) e);
                return EmptyDisposable.INSTANCE;
            }
        } else {
            schedule = this.b.schedule(scheduledDirectTask, j, timeUnit);
        }
        scheduledDirectTask.a(schedule);
        return scheduledDirectTask;
    }

    public b b(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Future schedule;
        Runnable a2 = a.a(runnable);
        if (j2 <= 0) {
            b bVar = new b(a2, this.b);
            if (j <= 0) {
                try {
                    schedule = this.b.submit(bVar);
                } catch (RejectedExecutionException e) {
                    a.a((Throwable) e);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                schedule = this.b.schedule(bVar, j, timeUnit);
            }
            bVar.a(schedule);
            return bVar;
        }
        ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(a2);
        try {
            scheduledDirectPeriodicTask.a(this.b.scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e2) {
            a.a((Throwable) e2);
            return EmptyDisposable.INSTANCE;
        }
    }

    @NonNull
    public ScheduledRunnable a(Runnable runnable, long j, @NonNull TimeUnit timeUnit, @Nullable io.reactivex.internal.disposables.a aVar) {
        Future schedule;
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(a.a(runnable), aVar);
        if (aVar == null || aVar.a(scheduledRunnable)) {
            if (j <= 0) {
                try {
                    schedule = this.b.submit(scheduledRunnable);
                } catch (RejectedExecutionException e) {
                    if (aVar != null) {
                        aVar.b(scheduledRunnable);
                    }
                    a.a((Throwable) e);
                }
            } else {
                schedule = this.b.schedule(scheduledRunnable, j, timeUnit);
            }
            scheduledRunnable.a(schedule);
        }
        return scheduledRunnable;
    }

    public void dispose() {
        if (!this.a) {
            this.a = true;
            this.b.shutdownNow();
        }
    }

    public void b() {
        if (!this.a) {
            this.a = true;
            this.b.shutdown();
        }
    }

    public boolean isDisposed() {
        return this.a;
    }
}
