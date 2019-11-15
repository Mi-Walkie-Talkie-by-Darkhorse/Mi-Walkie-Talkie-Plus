package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.b.g;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableScalarXMap {

    public static final class ScalarDisposable<T> extends AtomicInteger implements b<T>, Runnable {
        private static final long serialVersionUID = 3880992722410194083L;
        final q<? super T> a;
        final T b;

        public ScalarDisposable(q<? super T> qVar, T t) {
            this.a = qVar;
            this.b = t;
        }

        public boolean a(T t) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Nullable
        public T e_() throws Exception {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.b;
        }

        public boolean b() {
            return get() != 1;
        }

        public void c() {
            lazySet(3);
        }

        public void dispose() {
            set(3);
        }

        public boolean isDisposed() {
            return get() == 3;
        }

        public int a(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            lazySet(1);
            return 1;
        }

        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.a.onNext(this.b);
                if (get() == 2) {
                    lazySet(3);
                    this.a.onComplete();
                }
            }
        }
    }

    static final class a<T, R> extends k<R> {
        final T a;
        final g<? super T, ? extends o<? extends R>> b;

        a(T t, g<? super T, ? extends o<? extends R>> gVar) {
            this.a = t;
            this.b = gVar;
        }

        public void subscribeActual(q<? super R> qVar) {
            try {
                o oVar = (o) io.reactivex.internal.functions.a.a(this.b.apply(this.a), "The mapper returned a null ObservableSource");
                if (oVar instanceof Callable) {
                    try {
                        Object call = ((Callable) oVar).call();
                        if (call == null) {
                            EmptyDisposable.a(qVar);
                            return;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(qVar, call);
                        qVar.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        EmptyDisposable.a(th, qVar);
                    }
                } else {
                    oVar.subscribe(qVar);
                }
            } catch (Throwable th2) {
                EmptyDisposable.a(th2, qVar);
            }
        }
    }

    public static <T, R> boolean a(o<T> oVar, q<? super R> qVar, g<? super T, ? extends o<? extends R>> gVar) {
        if (!(oVar instanceof Callable)) {
            return false;
        }
        try {
            Object call = ((Callable) oVar).call();
            if (call == null) {
                EmptyDisposable.a(qVar);
                return true;
            }
            try {
                o oVar2 = (o) io.reactivex.internal.functions.a.a(gVar.apply(call), "The mapper returned a null ObservableSource");
                if (oVar2 instanceof Callable) {
                    try {
                        Object call2 = ((Callable) oVar2).call();
                        if (call2 == null) {
                            EmptyDisposable.a(qVar);
                            return true;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(qVar, call2);
                        qVar.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        EmptyDisposable.a(th, qVar);
                        return true;
                    }
                } else {
                    oVar2.subscribe(qVar);
                }
                return true;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptyDisposable.a(th2, qVar);
                return true;
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            EmptyDisposable.a(th3, qVar);
            return true;
        }
    }

    public static <T, U> k<U> a(T t, g<? super T, ? extends o<? extends U>> gVar) {
        return io.reactivex.d.a.a((k<T>) new a<T>(t, gVar));
    }
}
