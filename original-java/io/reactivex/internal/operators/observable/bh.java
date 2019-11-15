package io.reactivex.internal.operators.observable;

import io.reactivex.b.c;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableScan */
public final class bh<T> extends a<T, T> {
    final c<T, T, T> b;

    /* compiled from: ObservableScan */
    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        final c<T, T, T> b;
        b c;
        T d;
        boolean e;

        a(q<? super T> qVar, c<T, T, T> cVar) {
            this.a = qVar;
            this.b = cVar;
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
            if (!this.e) {
                q<? super T> qVar = this.a;
                T t2 = this.d;
                if (t2 == null) {
                    this.d = t;
                    qVar.onNext(t);
                    return;
                }
                try {
                    T a2 = io.reactivex.internal.functions.a.a(this.b.a(t2, t), "The value returned by the accumulator is null");
                    this.d = a2;
                    qVar.onNext(a2);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.c.dispose();
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

    public bh(o<T> oVar, c<T, T, T> cVar) {
        super(oVar);
        this.b = cVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar, this.b));
    }
}
