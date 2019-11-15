package io.reactivex.internal.operators.flowable;

import io.reactivex.e;

/* compiled from: AbstractFlowableWithUpstream */
abstract class a<T, R> extends e<R> {
    protected final e<T> b;

    a(e<T> eVar) {
        this.b = (e) io.reactivex.internal.functions.a.a(eVar, "source is null");
    }
}
