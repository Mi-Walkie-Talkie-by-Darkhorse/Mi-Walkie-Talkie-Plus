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
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWindowBoundary */
public final class bx<T, B> extends a<T, k<T>> {
    final o<B> b;
    final int c;

    /* compiled from: ObservableWindowBoundary */
    static final class a<T, B> extends c<B> {
        final b<T, B> a;
        boolean b;

        a(b<T, B> bVar) {
            this.a = bVar;
        }

        public void onNext(B b2) {
            if (!this.b) {
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

    /* compiled from: ObservableWindowBoundary */
    static final class b<T, B> extends io.reactivex.internal.observers.k<T, Object, k<T>> implements io.reactivex.disposables.b {
        static final Object l = new Object();
        final o<B> g;
        final int h;
        io.reactivex.disposables.b i;
        final AtomicReference<io.reactivex.disposables.b> j = new AtomicReference<>();
        UnicastSubject<T> k;
        final AtomicLong m = new AtomicLong();

        b(q<? super k<T>> qVar, o<B> oVar, int i2) {
            super(qVar, new MpscLinkedQueue());
            this.g = oVar;
            this.h = i2;
            this.m.lazySet(1);
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.i, bVar)) {
                this.i = bVar;
                q qVar = this.a;
                qVar.onSubscribe(this);
                if (!this.c) {
                    UnicastSubject<T> a = UnicastSubject.a(this.h);
                    this.k = a;
                    qVar.onNext(a);
                    a aVar = new a(this);
                    if (this.j.compareAndSet(null, aVar)) {
                        this.m.getAndIncrement();
                        this.g.subscribe(aVar);
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
                    i2 = a(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else if (e_ == l) {
                    unicastSubject.onComplete();
                    if (this.m.decrementAndGet() == 0) {
                        DisposableHelper.a(this.j);
                        return;
                    } else if (!this.c) {
                        unicastSubject = UnicastSubject.a(this.h);
                        this.m.getAndIncrement();
                        this.k = unicastSubject;
                        qVar.onNext(unicastSubject);
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

    public bx(o<T> oVar, o<B> oVar2, int i) {
        super(oVar);
        this.b = oVar2;
        this.c = i;
    }

    public void subscribeActual(q<? super k<T>> qVar) {
        this.a.subscribe(new b(new e(qVar), this.b, this.c));
    }
}
