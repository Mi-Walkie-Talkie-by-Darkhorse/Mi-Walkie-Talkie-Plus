package io.reactivex.internal.operators.observable;

import io.reactivex.internal.functions.a;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import io.reactivex.k;
import io.reactivex.q;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableFromFuture */
public final class al<T> extends k<T> {
    final Future<? extends T> a;
    final long b;
    final TimeUnit c;

    public al(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.a = future;
        this.b = j;
        this.c = timeUnit;
    }

    public void subscribeActual(q<? super T> qVar) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(qVar);
        qVar.onSubscribe(deferredScalarDisposable);
        if (!deferredScalarDisposable.isDisposed()) {
            try {
                deferredScalarDisposable.b(a.a(this.c != null ? this.a.get(this.b, this.c) : this.a.get(), "Future returned null"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                if (!deferredScalarDisposable.isDisposed()) {
                    qVar.onError(th);
                }
            }
        }
    }
}
