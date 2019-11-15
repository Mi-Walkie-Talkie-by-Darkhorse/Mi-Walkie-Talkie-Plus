package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableHide */
public final class aq<T> extends a<T, T> {

    /* compiled from: ObservableHide */
    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        b b;

        a(q<? super T> qVar) {
            this.a = qVar;
        }

        public void dispose() {
            this.b.dispose();
        }

        public boolean isDisposed() {
            return this.b.isDisposed();
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.b, bVar)) {
                this.b = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            this.a.onComplete();
        }
    }

    public aq(o<T> oVar) {
        super(oVar);
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar));
    }
}
