package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableCount */
public final class p<T> extends a<T, Long> {

    /* compiled from: ObservableCount */
    static final class a implements b, q<Object> {
        final q<? super Long> a;
        b b;
        long c;

        a(q<? super Long> qVar) {
            this.a = qVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.b, bVar)) {
                this.b = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void dispose() {
            this.b.dispose();
        }

        public boolean isDisposed() {
            return this.b.isDisposed();
        }

        public void onNext(Object obj) {
            this.c++;
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            this.a.onNext(Long.valueOf(this.c));
            this.a.onComplete();
        }
    }

    public p(o<T> oVar) {
        super(oVar);
    }

    public void subscribeActual(q<? super Long> qVar) {
        this.a.subscribe(new a(qVar));
    }
}
