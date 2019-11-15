package io.reactivex.internal.operators.observable;

import io.reactivex.b.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.Callable;

/* compiled from: ObservableCollect */
public final class n<T, U> extends a<T, U> {
    final Callable<? extends U> b;
    final b<? super U, ? super T> c;

    /* compiled from: ObservableCollect */
    static final class a<T, U> implements io.reactivex.disposables.b, q<T> {
        final q<? super U> a;
        final b<? super U, ? super T> b;
        final U c;
        io.reactivex.disposables.b d;
        boolean e;

        a(q<? super U> qVar, U u, b<? super U, ? super T> bVar) {
            this.a = qVar;
            this.b = bVar;
            this.c = u;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.d, bVar)) {
                this.d = bVar;
                this.a.onSubscribe(this);
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
                    this.b.a(this.c, t);
                } catch (Throwable th) {
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
                this.a.onNext(this.c);
                this.a.onComplete();
            }
        }
    }

    public n(o<T> oVar, Callable<? extends U> callable, b<? super U, ? super T> bVar) {
        super(oVar);
        this.b = callable;
        this.c = bVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super U> qVar) {
        try {
            this.a.subscribe(new a(qVar, io.reactivex.internal.functions.a.a(this.b.call(), "The initialSupplier returned a null value"), this.c));
        } catch (Throwable th) {
            EmptyDisposable.a(th, qVar);
        }
    }
}
