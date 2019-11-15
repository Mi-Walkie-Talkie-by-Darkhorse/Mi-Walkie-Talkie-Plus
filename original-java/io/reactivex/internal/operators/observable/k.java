package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.o;
import io.reactivex.observers.c;
import io.reactivex.observers.e;
import io.reactivex.q;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableBufferBoundarySupplier */
public final class k<T, U extends Collection<? super T>, B> extends a<T, U> {
    final Callable<? extends o<B>> b;
    final Callable<U> c;

    /* compiled from: ObservableBufferBoundarySupplier */
    static final class a<T, U extends Collection<? super T>, B> extends c<B> {
        final b<T, U, B> a;
        boolean b;

        a(b<T, U, B> bVar) {
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
                this.a.g();
            }
        }
    }

    /* compiled from: ObservableBufferBoundarySupplier */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.observers.k<T, U, U> implements io.reactivex.disposables.b, q<T> {
        final Callable<U> g;
        final Callable<? extends o<B>> h;
        io.reactivex.disposables.b i;
        final AtomicReference<io.reactivex.disposables.b> j = new AtomicReference<>();
        U k;

        b(q<? super U> qVar, Callable<U> callable, Callable<? extends o<B>> callable2) {
            super(qVar, new MpscLinkedQueue());
            this.g = callable;
            this.h = callable2;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.i, bVar)) {
                this.i = bVar;
                q qVar = this.a;
                try {
                    this.k = (Collection) io.reactivex.internal.functions.a.a(this.g.call(), "The buffer supplied is null");
                    try {
                        o oVar = (o) io.reactivex.internal.functions.a.a(this.h.call(), "The boundary ObservableSource supplied is null");
                        a aVar = new a(this);
                        this.j.set(aVar);
                        qVar.onSubscribe(this);
                        if (!this.c) {
                            oVar.subscribe(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.c = true;
                        bVar.dispose();
                        EmptyDisposable.a(th, qVar);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.c = true;
                    bVar.dispose();
                    EmptyDisposable.a(th2, qVar);
                }
            }
        }

        public void onNext(T t) {
            synchronized (this) {
                U u = this.k;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        public void onError(Throwable th) {
            dispose();
            this.a.onError(th);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:18:?, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:7:0x000b, code lost:
            r3.b.a(r0);
            r3.d = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0017, code lost:
            if (c() == false) goto L_?;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0019, code lost:
            io.reactivex.internal.util.k.a(r3.b, r3.a, false, r3, r3);
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onComplete() {
            /*
                r3 = this;
                monitor-enter(r3)
                U r0 = r3.k     // Catch:{ all -> 0x0022 }
                if (r0 != 0) goto L_0x0007
                monitor-exit(r3)     // Catch:{ all -> 0x0022 }
            L_0x0006:
                return
            L_0x0007:
                r1 = 0
                r3.k = r1     // Catch:{ all -> 0x0022 }
                monitor-exit(r3)     // Catch:{ all -> 0x0022 }
                io.reactivex.internal.a.f r1 = r3.b
                r1.a(r0)
                r0 = 1
                r3.d = r0
                boolean r0 = r3.c()
                if (r0 == 0) goto L_0x0006
                io.reactivex.internal.a.f r0 = r3.b
                io.reactivex.q r1 = r3.a
                r2 = 0
                io.reactivex.internal.util.k.a(r0, r1, r2, r3, r3)
                goto L_0x0006
            L_0x0022:
                r0 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x0022 }
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.k.b.onComplete():void");
        }

        public void dispose() {
            if (!this.c) {
                this.c = true;
                this.i.dispose();
                f();
                if (c()) {
                    this.b.c();
                }
            }
        }

        public boolean isDisposed() {
            return this.c;
        }

        /* access modifiers changed from: 0000 */
        public void f() {
            DisposableHelper.a(this.j);
        }

        /* access modifiers changed from: 0000 */
        public void g() {
            try {
                U u = (Collection) io.reactivex.internal.functions.a.a(this.g.call(), "The buffer supplied is null");
                try {
                    o oVar = (o) io.reactivex.internal.functions.a.a(this.h.call(), "The boundary ObservableSource supplied is null");
                    a aVar = new a(this);
                    if (this.j.compareAndSet((io.reactivex.disposables.b) this.j.get(), aVar)) {
                        synchronized (this) {
                            U u2 = this.k;
                            if (u2 != null) {
                                this.k = u;
                                oVar.subscribe(aVar);
                                a(u2, false, this);
                            }
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.c = true;
                    this.i.dispose();
                    this.a.onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dispose();
                this.a.onError(th2);
            }
        }

        public void a(q<? super U> qVar, U u) {
            this.a.onNext(u);
        }
    }

    public k(o<T> oVar, Callable<? extends o<B>> callable, Callable<U> callable2) {
        super(oVar);
        this.b = callable;
        this.c = callable2;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super U> qVar) {
        this.a.subscribe(new b(new e(qVar), this.c, this.b));
    }
}
