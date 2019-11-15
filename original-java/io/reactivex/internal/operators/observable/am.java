package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.observers.b;
import io.reactivex.k;
import io.reactivex.q;
import java.util.Iterator;

/* compiled from: ObservableFromIterable */
public final class am<T> extends k<T> {
    final Iterable<? extends T> a;

    /* compiled from: ObservableFromIterable */
    static final class a<T> extends b<T> {
        final q<? super T> a;
        final Iterator<? extends T> b;
        volatile boolean c;
        boolean d;
        boolean e;
        boolean f;

        a(q<? super T> qVar, Iterator<? extends T> it) {
            this.a = qVar;
            this.b = it;
        }

        /* access modifiers changed from: 0000 */
        public void d() {
            while (!isDisposed()) {
                try {
                    this.a.onNext(io.reactivex.internal.functions.a.a(this.b.next(), "The iterator returned a null value"));
                    if (!isDisposed()) {
                        try {
                            if (!this.b.hasNext()) {
                                if (!isDisposed()) {
                                    this.a.onComplete();
                                    return;
                                }
                                return;
                            }
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.a.onError(th);
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.a.onError(th2);
                    return;
                }
            }
        }

        public int a(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.d = true;
            return 1;
        }

        @Nullable
        public T e_() {
            if (this.e) {
                return null;
            }
            if (!this.f) {
                this.f = true;
            } else if (!this.b.hasNext()) {
                this.e = true;
                return null;
            }
            return io.reactivex.internal.functions.a.a(this.b.next(), "The iterator returned a null value");
        }

        public boolean b() {
            return this.e;
        }

        public void c() {
            this.e = true;
        }

        public void dispose() {
            this.c = true;
        }

        public boolean isDisposed() {
            return this.c;
        }
    }

    public am(Iterable<? extends T> iterable) {
        this.a = iterable;
    }

    public void subscribeActual(q<? super T> qVar) {
        try {
            Iterator it = this.a.iterator();
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.a(qVar);
                    return;
                }
                a aVar = new a(qVar, it);
                qVar.onSubscribe(aVar);
                if (!aVar.d) {
                    aVar.d();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.a(th, qVar);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.a(th2, qVar);
        }
    }
}
