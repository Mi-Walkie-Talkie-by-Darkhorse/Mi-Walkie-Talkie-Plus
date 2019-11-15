package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.observers.h;
import io.reactivex.o;
import io.reactivex.observers.c;
import io.reactivex.observers.e;
import io.reactivex.q;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableTimeout<T, U, V> extends a<T, T> {
    final o<U> b;
    final g<? super T, ? extends o<V>> c;
    final o<? extends T> d;

    static final class TimeoutObserver<T, U, V> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b, a, q<T> {
        private static final long serialVersionUID = 2672739326310051084L;
        final q<? super T> a;
        final o<U> b;
        final g<? super T, ? extends o<V>> c;
        io.reactivex.disposables.b d;
        volatile long e;

        TimeoutObserver(q<? super T> qVar, o<U> oVar, g<? super T, ? extends o<V>> gVar) {
            this.a = qVar;
            this.b = oVar;
            this.c = gVar;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.d, bVar)) {
                this.d = bVar;
                q<? super T> qVar = this.a;
                o<U> oVar = this.b;
                if (oVar != null) {
                    b bVar2 = new b(this, 0);
                    if (compareAndSet(null, bVar2)) {
                        qVar.onSubscribe(this);
                        oVar.subscribe(bVar2);
                        return;
                    }
                    return;
                }
                qVar.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            long j = 1 + this.e;
            this.e = j;
            this.a.onNext(t);
            io.reactivex.disposables.b bVar = (io.reactivex.disposables.b) get();
            if (bVar != null) {
                bVar.dispose();
            }
            try {
                o oVar = (o) io.reactivex.internal.functions.a.a(this.c.apply(t), "The ObservableSource returned is null");
                b bVar2 = new b(this, j);
                if (compareAndSet(bVar, bVar2)) {
                    oVar.subscribe(bVar2);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                this.a.onError(th);
            }
        }

        public void onError(Throwable th) {
            DisposableHelper.a((AtomicReference<io.reactivex.disposables.b>) this);
            this.a.onError(th);
        }

        public void onComplete() {
            DisposableHelper.a((AtomicReference<io.reactivex.disposables.b>) this);
            this.a.onComplete();
        }

        public void dispose() {
            if (DisposableHelper.a((AtomicReference<io.reactivex.disposables.b>) this)) {
                this.d.dispose();
            }
        }

        public boolean isDisposed() {
            return this.d.isDisposed();
        }

        public void a(long j) {
            if (j == this.e) {
                dispose();
                this.a.onError(new TimeoutException());
            }
        }

        public void a(Throwable th) {
            this.d.dispose();
            this.a.onError(th);
        }
    }

    static final class TimeoutOtherObserver<T, U, V> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b, a, q<T> {
        private static final long serialVersionUID = -1957813281749686898L;
        final q<? super T> a;
        final o<U> b;
        final g<? super T, ? extends o<V>> c;
        final o<? extends T> d;
        final f<T> e;
        io.reactivex.disposables.b f;
        boolean g;
        volatile long h;

        TimeoutOtherObserver(q<? super T> qVar, o<U> oVar, g<? super T, ? extends o<V>> gVar, o<? extends T> oVar2) {
            this.a = qVar;
            this.b = oVar;
            this.c = gVar;
            this.d = oVar2;
            this.e = new f<>(qVar, this, 8);
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.f, bVar)) {
                this.f = bVar;
                this.e.a(bVar);
                q<? super T> qVar = this.a;
                o<U> oVar = this.b;
                if (oVar != null) {
                    b bVar2 = new b(this, 0);
                    if (compareAndSet(null, bVar2)) {
                        qVar.onSubscribe(this.e);
                        oVar.subscribe(bVar2);
                        return;
                    }
                    return;
                }
                qVar.onSubscribe(this.e);
            }
        }

        public void onNext(T t) {
            if (!this.g) {
                long j = 1 + this.h;
                this.h = j;
                if (this.e.a(t, this.f)) {
                    io.reactivex.disposables.b bVar = (io.reactivex.disposables.b) get();
                    if (bVar != null) {
                        bVar.dispose();
                    }
                    try {
                        o oVar = (o) io.reactivex.internal.functions.a.a(this.c.apply(t), "The ObservableSource returned is null");
                        b bVar2 = new b(this, j);
                        if (compareAndSet(bVar, bVar2)) {
                            oVar.subscribe(bVar2);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.a.onError(th);
                    }
                }
            }
        }

        public void onError(Throwable th) {
            if (this.g) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.g = true;
            dispose();
            this.e.a(th, this.f);
        }

        public void onComplete() {
            if (!this.g) {
                this.g = true;
                dispose();
                this.e.b(this.f);
            }
        }

        public void dispose() {
            if (DisposableHelper.a((AtomicReference<io.reactivex.disposables.b>) this)) {
                this.f.dispose();
            }
        }

        public boolean isDisposed() {
            return this.f.isDisposed();
        }

        public void a(long j) {
            if (j == this.h) {
                dispose();
                this.d.subscribe(new h(this.e));
            }
        }

        public void a(Throwable th) {
            this.f.dispose();
            this.a.onError(th);
        }
    }

    interface a {
        void a(long j);

        void a(Throwable th);
    }

    static final class b<T, U, V> extends c<Object> {
        final a a;
        final long b;
        boolean c;

        b(a aVar, long j) {
            this.a = aVar;
            this.b = j;
        }

        public void onNext(Object obj) {
            if (!this.c) {
                this.c = true;
                dispose();
                this.a.a(this.b);
            }
        }

        public void onError(Throwable th) {
            if (this.c) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.c = true;
            this.a.a(th);
        }

        public void onComplete() {
            if (!this.c) {
                this.c = true;
                this.a.a(this.b);
            }
        }
    }

    public ObservableTimeout(o<T> oVar, o<U> oVar2, g<? super T, ? extends o<V>> gVar, o<? extends T> oVar3) {
        super(oVar);
        this.b = oVar2;
        this.c = gVar;
        this.d = oVar3;
    }

    public void subscribeActual(q<? super T> qVar) {
        if (this.d == null) {
            this.a.subscribe(new TimeoutObserver(new e(qVar), this.b, this.c));
        } else {
            this.a.subscribe(new TimeoutOtherObserver(qVar, this.b, this.c, this.d));
        }
    }
}
