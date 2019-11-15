package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import io.reactivex.subjects.UnicastSubject;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWindowBoundarySelector */
public final class by<T, B, V> extends a<T, k<T>> {
    final o<B> b;
    final g<? super B, ? extends o<V>> c;
    final int d;

    /* compiled from: ObservableWindowBoundarySelector */
    static final class a<T, V> extends io.reactivex.observers.c<V> {
        final c<T, ?, V> a;
        final UnicastSubject<T> b;
        boolean c;

        a(c<T, ?, V> cVar, UnicastSubject<T> unicastSubject) {
            this.a = cVar;
            this.b = unicastSubject;
        }

        public void onNext(V v) {
            if (!this.c) {
                this.c = true;
                dispose();
                this.a.a(this);
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
                this.a.a(this);
            }
        }
    }

    /* compiled from: ObservableWindowBoundarySelector */
    static final class b<T, B> extends io.reactivex.observers.c<B> {
        final c<T, B, ?> a;

        b(c<T, B, ?> cVar) {
            this.a = cVar;
        }

        public void onNext(B b) {
            this.a.a(b);
        }

        public void onError(Throwable th) {
            this.a.a(th);
        }

        public void onComplete() {
            this.a.onComplete();
        }
    }

    /* compiled from: ObservableWindowBoundarySelector */
    static final class c<T, B, V> extends io.reactivex.internal.observers.k<T, Object, k<T>> implements io.reactivex.disposables.b {
        final o<B> g;
        final g<? super B, ? extends o<V>> h;
        final int i;
        final io.reactivex.disposables.a j;
        io.reactivex.disposables.b k;
        final AtomicReference<io.reactivex.disposables.b> l = new AtomicReference<>();
        final List<UnicastSubject<T>> m;
        final AtomicLong n = new AtomicLong();

        c(q<? super k<T>> qVar, o<B> oVar, g<? super B, ? extends o<V>> gVar, int i2) {
            super(qVar, new MpscLinkedQueue());
            this.g = oVar;
            this.h = gVar;
            this.i = i2;
            this.j = new io.reactivex.disposables.a();
            this.m = new ArrayList();
            this.n.lazySet(1);
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.k, bVar)) {
                this.k = bVar;
                this.a.onSubscribe(this);
                if (!this.c) {
                    b bVar2 = new b(this);
                    if (this.l.compareAndSet(null, bVar2)) {
                        this.n.getAndIncrement();
                        this.g.subscribe(bVar2);
                    }
                }
            }
        }

        public void onNext(T t) {
            if (d()) {
                for (UnicastSubject onNext : this.m) {
                    onNext.onNext(t);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.b.a(NotificationLite.a(t));
                if (!c()) {
                    return;
                }
            }
            g();
        }

        public void onError(Throwable th) {
            if (this.d) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.e = th;
            this.d = true;
            if (c()) {
                g();
            }
            if (this.n.decrementAndGet() == 0) {
                this.j.dispose();
            }
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.d) {
                this.d = true;
                if (c()) {
                    g();
                }
                if (this.n.decrementAndGet() == 0) {
                    this.j.dispose();
                }
                this.a.onComplete();
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(Throwable th) {
            this.k.dispose();
            this.j.dispose();
            onError(th);
        }

        public void dispose() {
            this.c = true;
        }

        public boolean isDisposed() {
            return this.c;
        }

        /* access modifiers changed from: 0000 */
        public void f() {
            this.j.dispose();
            DisposableHelper.a(this.l);
        }

        /* access modifiers changed from: 0000 */
        public void g() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.b;
            q qVar = this.a;
            List<UnicastSubject<T>> list = this.m;
            int i2 = 1;
            while (true) {
                boolean z = this.d;
                Object e_ = mpscLinkedQueue.e_();
                boolean z2 = e_ == null;
                if (z && z2) {
                    f();
                    Throwable th = this.e;
                    if (th != null) {
                        for (UnicastSubject onError : list) {
                            onError.onError(th);
                        }
                    } else {
                        for (UnicastSubject onComplete : list) {
                            onComplete.onComplete();
                        }
                    }
                    list.clear();
                    return;
                } else if (z2) {
                    int a = a(-i2);
                    if (a != 0) {
                        i2 = a;
                    } else {
                        return;
                    }
                } else if (e_ instanceof d) {
                    d dVar = (d) e_;
                    if (dVar.a != null) {
                        if (list.remove(dVar.a)) {
                            dVar.a.onComplete();
                            if (this.n.decrementAndGet() == 0) {
                                f();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.c) {
                        UnicastSubject a2 = UnicastSubject.a(this.i);
                        list.add(a2);
                        qVar.onNext(a2);
                        try {
                            o oVar = (o) io.reactivex.internal.functions.a.a(this.h.apply(dVar.b), "The ObservableSource supplied is null");
                            a aVar = new a(this, a2);
                            if (this.j.a((io.reactivex.disposables.b) aVar)) {
                                this.n.getAndIncrement();
                                oVar.subscribe(aVar);
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.c = true;
                            qVar.onError(th2);
                        }
                    }
                } else {
                    for (UnicastSubject onNext : list) {
                        onNext.onNext(NotificationLite.e(e_));
                    }
                }
            }
        }

        public void a(q<? super k<T>> qVar, Object obj) {
        }

        /* access modifiers changed from: 0000 */
        public void a(B b) {
            this.b.a(new d(null, b));
            if (c()) {
                g();
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(a<T, V> aVar) {
            this.j.c(aVar);
            this.b.a(new d(aVar.b, null));
            if (c()) {
                g();
            }
        }
    }

    /* compiled from: ObservableWindowBoundarySelector */
    static final class d<T, B> {
        final UnicastSubject<T> a;
        final B b;

        d(UnicastSubject<T> unicastSubject, B b2) {
            this.a = unicastSubject;
            this.b = b2;
        }
    }

    public by(o<T> oVar, o<B> oVar2, g<? super B, ? extends o<V>> gVar, int i) {
        super(oVar);
        this.b = oVar2;
        this.c = gVar;
        this.d = i;
    }

    public void subscribeActual(q<? super k<T>> qVar) {
        this.a.subscribe(new c(new e(qVar), this.b, this.c, this.d));
    }
}
