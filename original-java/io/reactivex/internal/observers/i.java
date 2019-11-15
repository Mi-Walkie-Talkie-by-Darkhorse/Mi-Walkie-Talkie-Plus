package io.reactivex.internal.observers;

import io.reactivex.d.a;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.c;
import io.reactivex.q;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FutureObserver */
public final class i<T> extends CountDownLatch implements b, q<T>, Future<T> {
    T a;
    Throwable b;
    final AtomicReference<b> c = new AtomicReference<>();

    public i() {
        super(1);
    }

    public boolean cancel(boolean z) {
        b bVar;
        do {
            bVar = (b) this.c.get();
            if (bVar == this || bVar == DisposableHelper.DISPOSED) {
                return false;
            }
        } while (!this.c.compareAndSet(bVar, DisposableHelper.DISPOSED));
        if (bVar != null) {
            bVar.dispose();
        }
        countDown();
        return true;
    }

    public boolean isCancelled() {
        return DisposableHelper.a((b) this.c.get());
    }

    public boolean isDone() {
        return getCount() == 0;
    }

    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            c.a();
            await();
        }
        if (isCancelled()) {
            throw new CancellationException();
        }
        Throwable th = this.b;
        if (th == null) {
            return this.a;
        }
        throw new ExecutionException(th);
    }

    public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (getCount() != 0) {
            c.a();
            if (!await(j, timeUnit)) {
                throw new TimeoutException();
            }
        }
        if (isCancelled()) {
            throw new CancellationException();
        }
        Throwable th = this.b;
        if (th == null) {
            return this.a;
        }
        throw new ExecutionException(th);
    }

    public void onSubscribe(b bVar) {
        DisposableHelper.b(this.c, bVar);
    }

    public void onNext(T t) {
        if (this.a != null) {
            ((b) this.c.get()).dispose();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.a = t;
    }

    public void onError(Throwable th) {
        b bVar;
        if (this.b == null) {
            this.b = th;
            do {
                bVar = (b) this.c.get();
                if (bVar == this || bVar == DisposableHelper.DISPOSED) {
                    a.a(th);
                    return;
                }
            } while (!this.c.compareAndSet(bVar, this));
            countDown();
            return;
        }
        a.a(th);
    }

    public void onComplete() {
        b bVar;
        if (this.a == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            bVar = (b) this.c.get();
            if (bVar == this || bVar == DisposableHelper.DISPOSED) {
                return;
            }
        } while (!this.c.compareAndSet(bVar, this));
        countDown();
    }

    public void dispose() {
    }

    public boolean isDisposed() {
        return isDone();
    }
}
