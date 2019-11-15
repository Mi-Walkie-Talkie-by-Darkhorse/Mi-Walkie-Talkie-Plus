package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;
import java.util.ArrayDeque;

public final class ObservableTakeLast<T> extends a<T, T> {
    final int b;

    static final class TakeLastObserver<T> extends ArrayDeque<T> implements b, q<T> {
        private static final long serialVersionUID = 7240042530241604978L;
        final q<? super T> a;
        final int b;
        b c;
        volatile boolean d;

        TakeLastObserver(q<? super T> qVar, int i) {
            this.a = qVar;
            this.b = i;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (this.b == size()) {
                poll();
            }
            offer(t);
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            q<? super T> qVar = this.a;
            while (!this.d) {
                Object poll = poll();
                if (poll != null) {
                    qVar.onNext(poll);
                } else if (!this.d) {
                    qVar.onComplete();
                    return;
                } else {
                    return;
                }
            }
        }

        public void dispose() {
            if (!this.d) {
                this.d = true;
                this.c.dispose();
            }
        }

        public boolean isDisposed() {
            return this.d;
        }
    }

    public ObservableTakeLast(o<T> oVar, int i) {
        super(oVar);
        this.b = i;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new TakeLastObserver(qVar, this.b));
    }
}
