package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.k;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.u;

/* compiled from: SingleToObservable */
public final class b<T> extends k<T> {
    final u<? extends T> a;

    /* compiled from: SingleToObservable */
    static final class a<T> implements io.reactivex.disposables.b, t<T> {
        final q<? super T> a;
        io.reactivex.disposables.b b;

        a(q<? super T> qVar) {
            this.a = qVar;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.b, bVar)) {
                this.b = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void a(T t) {
            this.a.onNext(t);
            this.a.onComplete();
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void dispose() {
            this.b.dispose();
        }

        public boolean isDisposed() {
            return this.b.isDisposed();
        }
    }

    public b(u<? extends T> uVar) {
        this.a = uVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.a(new a(qVar));
    }
}
