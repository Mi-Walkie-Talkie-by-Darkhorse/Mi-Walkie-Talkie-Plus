package io.reactivex.internal.operators.observable;

import io.reactivex.b.c;
import io.reactivex.disposables.b;
import io.reactivex.g;
import io.reactivex.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableReduceMaybe */
public final class be<T> extends g<T> {
    final o<T> a;
    final c<T, T, T> b;

    /* compiled from: ObservableReduceMaybe */
    static final class a<T> implements b, q<T> {
        final h<? super T> a;
        final c<T, T, T> b;
        boolean c;
        T d;
        b e;

        a(h<? super T> hVar, c<T, T, T> cVar) {
            this.a = hVar;
            this.b = cVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.e, bVar)) {
                this.e = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (!this.c) {
                T t2 = this.d;
                if (t2 == null) {
                    this.d = t;
                    return;
                }
                try {
                    this.d = io.reactivex.internal.functions.a.a(this.b.a(t2, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.e.dispose();
                    onError(th);
                }
            }
        }

        public void onError(Throwable th) {
            if (this.c) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.c = true;
            this.d = null;
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.c) {
                this.c = true;
                T t = this.d;
                this.d = null;
                if (t != null) {
                    this.a.a(t);
                } else {
                    this.a.onComplete();
                }
            }
        }

        public void dispose() {
            this.e.dispose();
        }

        public boolean isDisposed() {
            return this.e.isDisposed();
        }
    }

    public be(o<T> oVar, c<T, T, T> cVar) {
        this.a = oVar;
        this.b = cVar;
    }

    /* access modifiers changed from: protected */
    public void b(h<? super T> hVar) {
        this.a.subscribe(new a(hVar, this.b));
    }
}
