package com.jakewharton.retrofit2.adapter.rxjava2;

import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.k;
import io.reactivex.q;

final class ResultObservable<T> extends k<Result<T>> {
    private final k<retrofit2.k<T>> upstream;

    private static class ResultObserver<R> implements q<retrofit2.k<R>> {
        private final q<? super Result<R>> observer;

        ResultObserver(q<? super Result<R>> qVar) {
            this.observer = qVar;
        }

        public void onSubscribe(b bVar) {
            this.observer.onSubscribe(bVar);
        }

        public void onNext(retrofit2.k<R> kVar) {
            this.observer.onNext(Result.response(kVar));
        }

        public void onError(Throwable th) {
            try {
                this.observer.onNext(Result.error(th));
                this.observer.onComplete();
            } catch (Throwable th2) {
                a.b(th2);
                io.reactivex.d.a.a((Throwable) new CompositeException(th, th2));
            }
        }

        public void onComplete() {
            this.observer.onComplete();
        }
    }

    ResultObservable(k<retrofit2.k<T>> kVar) {
        this.upstream = kVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super Result<T>> qVar) {
        this.upstream.subscribe((q<? super T>) new ResultObserver<Object>(qVar));
    }
}
