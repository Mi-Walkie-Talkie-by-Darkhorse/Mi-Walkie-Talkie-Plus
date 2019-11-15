package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableAmb<T> extends k<T> {
    final o<? extends T>[] a;
    final Iterable<? extends o<? extends T>> b;

    static final class AmbInnerObserver<T> extends AtomicReference<b> implements q<T> {
        private static final long serialVersionUID = -1185974347409665484L;
        final a<T> a;
        final int b;
        final q<? super T> c;
        boolean d;

        AmbInnerObserver(a<T> aVar, int i, q<? super T> qVar) {
            this.a = aVar;
            this.b = i;
            this.c = qVar;
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this, bVar);
        }

        public void onNext(T t) {
            if (this.d) {
                this.c.onNext(t);
            } else if (this.a.a(this.b)) {
                this.d = true;
                this.c.onNext(t);
            } else {
                ((b) get()).dispose();
            }
        }

        public void onError(Throwable th) {
            if (this.d) {
                this.c.onError(th);
            } else if (this.a.a(this.b)) {
                this.d = true;
                this.c.onError(th);
            } else {
                io.reactivex.d.a.a(th);
            }
        }

        public void onComplete() {
            if (this.d) {
                this.c.onComplete();
            } else if (this.a.a(this.b)) {
                this.d = true;
                this.c.onComplete();
            }
        }

        public void a() {
            DisposableHelper.a((AtomicReference<b>) this);
        }
    }

    static final class a<T> implements b {
        final q<? super T> a;
        final AmbInnerObserver<T>[] b;
        final AtomicInteger c = new AtomicInteger();

        a(q<? super T> qVar, int i) {
            this.a = qVar;
            this.b = new AmbInnerObserver[i];
        }

        public void a(o<? extends T>[] oVarArr) {
            AmbInnerObserver<T>[] ambInnerObserverArr = this.b;
            int length = ambInnerObserverArr.length;
            for (int i = 0; i < length; i++) {
                ambInnerObserverArr[i] = new AmbInnerObserver<>(this, i + 1, this.a);
            }
            this.c.lazySet(0);
            this.a.onSubscribe(this);
            for (int i2 = 0; i2 < length && this.c.get() == 0; i2++) {
                oVarArr[i2].subscribe(ambInnerObserverArr[i2]);
            }
        }

        public boolean a(int i) {
            int i2 = this.c.get();
            if (i2 == 0) {
                if (!this.c.compareAndSet(0, i)) {
                    return false;
                }
                AmbInnerObserver<T>[] ambInnerObserverArr = this.b;
                int length = ambInnerObserverArr.length;
                for (int i3 = 0; i3 < length; i3++) {
                    if (i3 + 1 != i) {
                        ambInnerObserverArr[i3].a();
                    }
                }
                return true;
            } else if (i2 != i) {
                return false;
            } else {
                return true;
            }
        }

        public void dispose() {
            if (this.c.get() != -1) {
                this.c.lazySet(-1);
                for (AmbInnerObserver<T> a2 : this.b) {
                    a2.a();
                }
            }
        }

        public boolean isDisposed() {
            return this.c.get() == -1;
        }
    }

    public ObservableAmb(o<? extends T>[] oVarArr, Iterable<? extends o<? extends T>> iterable) {
        this.a = oVarArr;
        this.b = iterable;
    }

    public void subscribeActual(q<? super T> qVar) {
        int length;
        o<? extends T>[] oVarArr;
        o<? extends T>[] oVarArr2 = this.a;
        if (oVarArr2 == null) {
            o<? extends T>[] oVarArr3 = new k[8];
            try {
                int i = 0;
                for (o<? extends T> oVar : this.b) {
                    if (oVar == null) {
                        EmptyDisposable.a((Throwable) new NullPointerException("One of the sources is null"), qVar);
                        return;
                    }
                    if (i == oVarArr3.length) {
                        oVarArr = new o[((i >> 2) + i)];
                        System.arraycopy(oVarArr3, 0, oVarArr, 0, i);
                    } else {
                        oVarArr = oVarArr3;
                    }
                    int i2 = i + 1;
                    oVarArr[i] = oVar;
                    i = i2;
                    oVarArr3 = oVarArr;
                }
                length = i;
                oVarArr2 = oVarArr3;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.a(th, qVar);
                return;
            }
        } else {
            length = oVarArr2.length;
        }
        if (length == 0) {
            EmptyDisposable.a(qVar);
        } else if (length == 1) {
            oVarArr2[0].subscribe(qVar);
        } else {
            new a(qVar, length).a(oVarArr2);
        }
    }
}
