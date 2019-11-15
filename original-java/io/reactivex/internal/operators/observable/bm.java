package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableSkip */
public final class bm<T> extends a<T, T> {
    final long b;

    /* compiled from: ObservableSkip */
    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        long b;
        b c;

        a(q<? super T> qVar, long j) {
            this.a = qVar;
            this.b = j;
        }

        public void onSubscribe(b bVar) {
            this.c = bVar;
            this.a.onSubscribe(this);
        }

        public void onNext(T t) {
            if (this.b != 0) {
                this.b--;
            } else {
                this.a.onNext(t);
            }
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            this.a.onComplete();
        }

        public void dispose() {
            this.c.dispose();
        }

        public boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public bm(o<T> oVar, long j) {
        super(oVar);
        this.b = j;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar, this.b));
    }
}
