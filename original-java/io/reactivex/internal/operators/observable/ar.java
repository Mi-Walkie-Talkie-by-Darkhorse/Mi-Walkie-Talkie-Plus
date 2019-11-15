package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableIgnoreElements */
public final class ar<T> extends a<T, T> {

    /* compiled from: ObservableIgnoreElements */
    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        b b;

        a(q<? super T> qVar) {
            this.a = qVar;
        }

        public void onSubscribe(b bVar) {
            this.b = bVar;
            this.a.onSubscribe(this);
        }

        public void onNext(T t) {
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            this.a.onComplete();
        }

        public void dispose() {
            this.b.dispose();
        }

        public boolean isDisposed() {
            return this.b.isDisposed();
        }
    }

    public ar(o<T> oVar) {
        super(oVar);
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar));
    }
}
