package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.g;
import io.reactivex.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableElementAtMaybe */
public final class ad<T> extends g<T> implements io.reactivex.internal.a.a<T> {
    final o<T> a;
    final long b;

    /* compiled from: ObservableElementAtMaybe */
    static final class a<T> implements b, q<T> {
        final h<? super T> a;
        final long b;
        b c;
        long d;
        boolean e;

        a(h<? super T> hVar, long j) {
            this.a = hVar;
            this.b = j;
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
                long j = this.d;
                if (j == this.b) {
                    this.e = true;
                    this.c.dispose();
                    this.a.a(t);
                    return;
                }
                this.d = j + 1;
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

    public ad(o<T> oVar, long j) {
        this.a = oVar;
        this.b = j;
    }

    public void b(h<? super T> hVar) {
        this.a.subscribe(new a(hVar, this.b));
    }

    public k<T> f_() {
        return io.reactivex.d.a.a((k<T>) new ac<T>(this.a, this.b, null, false));
    }
}
