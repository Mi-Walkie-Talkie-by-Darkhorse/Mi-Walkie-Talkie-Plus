package io.reactivex.internal.operators.observable;

import io.reactivex.b.p;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.s;
import io.reactivex.t;

/* compiled from: ObservableAllSingle */
public final class f<T> extends s<Boolean> implements io.reactivex.internal.a.a<Boolean> {
    final o<T> a;
    final p<? super T> b;

    /* compiled from: ObservableAllSingle */
    static final class a<T> implements b, q<T> {
        final t<? super Boolean> a;
        final p<? super T> b;
        b c;
        boolean d;

        a(t<? super Boolean> tVar, p<? super T> pVar) {
            this.a = tVar;
            this.b = pVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (!this.d) {
                try {
                    if (!this.b.test(t)) {
                        this.d = true;
                        this.c.dispose();
                        this.a.a(Boolean.valueOf(false));
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.c.dispose();
                    onError(th);
                }
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
                this.a.a(Boolean.valueOf(true));
            }
        }

        public void dispose() {
            this.c.dispose();
        }

        public boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public f(o<T> oVar, p<? super T> pVar) {
        this.a = oVar;
        this.b = pVar;
    }

    /* access modifiers changed from: protected */
    public void b(t<? super Boolean> tVar) {
        this.a.subscribe(new a(tVar, this.b));
    }

    public k<Boolean> f_() {
        return io.reactivex.d.a.a((k<T>) new e<T>(this.a, this.b));
    }
}
