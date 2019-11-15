package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.observers.k;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import io.reactivex.r;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableBufferTimed */
public final class m<T, U extends Collection<? super T>> extends a<T, U> {
    final long b;
    final long c;
    final TimeUnit d;
    final r e;
    final Callable<U> f;
    final int g;
    final boolean h;

    /* compiled from: ObservableBufferTimed */
    static final class a<T, U extends Collection<? super T>> extends k<T, U, U> implements io.reactivex.disposables.b, Runnable {
        final Callable<U> g;
        final long h;
        final TimeUnit i;
        final int j;
        final boolean k;
        final io.reactivex.r.c l;
        U m;
        io.reactivex.disposables.b n;
        io.reactivex.disposables.b o;
        long p;
        long q;

        a(q<? super U> qVar, Callable<U> callable, long j2, TimeUnit timeUnit, int i2, boolean z, io.reactivex.r.c cVar) {
            super(qVar, new MpscLinkedQueue());
            this.g = callable;
            this.h = j2;
            this.i = timeUnit;
            this.j = i2;
            this.k = z;
            this.l = cVar;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.o, bVar)) {
                this.o = bVar;
                try {
                    this.m = (Collection) io.reactivex.internal.functions.a.a(this.g.call(), "The buffer supplied is null");
                    this.a.onSubscribe(this);
                    this.n = this.l.a(this, this.h, this.h, this.i);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    bVar.dispose();
                    EmptyDisposable.a(th, this.a);
                    this.l.dispose();
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:18:0x0024, code lost:
            if (r7.k == false) goto L_0x002b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:0x0026, code lost:
            r7.n.dispose();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:0x002b, code lost:
            b(r0, false, r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
            r0 = (java.util.Collection) io.reactivex.internal.functions.a.a(r7.g.call(), "The buffer supplied is null");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x003d, code lost:
            monitor-enter(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
            r7.m = r0;
            r7.q++;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:0x0045, code lost:
            monitor-exit(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:28:0x0048, code lost:
            if (r7.k == false) goto L_?;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:29:0x004a, code lost:
            r7.n = r7.l.a(r7, r7.h, r7.h, r7.i);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x005a, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x005b, code lost:
            io.reactivex.exceptions.a.b(r0);
            r7.a.onError(r0);
            dispose();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:41:?, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:42:?, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:43:?, code lost:
            return;
         */
        /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onNext(T r8) {
            /*
                r7 = this;
                r4 = 1
                monitor-enter(r7)
                U r0 = r7.m     // Catch:{ all -> 0x0016 }
                if (r0 != 0) goto L_0x0009
                monitor-exit(r7)     // Catch:{ all -> 0x0016 }
            L_0x0008:
                return
            L_0x0009:
                r0.add(r8)     // Catch:{ all -> 0x0016 }
                int r1 = r0.size()     // Catch:{ all -> 0x0016 }
                int r2 = r7.j     // Catch:{ all -> 0x0016 }
                if (r1 >= r2) goto L_0x0019
                monitor-exit(r7)     // Catch:{ all -> 0x0016 }
                goto L_0x0008
            L_0x0016:
                r0 = move-exception
                monitor-exit(r7)     // Catch:{ all -> 0x0016 }
                throw r0
            L_0x0019:
                r1 = 0
                r7.m = r1     // Catch:{ all -> 0x0016 }
                long r2 = r7.p     // Catch:{ all -> 0x0016 }
                long r2 = r2 + r4
                r7.p = r2     // Catch:{ all -> 0x0016 }
                monitor-exit(r7)     // Catch:{ all -> 0x0016 }
                boolean r1 = r7.k
                if (r1 == 0) goto L_0x002b
                io.reactivex.disposables.b r1 = r7.n
                r1.dispose()
            L_0x002b:
                r1 = 0
                r7.b(r0, r1, r7)
                java.util.concurrent.Callable<U> r0 = r7.g     // Catch:{ Throwable -> 0x005a }
                java.lang.Object r0 = r0.call()     // Catch:{ Throwable -> 0x005a }
                java.lang.String r1 = "The buffer supplied is null"
                java.lang.Object r0 = io.reactivex.internal.functions.a.a(r0, r1)     // Catch:{ Throwable -> 0x005a }
                java.util.Collection r0 = (java.util.Collection) r0     // Catch:{ Throwable -> 0x005a }
                monitor-enter(r7)
                r7.m = r0     // Catch:{ all -> 0x0067 }
                long r0 = r7.q     // Catch:{ all -> 0x0067 }
                long r0 = r0 + r4
                r7.q = r0     // Catch:{ all -> 0x0067 }
                monitor-exit(r7)     // Catch:{ all -> 0x0067 }
                boolean r0 = r7.k
                if (r0 == 0) goto L_0x0008
                io.reactivex.r$c r0 = r7.l
                long r2 = r7.h
                long r4 = r7.h
                java.util.concurrent.TimeUnit r6 = r7.i
                r1 = r7
                io.reactivex.disposables.b r0 = r0.a(r1, r2, r4, r6)
                r7.n = r0
                goto L_0x0008
            L_0x005a:
                r0 = move-exception
                io.reactivex.exceptions.a.b(r0)
                io.reactivex.q r1 = r7.a
                r1.onError(r0)
                r7.dispose()
                goto L_0x0008
            L_0x0067:
                r0 = move-exception
                monitor-exit(r7)     // Catch:{ all -> 0x0067 }
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.m.a.onNext(java.lang.Object):void");
        }

        public void onError(Throwable th) {
            synchronized (this) {
                this.m = null;
            }
            this.a.onError(th);
            this.l.dispose();
        }

        public void onComplete() {
            U u;
            this.l.dispose();
            synchronized (this) {
                u = this.m;
                this.m = null;
            }
            this.b.a(u);
            this.d = true;
            if (c()) {
                io.reactivex.internal.util.k.a(this.b, this.a, false, this, this);
            }
        }

        public void a(q<? super U> qVar, U u) {
            qVar.onNext(u);
        }

        public void dispose() {
            if (!this.c) {
                this.c = true;
                this.o.dispose();
                this.l.dispose();
                synchronized (this) {
                    this.m = null;
                }
            }
        }

        public boolean isDisposed() {
            return this.c;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r6 = this;
                java.util.concurrent.Callable<U> r0 = r6.g     // Catch:{ Throwable -> 0x001d }
                java.lang.Object r0 = r0.call()     // Catch:{ Throwable -> 0x001d }
                java.lang.String r1 = "The bufferSupplier returned a null buffer"
                java.lang.Object r0 = io.reactivex.internal.functions.a.a(r0, r1)     // Catch:{ Throwable -> 0x001d }
                java.util.Collection r0 = (java.util.Collection) r0     // Catch:{ Throwable -> 0x001d }
                monitor-enter(r6)
                U r1 = r6.m     // Catch:{ all -> 0x0032 }
                if (r1 == 0) goto L_0x001b
                long r2 = r6.p     // Catch:{ all -> 0x0032 }
                long r4 = r6.q     // Catch:{ all -> 0x0032 }
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 == 0) goto L_0x002a
            L_0x001b:
                monitor-exit(r6)     // Catch:{ all -> 0x0032 }
            L_0x001c:
                return
            L_0x001d:
                r0 = move-exception
                io.reactivex.exceptions.a.b(r0)
                r6.dispose()
                io.reactivex.q r1 = r6.a
                r1.onError(r0)
                goto L_0x001c
            L_0x002a:
                r6.m = r0     // Catch:{ all -> 0x0032 }
                monitor-exit(r6)     // Catch:{ all -> 0x0032 }
                r0 = 0
                r6.b(r1, r0, r6)
                goto L_0x001c
            L_0x0032:
                r0 = move-exception
                monitor-exit(r6)     // Catch:{ all -> 0x0032 }
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.m.a.run():void");
        }
    }

    /* compiled from: ObservableBufferTimed */
    static final class b<T, U extends Collection<? super T>> extends k<T, U, U> implements io.reactivex.disposables.b, Runnable {
        final Callable<U> g;
        final long h;
        final TimeUnit i;
        final r j;
        io.reactivex.disposables.b k;
        U l;
        final AtomicReference<io.reactivex.disposables.b> m = new AtomicReference<>();

        b(q<? super U> qVar, Callable<U> callable, long j2, TimeUnit timeUnit, r rVar) {
            super(qVar, new MpscLinkedQueue());
            this.g = callable;
            this.h = j2;
            this.i = timeUnit;
            this.j = rVar;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.k, bVar)) {
                this.k = bVar;
                try {
                    this.l = (Collection) io.reactivex.internal.functions.a.a(this.g.call(), "The buffer supplied is null");
                    this.a.onSubscribe(this);
                    if (!this.c) {
                        io.reactivex.disposables.b a = this.j.a(this, this.h, this.h, this.i);
                        if (!this.m.compareAndSet(null, a)) {
                            a.dispose();
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    dispose();
                    EmptyDisposable.a(th, this.a);
                }
            }
        }

        public void onNext(T t) {
            synchronized (this) {
                U u = this.l;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        public void onError(Throwable th) {
            synchronized (this) {
                this.l = null;
            }
            this.a.onError(th);
            DisposableHelper.a(this.m);
        }

        public void onComplete() {
            U u;
            synchronized (this) {
                u = this.l;
                this.l = null;
            }
            if (u != null) {
                this.b.a(u);
                this.d = true;
                if (c()) {
                    io.reactivex.internal.util.k.a(this.b, this.a, false, this, this);
                }
            }
            DisposableHelper.a(this.m);
        }

        public void dispose() {
            DisposableHelper.a(this.m);
            this.k.dispose();
        }

        public boolean isDisposed() {
            return this.m.get() == DisposableHelper.DISPOSED;
        }

        public void run() {
            U u;
            try {
                U u2 = (Collection) io.reactivex.internal.functions.a.a(this.g.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    u = this.l;
                    if (u != null) {
                        this.l = u2;
                    }
                }
                if (u == null) {
                    DisposableHelper.a(this.m);
                } else {
                    a(u, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.a.onError(th);
                dispose();
            }
        }

        public void a(q<? super U> qVar, U u) {
            this.a.onNext(u);
        }
    }

    /* compiled from: ObservableBufferTimed */
    static final class c<T, U extends Collection<? super T>> extends k<T, U, U> implements io.reactivex.disposables.b, Runnable {
        final Callable<U> g;
        final long h;
        final long i;
        final TimeUnit j;
        final io.reactivex.r.c k;
        final List<U> l = new LinkedList();
        io.reactivex.disposables.b m;

        /* compiled from: ObservableBufferTimed */
        final class a implements Runnable {
            private final U b;

            a(U u) {
                this.b = u;
            }

            public void run() {
                synchronized (c.this) {
                    c.this.l.remove(this.b);
                }
                c.this.b(this.b, false, c.this.k);
            }
        }

        /* compiled from: ObservableBufferTimed */
        final class b implements Runnable {
            private final U b;

            b(U u) {
                this.b = u;
            }

            public void run() {
                synchronized (c.this) {
                    c.this.l.remove(this.b);
                }
                c.this.b(this.b, false, c.this.k);
            }
        }

        c(q<? super U> qVar, Callable<U> callable, long j2, long j3, TimeUnit timeUnit, io.reactivex.r.c cVar) {
            super(qVar, new MpscLinkedQueue());
            this.g = callable;
            this.h = j2;
            this.i = j3;
            this.j = timeUnit;
            this.k = cVar;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.m, bVar)) {
                this.m = bVar;
                try {
                    Collection collection = (Collection) io.reactivex.internal.functions.a.a(this.g.call(), "The buffer supplied is null");
                    this.l.add(collection);
                    this.a.onSubscribe(this);
                    this.k.a(this, this.i, this.i, this.j);
                    this.k.a(new b(collection), this.h, this.j);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    bVar.dispose();
                    EmptyDisposable.a(th, this.a);
                    this.k.dispose();
                }
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
            this.d = true;
            f();
            this.a.onError(th);
            this.k.dispose();
        }

        public void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList<>(this.l);
                this.l.clear();
            }
            for (Collection a2 : arrayList) {
                this.b.a(a2);
            }
            this.d = true;
            if (c()) {
                io.reactivex.internal.util.k.a(this.b, this.a, false, this.k, this);
            }
        }

        public void dispose() {
            if (!this.c) {
                this.c = true;
                f();
                this.m.dispose();
                this.k.dispose();
            }
        }

        public boolean isDisposed() {
            return this.c;
        }

        /* access modifiers changed from: 0000 */
        public void f() {
            synchronized (this) {
                this.l.clear();
            }
        }

        public void run() {
            if (!this.c) {
                try {
                    Collection collection = (Collection) io.reactivex.internal.functions.a.a(this.g.call(), "The bufferSupplier returned a null buffer");
                    synchronized (this) {
                        if (!this.c) {
                            this.l.add(collection);
                            this.k.a(new a(collection), this.h, this.j);
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.a.onError(th);
                    dispose();
                }
            }
        }

        public void a(q<? super U> qVar, U u) {
            qVar.onNext(u);
        }
    }

    public m(o<T> oVar, long j, long j2, TimeUnit timeUnit, r rVar, Callable<U> callable, int i, boolean z) {
        super(oVar);
        this.b = j;
        this.c = j2;
        this.d = timeUnit;
        this.e = rVar;
        this.f = callable;
        this.g = i;
        this.h = z;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super U> qVar) {
        if (this.b == this.c && this.g == Integer.MAX_VALUE) {
            this.a.subscribe(new b(new e(qVar), this.f, this.b, this.d, this.e));
            return;
        }
        io.reactivex.r.c a2 = this.e.a();
        if (this.b == this.c) {
            this.a.subscribe(new a(new e(qVar), this.f, this.b, this.d, this.g, this.h, a2));
        } else {
            this.a.subscribe(new c(new e(qVar), this.f, this.b, this.c, this.d, a2));
        }
    }
}
