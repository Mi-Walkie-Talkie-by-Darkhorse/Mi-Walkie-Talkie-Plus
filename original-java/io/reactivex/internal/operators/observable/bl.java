package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.s;
import io.reactivex.t;
import java.util.NoSuchElementException;

/* compiled from: ObservableSingleSingle */
public final class bl<T> extends s<T> {
    final o<? extends T> a;
    final T b;

    /* compiled from: ObservableSingleSingle */
    static final class a<T> implements b, q<T> {
        final t<? super T> a;
        final T b;
        b c;
        T d;
        boolean e;

        a(t<? super T> tVar, T t) {
            this.a = tVar;
            this.b = t;
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
                if (this.d != null) {
                    this.e = true;
                    this.c.dispose();
                    this.a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.d = t;
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
                T t = this.d;
                this.d = null;
                if (t == null) {
                    t = this.b;
                }
                if (t != null) {
                    this.a.a(t);
                } else {
                    this.a.onError(new NoSuchElementException());
                }
            }
        }
    }

    public bl(o<? extends T> oVar, T t) {
        this.a = oVar;
        this.b = t;
    }

    public void b(t<? super T> tVar) {
        this.a.subscribe(new a(tVar, this.b));
    }
}
