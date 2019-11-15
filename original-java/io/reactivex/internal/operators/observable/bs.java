package io.reactivex.internal.operators.observable;

import io.reactivex.b.p;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableTakeUntilPredicate */
public final class bs<T> extends a<T, T> {
    final p<? super T> b;

    /* compiled from: ObservableTakeUntilPredicate */
    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        final p<? super T> b;
        b c;
        boolean d;

        a(q<? super T> qVar, p<? super T> pVar) {
            this.a = qVar;
            this.b = pVar;
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
            if (!this.d) {
                this.a.onNext(t);
                try {
                    if (this.b.test(t)) {
                        this.d = true;
                        this.c.dispose();
                        this.a.onComplete();
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.c.dispose();
                    onError(th);
                }
            }
        }

        public void onError(Throwable th) {
            if (!this.d) {
                this.d = true;
                this.a.onError(th);
                return;
            }
            io.reactivex.d.a.a(th);
        }

        public void onComplete() {
            if (!this.d) {
                this.d = true;
                this.a.onComplete();
            }
        }
    }

    public bs(o<T> oVar, p<? super T> pVar) {
        super(oVar);
        this.b = pVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar, this.b));
    }
}
