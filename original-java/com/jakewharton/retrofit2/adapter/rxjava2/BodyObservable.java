package com.jakewharton.retrofit2.adapter.rxjava2;

import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.k;
import io.reactivex.q;

final class BodyObservable<T> extends k<T> {
    private final k<retrofit2.k<T>> upstream;

    private static class BodyObserver<R> implements q<retrofit2.k<R>> {
        private final q<? super R> observer;
        private boolean terminated;

        BodyObserver(q<? super R> qVar) {
            this.observer = qVar;
        }

        public void onSubscribe(b bVar) {
            this.observer.onSubscribe(bVar);
        }

        public void onNext(retrofit2.k<R> kVar) {
            if (kVar.c()) {
                this.observer.onNext(kVar.d());
                return;
            }
            this.terminated = true;
            HttpException httpException = new HttpException(kVar);
            try {
                this.observer.onError(httpException);
            } catch (Throwable th) {
                a.b(th);
                io.reactivex.d.a.a((Throwable) new CompositeException(httpException, th));
            }
        }

        public void onComplete() {
            if (!this.terminated) {
                this.observer.onComplete();
            }
        }

        public void onError(Throwable th) {
            if (!this.terminated) {
                this.observer.onError(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th);
            io.reactivex.d.a.a((Throwable) assertionError);
        }
    }

    BodyObservable(k<retrofit2.k<T>> kVar) {
        this.upstream = kVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.upstream.subscribe((q<? super T>) new BodyObserver<Object>(qVar));
    }
}
