package com.jakewharton.retrofit2.adapter.rxjava2;

import io.reactivex.BackpressureStrategy;
import io.reactivex.k;
import io.reactivex.r;
import java.lang.reflect.Type;
import retrofit2.b;
import retrofit2.c;

final class RxJava2CallAdapter implements c<Object> {
    private final boolean isBody;
    private final boolean isCompletable;
    private final boolean isFlowable;
    private final boolean isMaybe;
    private final boolean isResult;
    private final boolean isSingle;
    private final Type responseType;
    private final r scheduler;

    RxJava2CallAdapter(Type type, r rVar, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.responseType = type;
        this.scheduler = rVar;
        this.isResult = z;
        this.isBody = z2;
        this.isFlowable = z3;
        this.isSingle = z4;
        this.isMaybe = z5;
        this.isCompletable = z6;
    }

    public Type responseType() {
        return this.responseType;
    }

    public <R> Object adapt(b<R> bVar) {
        k callObservable = new CallObservable(bVar);
        k kVar = this.isResult ? new ResultObservable(callObservable) : this.isBody ? new BodyObservable(callObservable) : callObservable;
        if (this.scheduler != null) {
            kVar = kVar.subscribeOn(this.scheduler);
        }
        if (this.isFlowable) {
            return kVar.toFlowable(BackpressureStrategy.LATEST);
        }
        if (this.isSingle) {
            return kVar.singleOrError();
        }
        if (this.isMaybe) {
            return kVar.singleElement();
        }
        if (this.isCompletable) {
            return kVar.ignoreElements();
        }
        return kVar;
    }
}
