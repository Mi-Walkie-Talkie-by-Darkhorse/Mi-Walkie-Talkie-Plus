package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableTake */
public final class bq<T> extends a<T, T> {
    final long b;

    /* compiled from: ObservableTake */
    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        boolean b;
        b c;
        long d;

        a(q<? super T> qVar, long j) {
            this.a = qVar;
            this.d = j;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                if (this.d == 0) {
                    this.b = true;
                    bVar.dispose();
                    EmptyDisposable.a(this.a);
                    return;
                }
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (!this.b) {
                long j = this.d;
                this.d = j - 1;
                if (j > 0) {
                    boolean z = this.d == 0;
                    this.a.onNext(t);
                    if (z) {
                        onComplete();
                    }
                }
            }
        }

        public void onError(Throwable th) {
            if (this.b) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.b = true;
            this.c.dispose();
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.b) {
                this.b = true;
                this.c.dispose();
                this.a.onComplete();
            }
        }

        public void dispose() {
            this.c.dispose();
        }

        public boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public bq(o<T> oVar, long j) {
        super(oVar);
        this.b = j;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar, this.b));
    }
}
