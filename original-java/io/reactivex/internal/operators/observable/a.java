package io.reactivex.internal.operators.observable;

import io.reactivex.k;
import io.reactivex.o;

/* compiled from: AbstractObservableWithUpstream */
abstract class a<T, U> extends k<U> {
    protected final o<T> a;

    a(o<T> oVar) {
        this.a = oVar;
    }
}
