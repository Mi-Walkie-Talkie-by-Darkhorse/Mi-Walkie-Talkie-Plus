package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.s;
import io.reactivex.t;
import java.util.NoSuchElementException;

/* compiled from: ObservableLastSingle */
public final class aw<T> extends s<T> {
    final o<T> a;
    final T b;

    /* compiled from: ObservableLastSingle */
    static final class a<T> implements b, q<T> {
        final t<? super T> a;
        final T b;
        b c;
        T d;

        a(t<? super T> tVar, T t) {
            this.a = tVar;
            this.b = t;
        }

        public void dispose() {
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }

        public boolean isDisposed() {
            return this.c == DisposableHelper.DISPOSED;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            this.d = t;
        }

        public void onError(Throwable th) {
            this.c = DisposableHelper.DISPOSED;
            this.d = null;
            this.a.onError(th);
        }

        public void onComplete() {
            this.c = DisposableHelper.DISPOSED;
            T t = this.d;
            if (t != null) {
                this.d = null;
                this.a.a(t);
                return;
            }
            T t2 = this.b;
            if (t2 != null) {
                this.a.a(t2);
            } else {
                this.a.onError(new NoSuchElementException());
            }
        }
    }

    public aw(o<T> oVar, T t) {
        this.a = oVar;
        this.b = t;
    }

    /* access modifiers changed from: protected */
    public void b(t<? super T> tVar) {
        this.a.subscribe(new a(tVar, this.b));
    }
}
