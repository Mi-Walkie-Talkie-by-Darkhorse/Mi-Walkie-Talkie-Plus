package io.reactivex.internal.operators.observable;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import io.reactivex.r;
import io.reactivex.subjects.UnicastSubject;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWindowTimed */
public final class ca<T> extends a<T, k<T>> {
    final long b;
    final long c;
    final TimeUnit d;
    final r e;
    final long f;
    final int g;
    final boolean h;

    /* compiled from: ObservableWindowTimed */
    static final class a<T> extends io.reactivex.internal.observers.k<T, Object, k<T>> implements io.reactivex.disposables.b {
        final long g;
        final TimeUnit h;
        final r i;
        final int j;
        final boolean k;
        final long l;
        final io.reactivex.r.c m;
        long n;
        long o;
        io.reactivex.disposables.b p;
        UnicastSubject<T> q;
        volatile boolean r;
        final AtomicReference<io.reactivex.disposables.b> s = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.observable.ca$a$a reason: collision with other inner class name */
        /* compiled from: ObservableWindowTimed */
        static final class C0085a implements Runnable {
            final long a;
            final a<?> b;

            C0085a(long j, a<?> aVar) {
                this.a = j;
                this.b = aVar;
            }

            public void run() {
                a<?> aVar = this.b;
                if (!aVar.c) {
                    aVar.b.a(this);
                } else {
                    aVar.r = true;
                    aVar.f();
                }
                if (aVar.c()) {
                    aVar.g();
                }
            }
        }

        a(q<? super k<T>> qVar, long j2, TimeUnit timeUnit, r rVar, int i2, long j3, boolean z) {
            super(qVar, new MpscLinkedQueue());
            this.g = j2;
            this.h = timeUnit;
            this.i = rVar;
            this.j = i2;
            this.l = j3;
            this.k = z;
            if (z) {
                this.m = rVar.a();
            } else {
                this.m = null;
            }
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            io.reactivex.disposables.b a;
            if (DisposableHelper.a(this.p, bVar)) {
                this.p = bVar;
                q qVar = this.a;
                qVar.onSubscribe(this);
                if (!this.c) {
                    UnicastSubject<T> a2 = UnicastSubject.a(this.j);
                    this.q = a2;
                    qVar.onNext(a2);
                    C0085a aVar = new C0085a(this.o, this);
                    if (this.k) {
                        a = this.m.a(aVar, this.g, this.g, this.h);
                    } else {
                        a = this.i.a(aVar, this.g, this.g, this.h);
                    }
                    DisposableHelper.c(this.s, a);
                }
            }
        }

        public void onNext(T t) {
            if (!this.r) {
                if (d()) {
                    UnicastSubject<T> unicastSubject = this.q;
                    unicastSubject.onNext(t);
                    long j2 = this.n + 1;
                    if (j2 >= this.l) {
                        this.o++;
                        this.n = 0;
                        unicastSubject.onComplete();
                        UnicastSubject<T> a = UnicastSubject.a(this.j);
                        this.q = a;
                        this.a.onNext(a);
                        if (this.k) {
                            ((io.reactivex.disposables.b) this.s.get()).dispose();
                            DisposableHelper.c(this.s, this.m.a(new C0085a(this.o, this), this.g, this.g, this.h));
                        }
                    } else {
                        this.n = j2;
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
        }

        public void onError(Throwable th) {
            this.e = th;
            this.d = true;
            if (c()) {
                g();
            }
            this.a.onError(th);
            f();
        }

        public void onComplete() {
            this.d = true;
            if (c()) {
                g();
            }
            this.a.onComplete();
            f();
        }

        public void dispose() {
            this.c = true;
        }

        public boolean isDisposed() {
            return this.c;
        }

        /* access modifiers changed from: 0000 */
        public void f() {
            DisposableHelper.a(this.s);
            io.reactivex.r.c cVar = this.m;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        /* access modifiers changed from: 0000 */
        public void g() {
            UnicastSubject<T> unicastSubject;
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.b;
            q qVar = this.a;
            UnicastSubject<T> unicastSubject2 = this.q;
            int i2 = 1;
            while (!this.r) {
                boolean z = this.d;
                Object e_ = mpscLinkedQueue.e_();
                boolean z2 = e_ == null;
                boolean z3 = e_ instanceof C0085a;
                if (z && (z2 || z3)) {
                    this.q = null;
                    mpscLinkedQueue.c();
                    f();
                    Throwable th = this.e;
                    if (th != null) {
                        unicastSubject2.onError(th);
                        return;
                    } else {
                        unicastSubject2.onComplete();
                        return;
                    }
                } else if (z2) {
                    int a = a(-i2);
                    if (a != 0) {
                        i2 = a;
                    } else {
                        return;
                    }
                } else if (z3) {
                    C0085a aVar = (C0085a) e_;
                    if (this.k || this.o == aVar.a) {
                        unicastSubject2.onComplete();
                        this.n = 0;
                        UnicastSubject<T> a2 = UnicastSubject.a(this.j);
                        this.q = a2;
                        qVar.onNext(a2);
                        unicastSubject2 = a2;
                    }
                } else {
                    unicastSubject2.onNext(NotificationLite.e(e_));
                    long j2 = this.n + 1;
                    if (j2 >= this.l) {
                        this.o++;
                        this.n = 0;
                        unicastSubject2.onComplete();
                        UnicastSubject<T> a3 = UnicastSubject.a(this.j);
                        this.q = a3;
                        this.a.onNext(a3);
                        if (this.k) {
                            io.reactivex.disposables.b bVar = (io.reactivex.disposables.b) this.s.get();
                            bVar.dispose();
                            io.reactivex.disposables.b a4 = this.m.a(new C0085a(this.o, this), this.g, this.g, this.h);
                            if (!this.s.compareAndSet(bVar, a4)) {
                                a4.dispose();
                            }
                            unicastSubject = a3;
                        } else {
                            unicastSubject = a3;
                        }
                    } else {
                        this.n = j2;
                        unicastSubject = unicastSubject2;
                    }
                    unicastSubject2 = unicastSubject;
                }
            }
            this.p.dispose();
            mpscLinkedQueue.c();
            f();
        }
    }

    /* compiled from: ObservableWindowTimed */
    static final class b<T> extends io.reactivex.internal.observers.k<T, Object, k<T>> implements io.reactivex.disposables.b, q<T>, Runnable {
        static final Object n = new Object();
        final long g;
        final TimeUnit h;
        final r i;
        final int j;
        io.reactivex.disposables.b k;
        UnicastSubject<T> l;
        final AtomicReference<io.reactivex.disposables.b> m = new AtomicReference<>();
        volatile boolean o;

        b(q<? super k<T>> qVar, long j2, TimeUnit timeUnit, r rVar, int i2) {
            super(qVar, new MpscLinkedQueue());
            this.g = j2;
            this.h = timeUnit;
            this.i = rVar;
            this.j = i2;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.k, bVar)) {
                this.k = bVar;
                this.l = UnicastSubject.a(this.j);
                q qVar = this.a;
                qVar.onSubscribe(this);
                qVar.onNext(this.l);
                if (!this.c) {
                    DisposableHelper.c(this.m, this.i.a(this, this.g, this.g, this.h));
                }
            }
        }

        public void onNext(T t) {
            if (!this.o) {
                if (d()) {
                    this.l.onNext(t);
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
        }

        public void onError(Throwable th) {
            this.e = th;
            this.d = true;
            if (c()) {
                g();
            }
            f();
            this.a.onError(th);
        }

        public void onComplete() {
            this.d = true;
            if (c()) {
                g();
            }
            f();
            this.a.onComplete();
        }

        public void dispose() {
            this.c = true;
        }

        public boolean isDisposed() {
            return this.c;
        }

        /* access modifiers changed from: 0000 */
        public void f() {
            DisposableHelper.a(this.m);
        }

        public void run() {
            if (this.c) {
                this.o = true;
                f();
            }
            this.b.a(n);
            if (c()) {
                g();
            }
        }

        /* access modifiers changed from: 0000 */
        public void g() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.b;
            q qVar = this.a;
            UnicastSubject<T> unicastSubject = this.l;
            int i2 = 1;
            while (true) {
                boolean z = this.o;
                boolean z2 = this.d;
                Object e_ = mpscLinkedQueue.e_();
                if (!z2 || !(e_ == null || e_ == n)) {
                    if (e_ == null) {
                        i2 = a(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    } else if (e_ == n) {
                        unicastSubject.onComplete();
                        if (!z) {
                            unicastSubject = UnicastSubject.a(this.j);
                            this.l = unicastSubject;
                            qVar.onNext(unicastSubject);
                        } else {
                            this.k.dispose();
                        }
                    } else {
                        unicastSubject.onNext(NotificationLite.e(e_));
                    }
                }
            }
            this.l = null;
            mpscLinkedQueue.c();
            f();
            Throwable th = this.e;
            if (th != null) {
                unicastSubject.onError(th);
            } else {
                unicastSubject.onComplete();
            }
        }
    }

    /* compiled from: ObservableWindowTimed */
    static final class c<T> extends io.reactivex.internal.observers.k<T, Object, k<T>> implements io.reactivex.disposables.b, Runnable {
        final long g;
        final long h;
        final TimeUnit i;
        final io.reactivex.r.c j;
        final int k;
        final List<UnicastSubject<T>> l = new LinkedList();
        io.reactivex.disposables.b m;
        volatile boolean n;

        /* compiled from: ObservableWindowTimed */
        final class a implements Runnable {
            private final UnicastSubject<T> b;

            a(UnicastSubject<T> unicastSubject) {
                this.b = unicastSubject;
            }

            public void run() {
                c.this.a(this.b);
            }
        }

        /* compiled from: ObservableWindowTimed */
        static final class b<T> {
            final UnicastSubject<T> a;
            final boolean b;

            b(UnicastSubject<T> unicastSubject, boolean z) {
                this.a = unicastSubject;
                this.b = z;
            }
        }

        c(q<? super k<T>> qVar, long j2, long j3, TimeUnit timeUnit, io.reactivex.r.c cVar, int i2) {
            super(qVar, new MpscLinkedQueue());
            this.g = j2;
            this.h = j3;
            this.i = timeUnit;
            this.j = cVar;
            this.k = i2;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.m, bVar)) {
                this.m = bVar;
                this.a.onSubscribe(this);
                if (!this.c) {
                    UnicastSubject a2 = UnicastSubject.a(this.k);
                    this.l.add(a2);
                    this.a.onNext(a2);
                    this.j.a(new a(a2), this.g, this.i);
                    this.j.a(this, this.h, this.h, this.i);
                }
            }
        }

        public void onNext(T t) {
            if (d()) {
                for (UnicastSubject onNext : this.l) {
                    onNext.onNext(t);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.b.a(t);
                if (!c()) {
                    return;
                }
            }
            g();
        }

        public void onError(Throwable th) {
            this.e = th;
            this.d = true;
            if (c()) {
                g();
            }
            this.a.onError(th);
            f();
        }

        public void onComplete() {
            this.d = true;
            if (c()) {
                g();
            }
            this.a.onComplete();
            f();
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
        }

        /* access modifiers changed from: 0000 */
        public void a(UnicastSubject<T> unicastSubject) {
            this.b.a(new b(unicastSubject, false));
            if (c()) {
                g();
            }
        }

        /* access modifiers changed from: 0000 */
        public void g() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.b;
            q qVar = this.a;
            List<UnicastSubject<T>> list = this.l;
            int i2 = 1;
            while (!this.n) {
                boolean z = this.d;
                Object e_ = mpscLinkedQueue.e_();
                boolean z2 = e_ == null;
                boolean z3 = e_ instanceof b;
                if (z && (z2 || z3)) {
                    mpscLinkedQueue.c();
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
                    f();
                    list.clear();
                    return;
                } else if (z2) {
                    int a2 = a(-i2);
                    if (a2 != 0) {
                        i2 = a2;
                    } else {
                        return;
                    }
                } else if (z3) {
                    b bVar = (b) e_;
                    if (!bVar.b) {
                        list.remove(bVar.a);
                        bVar.a.onComplete();
                        if (list.isEmpty() && this.c) {
                            this.n = true;
                        }
                    } else if (!this.c) {
                        UnicastSubject a3 = UnicastSubject.a(this.k);
                        list.add(a3);
                        qVar.onNext(a3);
                        this.j.a(new a(a3), this.g, this.i);
                    }
                } else {
                    for (UnicastSubject onNext : list) {
                        onNext.onNext(e_);
                    }
                }
            }
            this.m.dispose();
            f();
            mpscLinkedQueue.c();
            list.clear();
        }

        public void run() {
            b bVar = new b(UnicastSubject.a(this.k), true);
            if (!this.c) {
                this.b.a(bVar);
            }
            if (c()) {
                g();
            }
        }
    }

    public ca(o<T> oVar, long j, long j2, TimeUnit timeUnit, r rVar, long j3, int i, boolean z) {
        super(oVar);
        this.b = j;
        this.c = j2;
        this.d = timeUnit;
        this.e = rVar;
        this.f = j3;
        this.g = i;
        this.h = z;
    }

    public void subscribeActual(q<? super k<T>> qVar) {
        e eVar = new e(qVar);
        if (this.b != this.c) {
            this.a.subscribe(new c(eVar, this.b, this.c, this.d, this.e.a(), this.g));
        } else if (this.f == FileTracerConfig.FOREVER) {
            this.a.subscribe(new b(eVar, this.b, this.d, this.e, this.g));
        } else {
            this.a.subscribe(new a(eVar, this.b, this.d, this.e, this.g, this.f, this.h));
        }
    }
}
