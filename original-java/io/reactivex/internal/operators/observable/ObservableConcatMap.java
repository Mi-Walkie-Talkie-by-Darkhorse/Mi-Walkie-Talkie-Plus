package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableConcatMap<T, U> extends a<T, U> {
    final g<? super T, ? extends o<? extends U>> b;
    final int c;
    final ErrorMode d;

    static final class ConcatMapDelayErrorObserver<T, R> extends AtomicInteger implements b, q<T> {
        private static final long serialVersionUID = -6951100001833242599L;
        final q<? super R> a;
        final g<? super T, ? extends o<? extends R>> b;
        final int c;
        final AtomicThrowable d = new AtomicThrowable();
        final a<R> e;
        final SequentialDisposable f;
        final boolean g;
        io.reactivex.internal.a.g<T> h;
        b i;
        volatile boolean j;
        volatile boolean k;
        volatile boolean l;
        int m;

        static final class a<R> implements q<R> {
            final q<? super R> a;
            final ConcatMapDelayErrorObserver<?, R> b;

            a(q<? super R> qVar, ConcatMapDelayErrorObserver<?, R> concatMapDelayErrorObserver) {
                this.a = qVar;
                this.b = concatMapDelayErrorObserver;
            }

            public void onSubscribe(b bVar) {
                this.b.f.b(bVar);
            }

            public void onNext(R r) {
                this.a.onNext(r);
            }

            public void onError(Throwable th) {
                ConcatMapDelayErrorObserver<?, R> concatMapDelayErrorObserver = this.b;
                if (concatMapDelayErrorObserver.d.a(th)) {
                    if (!concatMapDelayErrorObserver.g) {
                        concatMapDelayErrorObserver.i.dispose();
                    }
                    concatMapDelayErrorObserver.j = false;
                    concatMapDelayErrorObserver.a();
                    return;
                }
                io.reactivex.d.a.a(th);
            }

            public void onComplete() {
                ConcatMapDelayErrorObserver<?, R> concatMapDelayErrorObserver = this.b;
                concatMapDelayErrorObserver.j = false;
                concatMapDelayErrorObserver.a();
            }
        }

        ConcatMapDelayErrorObserver(q<? super R> qVar, g<? super T, ? extends o<? extends R>> gVar, int i2, boolean z) {
            this.a = qVar;
            this.b = gVar;
            this.c = i2;
            this.g = z;
            this.e = new a<>(qVar, this);
            this.f = new SequentialDisposable();
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.i, bVar)) {
                this.i = bVar;
                if (bVar instanceof io.reactivex.internal.a.b) {
                    io.reactivex.internal.a.b bVar2 = (io.reactivex.internal.a.b) bVar;
                    int a2 = bVar2.a(3);
                    if (a2 == 1) {
                        this.m = a2;
                        this.h = bVar2;
                        this.k = true;
                        this.a.onSubscribe(this);
                        a();
                        return;
                    } else if (a2 == 2) {
                        this.m = a2;
                        this.h = bVar2;
                        this.a.onSubscribe(this);
                        return;
                    }
                }
                this.h = new io.reactivex.internal.queue.a(this.c);
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (this.m == 0) {
                this.h.a(t);
            }
            a();
        }

        public void onError(Throwable th) {
            if (this.d.a(th)) {
                this.k = true;
                a();
                return;
            }
            io.reactivex.d.a.a(th);
        }

        public void onComplete() {
            this.k = true;
            a();
        }

        public boolean isDisposed() {
            return this.l;
        }

        public void dispose() {
            this.l = true;
            this.i.dispose();
            this.f.dispose();
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            if (getAndIncrement() == 0) {
                q<? super R> qVar = this.a;
                io.reactivex.internal.a.g<T> gVar = this.h;
                AtomicThrowable atomicThrowable = this.d;
                while (true) {
                    if (!this.j) {
                        if (this.l) {
                            gVar.c();
                            return;
                        } else if (this.g || ((Throwable) atomicThrowable.get()) == null) {
                            boolean z = this.k;
                            try {
                                Object e_ = gVar.e_();
                                boolean z2 = e_ == null;
                                if (z && z2) {
                                    this.l = true;
                                    Throwable a2 = atomicThrowable.a();
                                    if (a2 != null) {
                                        qVar.onError(a2);
                                        return;
                                    } else {
                                        qVar.onComplete();
                                        return;
                                    }
                                } else if (!z2) {
                                    try {
                                        o oVar = (o) io.reactivex.internal.functions.a.a(this.b.apply(e_), "The mapper returned a null ObservableSource");
                                        if (oVar instanceof Callable) {
                                            try {
                                                Object call = ((Callable) oVar).call();
                                                if (call != null && !this.l) {
                                                    qVar.onNext(call);
                                                }
                                            } catch (Throwable th) {
                                                io.reactivex.exceptions.a.b(th);
                                                atomicThrowable.a(th);
                                            }
                                        } else {
                                            this.j = true;
                                            oVar.subscribe(this.e);
                                        }
                                    } catch (Throwable th2) {
                                        io.reactivex.exceptions.a.b(th2);
                                        this.l = true;
                                        this.i.dispose();
                                        gVar.c();
                                        atomicThrowable.a(th2);
                                        qVar.onError(atomicThrowable.a());
                                        return;
                                    }
                                }
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                this.l = true;
                                this.i.dispose();
                                atomicThrowable.a(th3);
                                qVar.onError(atomicThrowable.a());
                                return;
                            }
                        } else {
                            gVar.c();
                            this.l = true;
                            qVar.onError(atomicThrowable.a());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }
    }

    static final class SourceObserver<T, U> extends AtomicInteger implements b, q<T> {
        private static final long serialVersionUID = 8828587559905699186L;
        final q<? super U> a;
        final SequentialDisposable b = new SequentialDisposable();
        final g<? super T, ? extends o<? extends U>> c;
        final q<U> d;
        final int e;
        io.reactivex.internal.a.g<T> f;
        b g;
        volatile boolean h;
        volatile boolean i;
        volatile boolean j;
        int k;

        static final class a<U> implements q<U> {
            final q<? super U> a;
            final SourceObserver<?, ?> b;

            a(q<? super U> qVar, SourceObserver<?, ?> sourceObserver) {
                this.a = qVar;
                this.b = sourceObserver;
            }

            public void onSubscribe(b bVar) {
                this.b.a(bVar);
            }

            public void onNext(U u) {
                this.a.onNext(u);
            }

            public void onError(Throwable th) {
                this.b.dispose();
                this.a.onError(th);
            }

            public void onComplete() {
                this.b.a();
            }
        }

        SourceObserver(q<? super U> qVar, g<? super T, ? extends o<? extends U>> gVar, int i2) {
            this.a = qVar;
            this.c = gVar;
            this.e = i2;
            this.d = new a(qVar, this);
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.g, bVar)) {
                this.g = bVar;
                if (bVar instanceof io.reactivex.internal.a.b) {
                    io.reactivex.internal.a.b bVar2 = (io.reactivex.internal.a.b) bVar;
                    int a2 = bVar2.a(3);
                    if (a2 == 1) {
                        this.k = a2;
                        this.f = bVar2;
                        this.j = true;
                        this.a.onSubscribe(this);
                        b();
                        return;
                    } else if (a2 == 2) {
                        this.k = a2;
                        this.f = bVar2;
                        this.a.onSubscribe(this);
                        return;
                    }
                }
                this.f = new io.reactivex.internal.queue.a(this.e);
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (!this.j) {
                if (this.k == 0) {
                    this.f.a(t);
                }
                b();
            }
        }

        public void onError(Throwable th) {
            if (this.j) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.j = true;
            dispose();
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.j) {
                this.j = true;
                b();
            }
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            this.h = false;
            b();
        }

        public boolean isDisposed() {
            return this.i;
        }

        public void dispose() {
            this.i = true;
            this.b.dispose();
            this.g.dispose();
            if (getAndIncrement() == 0) {
                this.f.c();
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(b bVar) {
            this.b.a(bVar);
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            if (getAndIncrement() == 0) {
                while (!this.i) {
                    if (!this.h) {
                        boolean z = this.j;
                        try {
                            Object e_ = this.f.e_();
                            boolean z2 = e_ == null;
                            if (z && z2) {
                                this.i = true;
                                this.a.onComplete();
                                return;
                            } else if (!z2) {
                                try {
                                    o oVar = (o) io.reactivex.internal.functions.a.a(this.c.apply(e_), "The mapper returned a null ObservableSource");
                                    this.h = true;
                                    oVar.subscribe(this.d);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    dispose();
                                    this.f.c();
                                    this.a.onError(th);
                                    return;
                                }
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            dispose();
                            this.f.c();
                            this.a.onError(th2);
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                this.f.c();
            }
        }
    }

    public ObservableConcatMap(o<T> oVar, g<? super T, ? extends o<? extends U>> gVar, int i, ErrorMode errorMode) {
        super(oVar);
        this.b = gVar;
        this.d = errorMode;
        this.c = Math.max(8, i);
    }

    public void subscribeActual(q<? super U> qVar) {
        if (!ObservableScalarXMap.a(this.a, qVar, this.b)) {
            if (this.d == ErrorMode.IMMEDIATE) {
                this.a.subscribe(new SourceObserver(new e(qVar), this.b, this.c));
            } else {
                this.a.subscribe(new ConcatMapDelayErrorObserver(qVar, this.b, this.c, this.d == ErrorMode.END));
            }
        }
    }
}
