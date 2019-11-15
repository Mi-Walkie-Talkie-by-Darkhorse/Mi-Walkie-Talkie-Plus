package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.j;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableMaterialize */
public final class ba<T> extends a<T, j<T>> {

    /* compiled from: ObservableMaterialize */
    static final class a<T> implements b, q<T> {
        final q<? super j<T>> a;
        b b;

        a(q<? super j<T>> qVar) {
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

        public void onNext(T t) {
            this.a.onNext(j.a(t));
        }

        public void onError(Throwable th) {
            this.a.onNext(j.a(th));
            this.a.onComplete();
        }

        public void onComplete() {
            this.a.onNext(j.f());
            this.a.onComplete();
        }
    }

    public ba(o<T> oVar) {
        super(oVar);
    }

    public void subscribeActual(q<? super j<T>> qVar) {
        this.a.subscribe(new a(qVar));
    }
}
