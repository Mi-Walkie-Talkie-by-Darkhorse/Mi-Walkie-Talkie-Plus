package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.s;
import io.reactivex.t;
import java.util.NoSuchElementException;

/* compiled from: ObservableElementAtSingle */
public final class ae<T> extends s<T> implements io.reactivex.internal.a.a<T> {
    final o<T> a;
    final long b;
    final T c;

    /* compiled from: ObservableElementAtSingle */
    static final class a<T> implements b, q<T> {
        final t<? super T> a;
        final long b;
        final T c;
        b d;
        long e;
        boolean f;

        a(t<? super T> tVar, long j, T t) {
            this.a = tVar;
            this.b = j;
            this.c = t;
        }

        public void onSubscribe(b bVar) {
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
            if (!this.f) {
                long j = this.e;
                if (j == this.b) {
                    this.f = true;
                    this.d.dispose();
                    this.a.a(t);
                    return;
                }
                this.e = j + 1;
            }
        }

        public void onError(Throwable th) {
            if (this.f) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.f = true;
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.f) {
                this.f = true;
                T t = this.c;
                if (t != null) {
                    this.a.a(t);
                } else {
                    this.a.onError(new NoSuchElementException());
                }
            }
        }
    }

    public ae(o<T> oVar, long j, T t) {
        this.a = oVar;
        this.b = j;
        this.c = t;
    }

    public void b(t<? super T> tVar) {
        this.a.subscribe(new a(tVar, this.b, this.c));
    }

    public k<T> f_() {
        return io.reactivex.d.a.a((k<T>) new ac<T>(this.a, this.b, this.c, true));
    }
}
