package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.b.g;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.o;
import io.reactivex.q;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: ObservableDistinct */
public final class x<T, K> extends a<T, T> {
    final g<? super T, K> b;
    final Callable<? extends Collection<? super K>> c;

    /* compiled from: ObservableDistinct */
    static final class a<T, K> extends io.reactivex.internal.observers.a<T, T> {
        final Collection<? super K> f;
        final g<? super T, K> g;

        a(q<? super T> qVar, g<? super T, K> gVar, Collection<? super K> collection) {
            super(qVar);
            this.g = gVar;
            this.f = collection;
        }

        public void onNext(T t) {
            if (!this.d) {
                if (this.e == 0) {
                    try {
                        if (this.f.add(io.reactivex.internal.functions.a.a(this.g.apply(t), "The keySelector returned a null key"))) {
                            this.a.onNext(t);
                        }
                    } catch (Throwable th) {
                        a(th);
                    }
                } else {
                    this.a.onNext(null);
                }
            }
        }

        public void onError(Throwable th) {
            if (this.d) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.d = true;
            this.f.clear();
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f.clear();
                this.a.onComplete();
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
            } while (!this.f.add(io.reactivex.internal.functions.a.a(this.g.apply(e_), "The keySelector returned a null key")));
            return e_;
        }

        public void c() {
            this.f.clear();
            super.c();
        }
    }

    public x(o<T> oVar, g<? super T, K> gVar, Callable<? extends Collection<? super K>> callable) {
        super(oVar);
        this.b = gVar;
        this.c = callable;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        try {
            this.a.subscribe(new a(qVar, this.b, (Collection) io.reactivex.internal.functions.a.a(this.c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.a(th, qVar);
        }
    }
}
