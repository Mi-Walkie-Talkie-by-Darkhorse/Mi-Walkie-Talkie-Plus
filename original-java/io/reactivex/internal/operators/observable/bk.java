package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.g;
import io.reactivex.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableSingleMaybe */
public final class bk<T> extends g<T> {
    final o<T> a;

    /* compiled from: ObservableSingleMaybe */
    static final class a<T> implements b, q<T> {
        final h<? super T> a;
        b b;
        T c;
        boolean d;

        a(h<? super T> hVar) {
            this.a = hVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.b, bVar)) {
                this.b = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void dispose() {
            this.b.dispose();
        }

        public boolean isDisposed() {
            return this.b.isDisposed();
        }

        public void onNext(T t) {
            if (!this.d) {
                if (this.c != null) {
                    this.d = true;
                    this.b.dispose();
                    this.a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.c = t;
            }
        }

        public void onError(Throwable th) {
            if (this.d) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.d = true;
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.d) {
                this.d = true;
                T t = this.c;
                this.c = null;
                if (t == null) {
                    this.a.onComplete();
                } else {
                    this.a.a(t);
                }
            }
        }
    }

    public bk(o<T> oVar) {
        this.a = oVar;
    }

    public void b(h<? super T> hVar) {
        this.a.subscribe(new a(hVar));
    }
}
