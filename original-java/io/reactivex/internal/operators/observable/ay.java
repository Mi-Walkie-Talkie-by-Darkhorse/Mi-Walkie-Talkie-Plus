package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.b.g;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableMap */
public final class ay<T, U> extends a<T, U> {
    final g<? super T, ? extends U> b;

    /* compiled from: ObservableMap */
    static final class a<T, U> extends io.reactivex.internal.observers.a<T, U> {
        final g<? super T, ? extends U> f;

        a(q<? super U> qVar, g<? super T, ? extends U> gVar) {
            super(qVar);
            this.f = gVar;
        }

        public void onNext(T t) {
            if (!this.d) {
                if (this.e != 0) {
                    this.a.onNext(null);
                    return;
                }
                try {
                    this.a.onNext(io.reactivex.internal.functions.a.a(this.f.apply(t), "The mapper function returned a null value."));
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        public int a(int i) {
            return b(i);
        }

        @Nullable
        public U e_() throws Exception {
            Object e_ = this.c.e_();
            if (e_ != null) {
                return io.reactivex.internal.functions.a.a(this.f.apply(e_), "The mapper function returned a null value.");
            }
            return null;
        }
    }

    public ay(o<T> oVar, g<? super T, ? extends U> gVar) {
        super(oVar);
        this.b = gVar;
    }

    public void subscribeActual(q<? super U> qVar) {
        this.a.subscribe(new a(qVar, this.b));
    }
}
