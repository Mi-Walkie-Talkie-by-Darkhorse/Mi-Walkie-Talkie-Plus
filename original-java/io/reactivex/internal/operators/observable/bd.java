package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableOnErrorReturn */
public final class bd<T> extends a<T, T> {
    final g<? super Throwable, ? extends T> b;

    /* compiled from: ObservableOnErrorReturn */
    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        final g<? super Throwable, ? extends T> b;
        b c;

        a(q<? super T> qVar, g<? super Throwable, ? extends T> gVar) {
            this.a = qVar;
            this.b = gVar;
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
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            try {
                Object apply = this.b.apply(th);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(th);
                    this.a.onError(nullPointerException);
                    return;
                }
                this.a.onNext(apply);
                this.a.onComplete();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.a.onError(new CompositeException(th, th2));
            }
        }

        public void onComplete() {
            this.a.onComplete();
        }
    }

    public bd(o<T> oVar, g<? super Throwable, ? extends T> gVar) {
        super(oVar);
        this.b = gVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar, this.b));
    }
}
