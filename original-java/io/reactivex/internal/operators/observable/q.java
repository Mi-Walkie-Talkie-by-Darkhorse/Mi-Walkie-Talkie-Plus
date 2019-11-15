package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.s;
import io.reactivex.t;

/* compiled from: ObservableCountSingle */
public final class q<T> extends s<Long> implements io.reactivex.internal.a.a<Long> {
    final o<T> a;

    /* compiled from: ObservableCountSingle */
    static final class a implements b, io.reactivex.q<Object> {
        final t<? super Long> a;
        b b;
        long c;

        a(t<? super Long> tVar) {
            this.a = tVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.b, bVar)) {
                this.b = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void dispose() {
            this.b.dispose();
            this.b = DisposableHelper.DISPOSED;
        }

        public boolean isDisposed() {
            return this.b.isDisposed();
        }

        public void onNext(Object obj) {
            this.c++;
        }

        public void onError(Throwable th) {
            this.b = DisposableHelper.DISPOSED;
            this.a.onError(th);
        }

        public void onComplete() {
            this.b = DisposableHelper.DISPOSED;
            this.a.a(Long.valueOf(this.c));
        }
    }

    public q(o<T> oVar) {
        this.a = oVar;
    }

    public void b(t<? super Long> tVar) {
        this.a.subscribe(new a(tVar));
    }

    public k<Long> f_() {
        return io.reactivex.d.a.a((k<T>) new p<T>(this.a));
    }
}
