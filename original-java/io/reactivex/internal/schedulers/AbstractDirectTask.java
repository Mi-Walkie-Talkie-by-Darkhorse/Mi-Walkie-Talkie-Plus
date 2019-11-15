package io.reactivex.internal.schedulers;

import io.reactivex.disposables.b;
import io.reactivex.internal.functions.Functions;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

abstract class AbstractDirectTask extends AtomicReference<Future<?>> implements b {
    protected static final FutureTask<Void> c = new FutureTask<>(Functions.b, null);
    protected static final FutureTask<Void> d = new FutureTask<>(Functions.b, null);
    private static final long serialVersionUID = 1811839108042568751L;
    protected final Runnable a;
    protected Thread b;

    AbstractDirectTask(Runnable runnable) {
        this.a = runnable;
    }

    public final void dispose() {
        Future future = (Future) get();
        if (future != c && future != d && compareAndSet(future, d) && future != null) {
            future.cancel(this.b != Thread.currentThread());
        }
    }

    public final boolean isDisposed() {
        Future future = (Future) get();
        return future == c || future == d;
    }

    public final void a(Future<?> future) {
        Future future2;
        do {
            future2 = (Future) get();
            if (future2 != c) {
                if (future2 == d) {
                    future.cancel(this.b != Thread.currentThread());
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(future2, future));
    }
}
