package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ObservableUnsubscribeOn<T> extends a<T, T> {
    final r b;

    static final class UnsubscribeObserver<T> extends AtomicBoolean implements b, q<T> {
        private static final long serialVersionUID = 1015244841293359600L;
        final q<? super T> a;
        final r b;
        b c;

        final class a implements Runnable {
            a() {
            }

            public void run() {
                UnsubscribeObserver.this.c.dispose();
            }
        }

        UnsubscribeObserver(q<? super T> qVar, r rVar) {
            this.a = qVar;
            this.b = rVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (!get()) {
                this.a.onNext(t);
            }
        }

        public void onError(Throwable th) {
            if (get()) {
                io.reactivex.d.a.a(th);
            } else {
                this.a.onError(th);
            }
        }

        public void onComplete() {
            if (!get()) {
                this.a.onComplete();
            }
        }

        public void dispose() {
            if (compareAndSet(false, true)) {
                this.b.a((Runnable) new a());
            }
        }

        public boolean isDisposed() {
            return get();
        }
    }

    public ObservableUnsubscribeOn(o<T> oVar, r rVar) {
        super(oVar);
        this.b = rVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new UnsubscribeObserver(qVar, this.b));
    }
}
