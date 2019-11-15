package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.g;
import io.reactivex.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableLastMaybe */
public final class av<T> extends g<T> {
    final o<T> a;

    /* compiled from: ObservableLastMaybe */
    static final class a<T> implements b, q<T> {
        final h<? super T> a;
        b b;
        T c;

        a(h<? super T> hVar) {
            this.a = hVar;
        }

        public void dispose() {
            this.b.dispose();
            this.b = DisposableHelper.DISPOSED;
        }

        public boolean isDisposed() {
            return this.b == DisposableHelper.DISPOSED;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.b, bVar)) {
                this.b = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            this.c = t;
        }

        public void onError(Throwable th) {
            this.b = DisposableHelper.DISPOSED;
            this.c = null;
            this.a.onError(th);
        }

        public void onComplete() {
            this.b = DisposableHelper.DISPOSED;
            T t = this.c;
            if (t != null) {
                this.c = null;
                this.a.a(t);
                return;
            }
            this.a.onComplete();
        }
    }

    public av(o<T> oVar) {
        this.a = oVar;
    }

    /* access modifiers changed from: protected */
    public void b(h<? super T> hVar) {
        this.a.subscribe(new a(hVar));
    }
}
