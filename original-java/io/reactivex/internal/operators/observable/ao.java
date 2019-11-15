package io.reactivex.internal.operators.observable;

import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableFromUnsafeSource */
public final class ao<T> extends k<T> {
    final o<T> a;

    public ao(o<T> oVar) {
        this.a = oVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(qVar);
    }
}
