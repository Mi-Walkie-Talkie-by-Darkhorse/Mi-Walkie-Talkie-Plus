package io.reactivex.internal.operators.observable;

import io.reactivex.internal.a.e;
import io.reactivex.internal.operators.observable.ObservableScalarXMap.ScalarDisposable;
import io.reactivex.k;
import io.reactivex.q;

/* compiled from: ObservableJust */
public final class au<T> extends k<T> implements e<T> {
    private final T a;

    public au(T t) {
        this.a = t;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        ScalarDisposable scalarDisposable = new ScalarDisposable(qVar, this.a);
        qVar.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }

    public T call() {
        return this.a;
    }
}
