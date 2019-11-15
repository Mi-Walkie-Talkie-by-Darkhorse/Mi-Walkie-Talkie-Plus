package io.reactivex.internal.operators.observable;

import io.reactivex.k;
import io.reactivex.observers.e;
import io.reactivex.q;

/* compiled from: ObservableSerialized */
public final class bj<T> extends a<T, T> {
    public bj(k<T> kVar) {
        super(kVar);
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new e(qVar));
    }
}
