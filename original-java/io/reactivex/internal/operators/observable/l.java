package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.observers.k;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.o;
import io.reactivex.observers.c;
import io.reactivex.observers.e;
import io.reactivex.q;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: ObservableBufferExactBoundary */
public final class l<T, U extends Collection<? super T>, B> extends a<T, U> {
    final o<B> b;
    final Callable<U> c;

    /* compiled from: ObservableBufferExactBoundary */
    static final class a<T, U extends Collection<? super T>, B> extends c<B> {
        final b<T, U, B> a;

        a(b<T, U, B> bVar) {
            this.a = bVar;
        }

        public void onNext(B b) {
            this.a.f();
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            this.a.onComplete();
        }
    }

    /* compiled from: ObservableBufferExactBoundary */
    static final class b<T, U extends Collection<? super T>, B> extends k<T, U, U> implements io.reactivex.disposables.b, q<T> {
        final Callable<U> g;
        final o<B> h;
        io.reactivex.disposables.b i;
        io.reactivex.disposables.b j;
        U k;

        b(q<? super U> qVar, Callable<U> callable, o<B> oVar) {
            super(qVar, new MpscLinkedQueue());
            this.g = callable;
            this.h = oVar;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.i, bVar)) {
                this.i = bVar;
                try {
                    this.k = (Collection) io.reactivex.internal.functions.a.a(this.g.call(), "The buffer supplied is null");
                    a aVar = new a(this);
                    this.j = aVar;
                    this.a.onSubscribe(this);
                    if (!this.c) {
                        this.h.subscribe(aVar);
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.c = true;
                    bVar.dispose();
                    EmptyDisposable.a(th, this.a);
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.l.b.onComplete():void");
        }

        public void dispose() {
            if (!this.c) {
                this.c = true;
                this.j.dispose();
                this.i.dispose();
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
            try {
                U u = (Collection) io.reactivex.internal.functions.a.a(this.g.call(), "The buffer supplied is null");
                synchronized (this) {
                    U u2 = this.k;
                    if (u2 != null) {
                        this.k = u;
                        a(u2, false, this);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                this.a.onError(th);
            }
        }

        public void a(q<? super U> qVar, U u) {
            this.a.onNext(u);
        }
    }

    public l(o<T> oVar, o<B> oVar2, Callable<U> callable) {
        super(oVar);
        this.b = oVar2;
        this.c = callable;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super U> qVar) {
        this.a.subscribe(new b(new e(qVar), this.c, this.b));
    }
}
