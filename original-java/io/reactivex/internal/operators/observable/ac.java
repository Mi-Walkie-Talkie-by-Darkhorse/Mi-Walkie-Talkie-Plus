package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;
import java.util.NoSuchElementException;

/* compiled from: ObservableElementAt */
public final class ac<T> extends a<T, T> {
    final long b;
    final T c;
    final boolean d;

    /* compiled from: ObservableElementAt */
    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        final long b;
        final T c;
        final boolean d;
        b e;
        long f;
        boolean g;

        a(q<? super T> qVar, long j, T t, boolean z) {
            this.a = qVar;
            this.b = j;
            this.c = t;
            this.d = z;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.e, bVar)) {
                this.e = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void dispose() {
            this.e.dispose();
        }

        public boolean isDisposed() {
            return this.e.isDisposed();
        }

        public void onNext(T t) {
            if (!this.g) {
                long j = this.f;
                if (j == this.b) {
                    this.g = true;
                    this.e.dispose();
                    this.a.onNext(t);
                    this.a.onComplete();
                    return;
                }
                this.f = j + 1;
            }
        }

        public void onError(Throwable th) {
            if (this.g) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.g = true;
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.g) {
                this.g = true;
                T t = this.c;
                if (t != null || !this.d) {
                    if (t != null) {
                        this.a.onNext(t);
                    }
                    this.a.onComplete();
                    return;
                }
                this.a.onError(new NoSuchElementException());
            }
        }
    }

    public ac(o<T> oVar, long j, T t, boolean z) {
        super(oVar);
        this.b = j;
        this.c = t;
        this.d = z;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar, this.b, this.c, this.d));
    }
}
