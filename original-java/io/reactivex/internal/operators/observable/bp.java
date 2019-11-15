package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableSwitchIfEmpty */
public final class bp<T> extends a<T, T> {
    final o<? extends T> b;

    /* compiled from: ObservableSwitchIfEmpty */
    static final class a<T> implements q<T> {
        final q<? super T> a;
        final o<? extends T> b;
        final SequentialDisposable c = new SequentialDisposable();
        boolean d = true;

        a(q<? super T> qVar, o<? extends T> oVar) {
            this.a = qVar;
            this.b = oVar;
        }

        public void onSubscribe(b bVar) {
            this.c.a(bVar);
        }

        public void onNext(T t) {
            if (this.d) {
                this.d = false;
            }
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            if (this.d) {
                this.d = false;
                this.b.subscribe(this);
                return;
            }
            this.a.onComplete();
        }
    }

    public bp(o<T> oVar, o<? extends T> oVar2) {
        super(oVar);
        this.b = oVar2;
    }

    public void subscribeActual(q<? super T> qVar) {
        a aVar = new a(qVar, this.b);
        qVar.onSubscribe(aVar.c);
        this.a.subscribe(aVar);
    }
}
