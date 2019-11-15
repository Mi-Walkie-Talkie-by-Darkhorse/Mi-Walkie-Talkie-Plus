package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;
import java.util.ArrayDeque;

public final class ObservableSkipLast<T> extends a<T, T> {
    final int b;

    static final class SkipLastObserver<T> extends ArrayDeque<T> implements b, q<T> {
        private static final long serialVersionUID = -3807491841935125653L;
        final q<? super T> a;
        final int b;
        b c;

        SkipLastObserver(q<? super T> qVar, int i) {
            super(i);
            this.a = qVar;
            this.b = i;
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
            if (this.b == size()) {
                this.a.onNext(poll());
            }
            offer(t);
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            this.a.onComplete();
        }
    }

    public ObservableSkipLast(o<T> oVar, int i) {
        super(oVar);
        this.b = i;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new SkipLastObserver(qVar, this.b));
    }
}
