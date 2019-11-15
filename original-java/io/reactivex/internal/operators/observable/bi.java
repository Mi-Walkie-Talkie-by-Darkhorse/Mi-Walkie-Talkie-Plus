package io.reactivex.internal.operators.observable;

import io.reactivex.b.c;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.Callable;

/* compiled from: ObservableScanSeed */
public final class bi<T, R> extends a<T, R> {
    final c<R, ? super T, R> b;
    final Callable<R> c;

    /* compiled from: ObservableScanSeed */
    static final class a<T, R> implements b, q<T> {
        final q<? super R> a;
        final c<R, ? super T, R> b;
        R c;
        b d;
        boolean e;

        a(q<? super R> qVar, c<R, ? super T, R> cVar, R r) {
            this.a = qVar;
            this.b = cVar;
            this.c = r;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.d, bVar)) {
                this.d = bVar;
                this.a.onSubscribe(this);
                this.a.onNext(this.c);
            }
        }

        public void dispose() {
            this.d.dispose();
        }

        public boolean isDisposed() {
            return this.d.isDisposed();
        }

        public void onNext(T t) {
            if (!this.e) {
                try {
                    R a2 = io.reactivex.internal.functions.a.a(this.b.a(this.c, t), "The accumulator returned a null value");
                    this.c = a2;
                    this.a.onNext(a2);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.d.dispose();
                    onError(th);
                }
            }
        }

        public void onError(Throwable th) {
            if (this.e) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.e = true;
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.e) {
                this.e = true;
                this.a.onComplete();
            }
        }
    }

    public bi(o<T> oVar, Callable<R> callable, c<R, ? super T, R> cVar) {
        super(oVar);
        this.b = cVar;
        this.c = callable;
    }

    public void subscribeActual(q<? super R> qVar) {
        try {
            this.a.subscribe(new a(qVar, this.b, io.reactivex.internal.functions.a.a(this.c.call(), "The seed supplied is null")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.a(th, qVar);
        }
    }
}
