package io.reactivex.internal.schedulers;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.a;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class ScheduledRunnable extends AtomicReferenceArray<Object> implements b, Runnable, Callable<Object> {
    static final Object b = new Object();
    static final Object c = new Object();
    private static final long serialVersionUID = -6120223772001106981L;
    final Runnable a;

    public ScheduledRunnable(Runnable runnable, a aVar) {
        super(3);
        this.a = runnable;
        lazySet(0, aVar);
    }

    public Object call() {
        run();
        return null;
    }

    public void run() {
        Object obj;
        Object obj2;
        lazySet(2, Thread.currentThread());
        try {
            this.a.run();
        } catch (Throwable th) {
            Throwable th2 = th;
            lazySet(2, null);
            Object obj3 = get(0);
            if (!(obj3 == b || obj3 == null || !compareAndSet(0, obj3, c))) {
                ((a) obj3).c(this);
            }
            do {
                obj = get(1);
                if (obj == b) {
                    break;
                }
            } while (!compareAndSet(1, obj, c));
            throw th2;
        }
        lazySet(2, null);
        Object obj4 = get(0);
        if (!(obj4 == b || obj4 == null || !compareAndSet(0, obj4, c))) {
            ((a) obj4).c(this);
        }
        do {
            obj2 = get(1);
            if (obj2 == b) {
                return;
            }
        } while (!compareAndSet(1, obj2, c));
    }

    public void a(Future<?> future) {
        Object obj;
        boolean z = true;
        do {
            obj = get(1);
            if (obj != c) {
                if (obj == b) {
                    if (get(2) == Thread.currentThread()) {
                        z = false;
                    }
                    future.cancel(z);
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    public void dispose() {
        Object obj;
        boolean z = true;
        while (true) {
            Object obj2 = get(1);
            if (obj2 == c || obj2 == b) {
                break;
            } else if (compareAndSet(1, obj2, b)) {
                if (obj2 != null) {
                    Future future = (Future) obj2;
                    if (get(2) == Thread.currentThread()) {
                        z = false;
                    }
                    future.cancel(z);
                }
            }
        }
        do {
            obj = get(0);
            if (obj == c || obj == b || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, b));
        ((a) obj).c(this);
    }

    public boolean isDisposed() {
        Object obj = get(1);
        if (obj == b || obj == c) {
            return true;
        }
        return false;
    }
}
