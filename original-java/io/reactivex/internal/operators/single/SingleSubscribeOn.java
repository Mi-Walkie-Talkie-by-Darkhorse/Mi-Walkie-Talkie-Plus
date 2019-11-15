package io.reactivex.internal.operators.single;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.r;
import io.reactivex.s;
import io.reactivex.t;
import io.reactivex.u;
import java.util.concurrent.atomic.AtomicReference;

public final class SingleSubscribeOn<T> extends s<T> {
    final u<? extends T> a;
    final r b;

    static final class SubscribeOnObserver<T> extends AtomicReference<b> implements b, t<T>, Runnable {
        private static final long serialVersionUID = 7000911171163930287L;
        final t<? super T> a;
        final SequentialDisposable b = new SequentialDisposable();
        final u<? extends T> c;

        SubscribeOnObserver(t<? super T> tVar, u<? extends T> uVar) {
            this.a = tVar;
            this.c = uVar;
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this, bVar);
        }

        public void a(T t) {
            this.a.a(t);
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void dispose() {
            DisposableHelper.a((AtomicReference<b>) this);
            this.b.dispose();
        }

        public boolean isDisposed() {
            return DisposableHelper.a((b) get());
        }

        public void run() {
            this.c.a(this);
        }
    }

    public SingleSubscribeOn(u<? extends T> uVar, r rVar) {
        this.a = uVar;
        this.b = rVar;
    }

    /* access modifiers changed from: protected */
    public void b(t<? super T> tVar) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(tVar, this.a);
        tVar.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.b.b(this.b.a((Runnable) subscribeOnObserver));
    }
}
