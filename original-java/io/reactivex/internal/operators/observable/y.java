package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.b.d;
import io.reactivex.b.g;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableDistinctUntilChanged */
public final class y<T, K> extends a<T, T> {
    final g<? super T, K> b;
    final d<? super K, ? super K> c;

    /* compiled from: ObservableDistinctUntilChanged */
    static final class a<T, K> extends io.reactivex.internal.observers.a<T, T> {
        final g<? super T, K> f;
        final d<? super K, ? super K> g;
        K h;
        boolean i;

        a(q<? super T> qVar, g<? super T, K> gVar, d<? super K, ? super K> dVar) {
            super(qVar);
            this.f = gVar;
            this.g = dVar;
        }

        public void onNext(T t) {
            if (!this.d) {
                if (this.e != 0) {
                    this.a.onNext(t);
                    return;
                }
                try {
                    K apply = this.f.apply(t);
                    if (this.i) {
                        boolean a = this.g.a(this.h, apply);
                        this.h = apply;
                        if (a) {
                            return;
                        }
                    } else {
                        this.i = true;
                        this.h = apply;
                    }
                    this.a.onNext(t);
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        public int a(int i2) {
            return b(i2);
        }

        @Nullable
        public T e_() throws Exception {
            while (true) {
                T e_ = this.c.e_();
                if (e_ == null) {
                    return null;
                }
                K apply = this.f.apply(e_);
                if (!this.i) {
                    this.i = true;
                    this.h = apply;
                    return e_;
                } else if (!this.g.a(this.h, apply)) {
                    this.h = apply;
                    return e_;
                } else {
                    this.h = apply;
                }
            }
        }
    }

    public y(o<T> oVar, g<? super T, K> gVar, d<? super K, ? super K> dVar) {
        super(oVar);
        this.b = gVar;
        this.c = dVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar, this.b, this.c));
    }
}
