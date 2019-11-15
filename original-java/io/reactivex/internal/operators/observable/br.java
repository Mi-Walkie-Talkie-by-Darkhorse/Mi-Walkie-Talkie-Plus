package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableTakeLastOne */
public final class br<T> extends a<T, T> {

    /* compiled from: ObservableTakeLastOne */
    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        b b;
        T c;

        a(q<? super T> qVar) {
            this.a = qVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.b, bVar)) {
                this.b = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            this.c = t;
        }

        public void onError(Throwable th) {
            this.c = null;
            this.a.onError(th);
        }

        public void onComplete() {
            a();
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            T t = this.c;
            if (t != null) {
                this.c = null;
                this.a.onNext(t);
            }
            this.a.onComplete();
        }

        public void dispose() {
            this.c = null;
            this.b.dispose();
        }

        public boolean isDisposed() {
            return this.b.isDisposed();
        }
    }

    public br(o<T> oVar) {
        super(oVar);
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar));
    }
}
