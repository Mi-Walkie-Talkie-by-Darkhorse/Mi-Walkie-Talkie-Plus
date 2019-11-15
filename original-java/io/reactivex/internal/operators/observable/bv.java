package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;
import io.reactivex.o;
import io.reactivex.q;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: ObservableToList */
public final class bv<T, U extends Collection<? super T>> extends a<T, U> {
    final Callable<U> b;

    /* compiled from: ObservableToList */
    static final class a<T, U extends Collection<? super T>> implements b, q<T> {
        U a;
        final q<? super U> b;
        b c;

        a(q<? super U> qVar, U u) {
            this.b = qVar;
            this.a = u;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                this.b.onSubscribe(this);
            }
        }

        public void dispose() {
            this.c.dispose();
        }

        public boolean isDisposed() {
            return this.c.isDisposed();
        }

        public void onNext(T t) {
            this.a.add(t);
        }

        public void onError(Throwable th) {
            this.a = null;
            this.b.onError(th);
        }

        public void onComplete() {
            U u = this.a;
            this.a = null;
            this.b.onNext(u);
            this.b.onComplete();
        }
    }

    public bv(o<T> oVar, int i) {
        super(oVar);
        this.b = Functions.a(i);
    }

    public bv(o<T> oVar, Callable<U> callable) {
        super(oVar);
        this.b = callable;
    }

    public void subscribeActual(q<? super U> qVar) {
        try {
            this.a.subscribe(new a(qVar, (Collection) io.reactivex.internal.functions.a.a(this.b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.a(th, qVar);
        }
    }
}
