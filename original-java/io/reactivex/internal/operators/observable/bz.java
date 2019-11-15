package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.observers.c;
import io.reactivex.observers.e;
import io.reactivex.q;
import io.reactivex.subjects.UnicastSubject;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWindowBoundarySupplier */
public final class bz<T, B> extends a<T, k<T>> {
    final Callable<? extends o<B>> b;
    final int c;

    /* compiled from: ObservableWindowBoundarySupplier */
    static final class a<T, B> extends c<B> {
        final b<T, B> a;
        boolean b;

        a(b<T, B> bVar) {
            this.a = bVar;
        }

        public void onNext(B b2) {
            if (!this.b) {
                this.b = true;
                dispose();
                this.a.g();
            }
        }

        public void onError(Throwable th) {
            if (this.b) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.b = true;
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.b) {
                this.b = true;
                this.a.onComplete();
            }
        }
    }

    /* compiled from: ObservableWindowBoundarySupplier */
    static final class b<T, B> extends io.reactivex.internal.observers.k<T, Object, k<T>> implements io.reactivex.disposables.b {
        static final Object l = new Object();
        final Callable<? extends o<B>> g;
        final int h;
        io.reactivex.disposables.b i;
        final AtomicReference<io.reactivex.disposables.b> j = new AtomicReference<>();
        UnicastSubject<T> k;
        final AtomicLong m = new AtomicLong();

        b(q<? super k<T>> qVar, Callable<? extends o<B>> callable, int i2) {
            super(qVar, new MpscLinkedQueue());
            this.g = callable;
            this.h = i2;
            this.m.lazySet(1);
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.i, bVar)) {
                this.i = bVar;
                q qVar = this.a;
                qVar.onSubscribe(this);
                if (!this.c) {
                    try {
                        o oVar = (o) io.reactivex.internal.functions.a.a(this.g.call(), "The first window ObservableSource supplied is null");
                        UnicastSubject<T> a = UnicastSubject.a(this.h);
                        this.k = a;
                        qVar.onNext(a);
                        a aVar = new a(this);
                        if (this.j.compareAndSet(null, aVar)) {
                            this.m.getAndIncrement();
                            oVar.subscribe(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        bVar.dispose();
                        qVar.onError(th);
                    }
                }
            }
        }

        public void onNext(T t) {
            if (d()) {
                this.k.onNext(t);
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.b.a(NotificationLite.a(t));
                if (!c()) {
                    return;
                }
            }
            f();
        }

        public void onError(Throwable th) {
            if (this.d) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.e = th;
            this.d = true;
            if (c()) {
                f();
            }
            if (this.m.decrementAndGet() == 0) {
                DisposableHelper.a(this.j);
            }
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.d) {
                this.d = true;
                if (c()) {
                    f();
                }
                if (this.m.decrementAndGet() == 0) {
                    DisposableHelper.a(this.j);
                }
                this.a.onComplete();
            }
        }

        public void dispose() {
            this.c = true;
        }

        public boolean isDisposed() {
            return this.c;
        }

        /* access modifiers changed from: 0000 */
        public void f() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.b;
            q qVar = this.a;
            UnicastSubject<T> unicastSubject = this.k;
            int i2 = 1;
            while (true) {
                boolean z = this.d;
                Object e_ = mpscLinkedQueue.e_();
                boolean z2 = e_ == null;
                if (z && z2) {
                    DisposableHelper.a(this.j);
                    Throwable th = this.e;
                    if (th != null) {
                        unicastSubject.onError(th);
                        return;
                    } else {
                        unicastSubject.onComplete();
                        return;
                    }
                } else if (z2) {
                    int a = a(-i2);
                    if (a != 0) {
                        i2 = a;
                    } else {
                        return;
                    }
                } else if (e_ == l) {
                    unicastSubject.onComplete();
                    if (this.m.decrementAndGet() == 0) {
                        DisposableHelper.a(this.j);
                        return;
                    } else if (!this.c) {
                        try {
                            o oVar = (o) io.reactivex.internal.functions.a.a(this.g.call(), "The ObservableSource supplied is null");
                            UnicastSubject<T> a2 = UnicastSubject.a(this.h);
                            this.m.getAndIncrement();
                            this.k = a2;
                            qVar.onNext(a2);
                            a aVar = new a(this);
                            if (this.j.compareAndSet(this.j.get(), aVar)) {
                                oVar.subscribe(aVar);
                                unicastSubject = a2;
                            } else {
                                unicastSubject = a2;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            DisposableHelper.a(this.j);
                            qVar.onError(th2);
                            return;
                        }
                    }
                } else {
                    unicastSubject.onNext(NotificationLite.e(e_));
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void g() {
            this.b.a(l);
            if (c()) {
                f();
            }
        }
    }

    public bz(o<T> oVar, Callable<? extends o<B>> callable, int i) {
        super(oVar);
        this.b = callable;
        this.c = i;
    }

    public void subscribeActual(q<? super k<T>> qVar) {
        this.a.subscribe(new b(new e(qVar), this.b, this.c));
    }
}
