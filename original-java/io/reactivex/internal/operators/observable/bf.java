package io.reactivex.internal.operators.observable;

import io.reactivex.b.c;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.s;
import io.reactivex.t;

/* compiled from: ObservableReduceSeedSingle */
public final class bf<T, R> extends s<R> {
    final o<T> a;
    final R b;
    final c<R, ? super T, R> c;

    /* compiled from: ObservableReduceSeedSingle */
    static final class a<T, R> implements b, q<T> {
        final t<? super R> a;
        final c<R, ? super T, R> b;
        R c;
        b d;

        a(t<? super R> tVar, c<R, ? super T, R> cVar, R r) {
            this.a = tVar;
            this.c = r;
            this.b = cVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.d, bVar)) {
                this.d = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            R r = this.c;
            if (r != null) {
                try {
                    this.c = io.reactivex.internal.functions.a.a(this.b.a(r, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.d.dispose();
                    onError(th);
                }
            }
        }

        public void onError(Throwable th) {
            R r = this.c;
            this.c = null;
            if (r != null) {
                this.a.onError(th);
            } else {
                io.reactivex.d.a.a(th);
            }
        }

        public void onComplete() {
            R r = this.c;
            this.c = null;
            if (r != null) {
                this.a.a(r);
            }
        }

        public void dispose() {
            this.d.dispose();
        }

        public boolean isDisposed() {
            return this.d.isDisposed();
        }
    }

    public bf(o<T> oVar, R r, c<R, ? super T, R> cVar) {
        this.a = oVar;
        this.b = r;
        this.c = cVar;
    }

    /* access modifiers changed from: protected */
    public void b(t<? super R> tVar) {
        this.a.subscribe(new a(tVar, this.c, this.b));
    }
}
