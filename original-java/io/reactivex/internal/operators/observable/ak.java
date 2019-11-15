package io.reactivex.internal.operators.observable;

import io.reactivex.internal.functions.a;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import io.reactivex.k;
import io.reactivex.q;
import java.util.concurrent.Callable;

/* compiled from: ObservableFromCallable */
public final class ak<T> extends k<T> implements Callable<T> {
    final Callable<? extends T> a;

    public ak(Callable<? extends T> callable) {
        this.a = callable;
    }

    public void subscribeActual(q<? super T> qVar) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(qVar);
        qVar.onSubscribe(deferredScalarDisposable);
        if (!deferredScalarDisposable.isDisposed()) {
            try {
                deferredScalarDisposable.b(a.a(this.a.call(), "Callable returned null"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                if (!deferredScalarDisposable.isDisposed()) {
                    qVar.onError(th);
                } else {
                    io.reactivex.d.a.a(th);
                }
            }
        }
    }

    public T call() throws Exception {
        return a.a(this.a.call(), "The callable returned a null value");
    }
}
