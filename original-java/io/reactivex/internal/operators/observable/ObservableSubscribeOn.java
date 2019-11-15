package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableSubscribeOn<T> extends a<T, T> {
    final r b;

    static final class SubscribeOnObserver<T> extends AtomicReference<b> implements b, q<T> {
        private static final long serialVersionUID = 8094547886072529208L;
        final q<? super T> a;
        final AtomicReference<b> b = new AtomicReference<>();

        SubscribeOnObserver(q<? super T> qVar) {
            this.a = qVar;
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this.b, bVar);
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            this.a.onComplete();
        }

        public void dispose() {
            DisposableHelper.a(this.b);
            DisposableHelper.a((AtomicReference<b>) this);
        }

        public boolean isDisposed() {
            return DisposableHelper.a((b) get());
        }

        /* access modifiers changed from: 0000 */
        public void a(b bVar) {
            DisposableHelper.b(this, bVar);
        }
    }

    final class a implements Runnable {
        private final SubscribeOnObserver<T> b;

        a(SubscribeOnObserver<T> subscribeOnObserver) {
            this.b = subscribeOnObserver;
        }

        public void run() {
            ObservableSubscribeOn.this.a.subscribe(this.b);
        }
    }

    public ObservableSubscribeOn(o<T> oVar, r rVar) {
        super(oVar);
        this.b = rVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(qVar);
        qVar.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.a(this.b.a((Runnable) new a(subscribeOnObserver)));
    }
}
