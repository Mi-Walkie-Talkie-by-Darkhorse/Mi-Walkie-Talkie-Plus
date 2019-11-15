package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.b.p;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableFilter */
public final class ah<T> extends a<T, T> {
    final p<? super T> b;

    /* compiled from: ObservableFilter */
    static final class a<T> extends io.reactivex.internal.observers.a<T, T> {
        final p<? super T> f;

        a(q<? super T> qVar, p<? super T> pVar) {
            super(qVar);
            this.f = pVar;
        }

        public void onNext(T t) {
            if (this.e == 0) {
                try {
                    if (this.f.test(t)) {
                        this.a.onNext(t);
                    }
                } catch (Throwable th) {
                    a(th);
                }
            } else {
                this.a.onNext(null);
            }
        }

        public int a(int i) {
            return b(i);
        }

        @Nullable
        public T e_() throws Exception {
            T e_;
            do {
                e_ = this.c.e_();
                if (e_ == null) {
                    break;
                }
            } while (!this.f.test(e_));
            return e_;
        }
    }

    public ah(o<T> oVar, p<? super T> pVar) {
        super(oVar);
        this.b = pVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar, this.b));
    }
}
