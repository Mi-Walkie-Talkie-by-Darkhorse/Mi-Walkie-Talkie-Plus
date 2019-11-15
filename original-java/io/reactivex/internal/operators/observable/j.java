package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.internal.a.f;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.k;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableBufferBoundary */
public final class j<T, U extends Collection<? super T>, Open, Close> extends a<T, U> {
    final Callable<U> b;
    final o<? extends Open> c;
    final g<? super Open, ? extends o<? extends Close>> d;

    /* compiled from: ObservableBufferBoundary */
    static final class a<T, U extends Collection<? super T>, Open, Close> extends k<T, U, U> implements io.reactivex.disposables.b {
        final o<? extends Open> g;
        final g<? super Open, ? extends o<? extends Close>> h;
        final Callable<U> i;
        final io.reactivex.disposables.a j;
        io.reactivex.disposables.b k;
        final List<U> l;
        final AtomicInteger m = new AtomicInteger();

        a(q<? super U> qVar, o<? extends Open> oVar, g<? super Open, ? extends o<? extends Close>> gVar, Callable<U> callable) {
            super(qVar, new MpscLinkedQueue());
            this.g = oVar;
            this.h = gVar;
            this.i = callable;
            this.l = new LinkedList();
            this.j = new io.reactivex.disposables.a();
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.k, bVar)) {
                this.k = bVar;
                c cVar = new c(this);
                this.j.a((io.reactivex.disposables.b) cVar);
                this.a.onSubscribe(this);
                this.m.lazySet(1);
                this.g.subscribe(cVar);
            }
        }

        public void onNext(T t) {
            synchronized (this) {
                for (U add : this.l) {
                    add.add(t);
                }
            }
        }

        public void onError(Throwable th) {
            dispose();
            this.c = true;
            synchronized (this) {
                this.l.clear();
            }
            this.a.onError(th);
        }

        public void onComplete() {
            if (this.m.decrementAndGet() == 0) {
                f();
            }
        }

        /* access modifiers changed from: 0000 */
        public void f() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList<>(this.l);
                this.l.clear();
            }
            f fVar = this.b;
            for (Collection a : arrayList) {
                fVar.a(a);
            }
            this.d = true;
            if (c()) {
                io.reactivex.internal.util.k.a(fVar, this.a, false, this, this);
            }
        }

        public void dispose() {
            if (!this.c) {
                this.c = true;
                this.j.dispose();
            }
        }

        public boolean isDisposed() {
            return this.c;
        }

        public void a(q<? super U> qVar, U u) {
            qVar.onNext(u);
        }

        /* access modifiers changed from: 0000 */
        public void a(Open open) {
            if (!this.c) {
                try {
                    Collection collection = (Collection) io.reactivex.internal.functions.a.a(this.i.call(), "The buffer supplied is null");
                    try {
                        o oVar = (o) io.reactivex.internal.functions.a.a(this.h.apply(open), "The buffer closing Observable is null");
                        if (!this.c) {
                            synchronized (this) {
                                if (!this.c) {
                                    this.l.add(collection);
                                    b bVar = new b(collection, this);
                                    this.j.a((io.reactivex.disposables.b) bVar);
                                    this.m.getAndIncrement();
                                    oVar.subscribe(bVar);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        onError(th);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    onError(th2);
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(io.reactivex.disposables.b bVar) {
            if (this.j.b(bVar) && this.m.decrementAndGet() == 0) {
                f();
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(U u, io.reactivex.disposables.b bVar) {
            boolean remove;
            synchronized (this) {
                remove = this.l.remove(u);
            }
            if (remove) {
                b(u, false, this);
            }
            if (this.j.b(bVar) && this.m.decrementAndGet() == 0) {
                f();
            }
        }
    }

    /* compiled from: ObservableBufferBoundary */
    static final class b<T, U extends Collection<? super T>, Open, Close> extends io.reactivex.observers.c<Close> {
        final a<T, U, Open, Close> a;
        final U b;
        boolean c;

        b(U u, a<T, U, Open, Close> aVar) {
            this.a = aVar;
            this.b = u;
        }

        public void onNext(Close close) {
            onComplete();
        }

        public void onError(Throwable th) {
            if (this.c) {
                io.reactivex.d.a.a(th);
            } else {
                this.a.onError(th);
            }
        }

        public void onComplete() {
            if (!this.c) {
                this.c = true;
                this.a.a(this.b, (io.reactivex.disposables.b) this);
            }
        }
    }

    /* compiled from: ObservableBufferBoundary */
    static final class c<T, U extends Collection<? super T>, Open, Close> extends io.reactivex.observers.c<Open> {
        final a<T, U, Open, Close> a;
        boolean b;

        c(a<T, U, Open, Close> aVar) {
            this.a = aVar;
        }

        public void onNext(Open open) {
            if (!this.b) {
                this.a.a(open);
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
                this.a.a((io.reactivex.disposables.b) this);
            }
        }
    }

    public j(o<T> oVar, o<? extends Open> oVar2, g<? super Open, ? extends o<? extends Close>> gVar, Callable<U> callable) {
        super(oVar);
        this.c = oVar2;
        this.d = gVar;
        this.b = callable;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super U> qVar) {
        this.a.subscribe(new a(new e(qVar), this.c, this.d, this.b));
    }
}
