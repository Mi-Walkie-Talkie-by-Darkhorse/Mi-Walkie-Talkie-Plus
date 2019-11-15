package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Experimental;
import io.reactivex.annotations.Nullable;
import io.reactivex.b.f;
import io.reactivex.o;
import io.reactivex.q;

@Experimental
/* compiled from: ObservableDoAfterNext */
public final class z<T> extends a<T, T> {
    final f<? super T> b;

    /* compiled from: ObservableDoAfterNext */
    static final class a<T> extends io.reactivex.internal.observers.a<T, T> {
        final f<? super T> f;

        a(q<? super T> qVar, f<? super T> fVar) {
            super(qVar);
            this.f = fVar;
        }

        public void onNext(T t) {
            this.a.onNext(t);
            if (this.e == 0) {
                try {
                    this.f.accept(t);
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        public int a(int i) {
            return b(i);
        }

        @Nullable
        public T e_() throws Exception {
            T e_ = this.c.e_();
            if (e_ != null) {
                this.f.accept(e_);
            }
            return e_;
        }
    }

    public z(o<T> oVar, f<? super T> fVar) {
        super(oVar);
        this.b = fVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar, this.b));
    }
}
