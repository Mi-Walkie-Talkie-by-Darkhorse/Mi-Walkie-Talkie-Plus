package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.d.a;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.InnerQueuedObserver;
import io.reactivex.internal.observers.j;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableConcatMapEager<T, R> extends a<T, R> {
    final g<? super T, ? extends o<? extends R>> b;
    final ErrorMode c;
    final int d;
    final int e;

    static final class ConcatMapEagerMainObserver<T, R> extends AtomicInteger implements b, j<R>, q<T> {
        private static final long serialVersionUID = 8080567949447303262L;
        final q<? super R> a;
        final g<? super T, ? extends o<? extends R>> b;
        final int c;
        final int d;
        final ErrorMode e;
        final AtomicThrowable f = new AtomicThrowable();
        final ArrayDeque<InnerQueuedObserver<R>> g = new ArrayDeque<>();
        io.reactivex.internal.a.g<T> h;
        b i;
        volatile boolean j;
        int k;
        volatile boolean l;
        InnerQueuedObserver<R> m;
        int n;

        ConcatMapEagerMainObserver(q<? super R> qVar, g<? super T, ? extends o<? extends R>> gVar, int i2, int i3, ErrorMode errorMode) {
            this.a = qVar;
            this.b = gVar;
            this.c = i2;
            this.d = i3;
            this.e = errorMode;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.i, bVar)) {
                this.i = bVar;
                if (bVar instanceof io.reactivex.internal.a.b) {
                    io.reactivex.internal.a.b bVar2 = (io.reactivex.internal.a.b) bVar;
                    int a2 = bVar2.a(3);
                    if (a2 == 1) {
                        this.k = a2;
                        this.h = bVar2;
                        this.j = true;
                        this.a.onSubscribe(this);
                        a();
                        return;
                    } else if (a2 == 2) {
                        this.k = a2;
                        this.h = bVar2;
                        this.a.onSubscribe(this);
                        return;
                    }
                }
                this.h = k.a(this.d);
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (this.k == 0) {
                this.h.a(t);
            }
            a();
        }

        public void onError(Throwable th) {
            if (this.f.a(th)) {
                this.j = true;
                a();
                return;
            }
            a.a(th);
        }

        public void onComplete() {
            this.j = true;
            a();
        }

        public void dispose() {
            this.l = true;
            if (getAndIncrement() == 0) {
                this.h.c();
                b();
            }
        }

        public boolean isDisposed() {
            return this.l;
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            InnerQueuedObserver<R> innerQueuedObserver = this.m;
            if (innerQueuedObserver != null) {
                innerQueuedObserver.dispose();
            }
            while (true) {
                InnerQueuedObserver innerQueuedObserver2 = (InnerQueuedObserver) this.g.poll();
                if (innerQueuedObserver2 != null) {
                    innerQueuedObserver2.dispose();
                } else {
                    return;
                }
            }
        }

        public void a(InnerQueuedObserver<R> innerQueuedObserver, R r) {
            innerQueuedObserver.c().a(r);
            a();
        }

        public void a(InnerQueuedObserver<R> innerQueuedObserver, Throwable th) {
            if (this.f.a(th)) {
                if (this.e == ErrorMode.IMMEDIATE) {
                    this.i.dispose();
                }
                innerQueuedObserver.b();
                a();
                return;
            }
            a.a(th);
        }

        public void a(InnerQueuedObserver<R> innerQueuedObserver) {
            innerQueuedObserver.b();
            a();
        }

        public void a() {
            int i2;
            boolean z;
            if (getAndIncrement() == 0) {
                io.reactivex.internal.a.g<T> gVar = this.h;
                ArrayDeque<InnerQueuedObserver<R>> arrayDeque = this.g;
                q<? super R> qVar = this.a;
                ErrorMode errorMode = this.e;
                int i3 = 1;
                while (true) {
                    int i4 = this.n;
                    while (true) {
                        i2 = i4;
                        if (i2 == this.c) {
                            break;
                        } else if (this.l) {
                            gVar.c();
                            b();
                            return;
                        } else if (errorMode != ErrorMode.IMMEDIATE || ((Throwable) this.f.get()) == null) {
                            try {
                                Object e_ = gVar.e_();
                                if (e_ == null) {
                                    break;
                                }
                                o oVar = (o) io.reactivex.internal.functions.a.a(this.b.apply(e_), "The mapper returned a null ObservableSource");
                                InnerQueuedObserver innerQueuedObserver = new InnerQueuedObserver(this, this.d);
                                arrayDeque.offer(innerQueuedObserver);
                                oVar.subscribe(innerQueuedObserver);
                                i4 = i2 + 1;
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                this.i.dispose();
                                gVar.c();
                                b();
                                this.f.a(th);
                                qVar.onError(this.f.a());
                                return;
                            }
                        } else {
                            gVar.c();
                            b();
                            qVar.onError(this.f.a());
                            return;
                        }
                    }
                    this.n = i2;
                    if (this.l) {
                        gVar.c();
                        b();
                        return;
                    } else if (errorMode != ErrorMode.IMMEDIATE || ((Throwable) this.f.get()) == null) {
                        InnerQueuedObserver<R> innerQueuedObserver2 = this.m;
                        if (innerQueuedObserver2 == null) {
                            if (errorMode != ErrorMode.BOUNDARY || ((Throwable) this.f.get()) == null) {
                                boolean z2 = this.j;
                                innerQueuedObserver2 = (InnerQueuedObserver) arrayDeque.poll();
                                boolean z3 = innerQueuedObserver2 == null;
                                if (!z2 || !z3) {
                                    if (!z3) {
                                        this.m = innerQueuedObserver2;
                                    }
                                } else if (((Throwable) this.f.get()) != null) {
                                    gVar.c();
                                    b();
                                    qVar.onError(this.f.a());
                                    return;
                                } else {
                                    qVar.onComplete();
                                    return;
                                }
                            } else {
                                gVar.c();
                                b();
                                qVar.onError(this.f.a());
                                return;
                            }
                        }
                        InnerQueuedObserver<R> innerQueuedObserver3 = innerQueuedObserver2;
                        if (innerQueuedObserver3 != null) {
                            io.reactivex.internal.a.g c2 = innerQueuedObserver3.c();
                            while (!this.l) {
                                boolean a2 = innerQueuedObserver3.a();
                                if (errorMode != ErrorMode.IMMEDIATE || ((Throwable) this.f.get()) == null) {
                                    try {
                                        Object e_2 = c2.e_();
                                        if (e_2 == null) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        if (a2 && z) {
                                            this.m = null;
                                            this.n--;
                                        } else if (!z) {
                                            qVar.onNext(e_2);
                                        }
                                    } catch (Throwable th2) {
                                        io.reactivex.exceptions.a.b(th2);
                                        this.f.a(th2);
                                        this.m = null;
                                        this.n--;
                                    }
                                } else {
                                    gVar.c();
                                    b();
                                    qVar.onError(this.f.a());
                                    return;
                                }
                            }
                            gVar.c();
                            b();
                            return;
                        }
                        int addAndGet = addAndGet(-i3);
                        if (addAndGet != 0) {
                            i3 = addAndGet;
                        } else {
                            return;
                        }
                    } else {
                        gVar.c();
                        b();
                        qVar.onError(this.f.a());
                        return;
                    }
                }
            }
        }
    }

    public ObservableConcatMapEager(o<T> oVar, g<? super T, ? extends o<? extends R>> gVar, ErrorMode errorMode, int i, int i2) {
        super(oVar);
        this.b = gVar;
        this.c = errorMode;
        this.d = i;
        this.e = i2;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super R> qVar) {
        this.a.subscribe(new ConcatMapEagerMainObserver(qVar, this.b, this.d, this.e, this.c));
    }
}
