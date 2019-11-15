package io.reactivex.internal.operators.observable;

import io.reactivex.b.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.k;
import io.reactivex.q;
import io.reactivex.s;
import io.reactivex.t;
import java.util.concurrent.Callable;

/* compiled from: ObservableCollectSingle */
public final class o<T, U> extends s<U> implements io.reactivex.internal.a.a<U> {
    final io.reactivex.o<T> a;
    final Callable<? extends U> b;
    final b<? super U, ? super T> c;

    /* compiled from: ObservableCollectSingle */
    static final class a<T, U> implements io.reactivex.disposables.b, q<T> {
        final t<? super U> a;
        final b<? super U, ? super T> b;
        final U c;
        io.reactivex.disposables.b d;
        boolean e;

        a(t<? super U> tVar, U u, b<? super U, ? super T> bVar) {
            this.a = tVar;
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
                this.a.a(this.c);
            }
        }
    }

    public o(io.reactivex.o<T> oVar, Callable<? extends U> callable, b<? super U, ? super T> bVar) {
        this.a = oVar;
        this.b = callable;
        this.c = bVar;
    }

    /* access modifiers changed from: protected */
    public void b(t<? super U> tVar) {
        try {
            this.a.subscribe(new a(tVar, io.reactivex.internal.functions.a.a(this.b.call(), "The initialSupplier returned a null value"), this.c));
        } catch (Throwable th) {
            EmptyDisposable.a(th, tVar);
        }
    }

    public k<U> f_() {
        return io.reactivex.d.a.a((k<T>) new n<T>(this.a, this.b, this.c));
    }
}
