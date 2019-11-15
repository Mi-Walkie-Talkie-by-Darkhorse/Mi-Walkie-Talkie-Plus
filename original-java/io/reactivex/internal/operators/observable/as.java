package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableIgnoreElementsCompletable */
public final class as<T> extends io.reactivex.a implements io.reactivex.internal.a.a<T> {
    final o<T> a;

    /* compiled from: ObservableIgnoreElementsCompletable */
    static final class a<T> implements b, q<T> {
        final io.reactivex.b a;
        b b;

        a(io.reactivex.b bVar) {
            this.a = bVar;
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

    public as(o<T> oVar) {
        this.a = oVar;
    }

    public void b(io.reactivex.b bVar) {
        this.a.subscribe(new a(bVar));
    }

    public k<T> f_() {
        return io.reactivex.d.a.a((k<T>) new ar<T>(this.a));
    }
}
