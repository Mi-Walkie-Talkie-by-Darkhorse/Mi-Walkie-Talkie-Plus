package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.j;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableDematerialize */
public final class v<T> extends a<j<T>, T> {

    /* compiled from: ObservableDematerialize */
    static final class a<T> implements b, q<j<T>> {
        final q<? super T> a;
        boolean b;
        b c;

        a(q<? super T> qVar) {
            this.a = qVar;
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

        /* renamed from: a */
        public void onNext(j<T> jVar) {
            if (this.b) {
                if (jVar.b()) {
                    io.reactivex.d.a.a(jVar.e());
                }
            } else if (jVar.b()) {
                this.c.dispose();
                onError(jVar.e());
            } else if (jVar.a()) {
                this.c.dispose();
                onComplete();
            } else {
                this.a.onNext(jVar.d());
            }
        }

        public void onError(Throwable th) {
            if (this.b) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.b = true;
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.b) {
                this.b = true;
                this.a.onComplete();
            }
        }
    }

    public v(o<j<T>> oVar) {
        super(oVar);
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar));
    }
}
