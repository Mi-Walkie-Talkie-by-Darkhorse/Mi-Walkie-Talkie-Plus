package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.s;
import io.reactivex.t;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: ObservableToListSingle */
public final class bw<T, U extends Collection<? super T>> extends s<U> implements io.reactivex.internal.a.a<U> {
    final o<T> a;
    final Callable<U> b;

    /* compiled from: ObservableToListSingle */
    static final class a<T, U extends Collection<? super T>> implements b, q<T> {
        final t<? super U> a;
        U b;
        b c;

        a(t<? super U> tVar, U u) {
            this.a = tVar;
            this.b = u;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void dispose() {
            this.c.dispose();
        }

        public boolean isDisposed() {
            return this.c.isDisposed();
        }

        public void onNext(T t) {
            this.b.add(t);
        }

        public void onError(Throwable th) {
            this.b = null;
            this.a.onError(th);
        }

        public void onComplete() {
            U u = this.b;
            this.b = null;
            this.a.a(u);
        }
    }

    public bw(o<T> oVar, int i) {
        this.a = oVar;
        this.b = Functions.a(i);
    }

    public bw(o<T> oVar, Callable<U> callable) {
        this.a = oVar;
        this.b = callable;
    }

    public void b(t<? super U> tVar) {
        try {
            this.a.subscribe(new a(tVar, (Collection) io.reactivex.internal.functions.a.a(this.b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.a(th, tVar);
        }
    }

    public k<U> f_() {
        return io.reactivex.d.a.a((k<T>) new bv<T>(this.a, this.b));
    }
}
