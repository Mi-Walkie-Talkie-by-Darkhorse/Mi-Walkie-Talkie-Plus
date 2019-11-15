package io.reactivex.internal.operators.observable;

import io.reactivex.b.f;
import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ObservableUsing<T, D> extends k<T> {
    final Callable<? extends D> a;
    final g<? super D, ? extends o<? extends T>> b;
    final f<? super D> c;
    final boolean d;

    static final class UsingObserver<T, D> extends AtomicBoolean implements b, q<T> {
        private static final long serialVersionUID = 5904473792286235046L;
        final q<? super T> a;
        final D b;
        final f<? super D> c;
        final boolean d;
        b e;

        UsingObserver(q<? super T> qVar, D d2, f<? super D> fVar, boolean z) {
            this.a = qVar;
            this.b = d2;
            this.c = fVar;
            this.d = z;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.e, bVar)) {
                this.e = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            if (this.d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.c.accept(this.b);
                    } catch (Throwable th2) {
                        Throwable th3 = th2;
                        a.b(th3);
                        th = new CompositeException(th, th3);
                    }
                }
                this.e.dispose();
                this.a.onError(th);
                return;
            }
            this.a.onError(th);
            this.e.dispose();
            a();
        }

        public void onComplete() {
            if (this.d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.c.accept(this.b);
                    } catch (Throwable th) {
                        a.b(th);
                        this.a.onError(th);
                        return;
                    }
                }
                this.e.dispose();
                this.a.onComplete();
                return;
            }
            this.a.onComplete();
            this.e.dispose();
            a();
        }

        public void dispose() {
            a();
            this.e.dispose();
        }

        public boolean isDisposed() {
            return get();
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.c.accept(this.b);
                } catch (Throwable th) {
                    a.b(th);
                    io.reactivex.d.a.a(th);
                }
            }
        }
    }

    public ObservableUsing(Callable<? extends D> callable, g<? super D, ? extends o<? extends T>> gVar, f<? super D> fVar, boolean z) {
        this.a = callable;
        this.b = gVar;
        this.c = fVar;
        this.d = z;
    }

    public void subscribeActual(q<? super T> qVar) {
        try {
            Object call = this.a.call();
            try {
                ((o) io.reactivex.internal.functions.a.a(this.b.apply(call), "The sourceSupplier returned a null ObservableSource")).subscribe(new UsingObserver(qVar, call, this.c, this.d));
            } catch (Throwable th) {
                a.b(th);
                EmptyDisposable.a((Throwable) new CompositeException(th, th), qVar);
            }
        } catch (Throwable th2) {
            a.b(th2);
            EmptyDisposable.a(th2, qVar);
        }
    }
}
