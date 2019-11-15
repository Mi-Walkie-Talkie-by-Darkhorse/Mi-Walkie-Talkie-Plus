package io.reactivex.internal.operators.single;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.r;
import io.reactivex.s;
import io.reactivex.t;
import io.reactivex.u;
import java.util.concurrent.atomic.AtomicReference;

public final class SingleObserveOn<T> extends s<T> {
    final u<T> a;
    final r b;

    static final class ObserveOnSingleObserver<T> extends AtomicReference<b> implements b, t<T>, Runnable {
        private static final long serialVersionUID = 3528003840217436037L;
        final t<? super T> a;
        final r b;
        T c;
        Throwable d;

        ObserveOnSingleObserver(t<? super T> tVar, r rVar) {
            this.a = tVar;
            this.b = rVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.b(this, bVar)) {
                this.a.onSubscribe(this);
            }
        }

        public void a(T t) {
            this.c = t;
            DisposableHelper.c(this, this.b.a((Runnable) this));
        }

        public void onError(Throwable th) {
            this.d = th;
            DisposableHelper.c(this, this.b.a((Runnable) this));
        }

        public void run() {
            Throwable th = this.d;
            if (th != null) {
                this.a.onError(th);
            } else {
                this.a.a(this.c);
            }
        }

        public void dispose() {
            DisposableHelper.a((AtomicReference<b>) this);
        }

        public boolean isDisposed() {
            return DisposableHelper.a((b) get());
        }
    }

    public SingleObserveOn(u<T> uVar, r rVar) {
        this.a = uVar;
        this.b = rVar;
    }

    /* access modifiers changed from: protected */
    public void b(t<? super T> tVar) {
        this.a.a(new ObserveOnSingleObserver(tVar, this.b));
    }
}
