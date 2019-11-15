package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.observers.h;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import io.reactivex.r;
import io.reactivex.r.c;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableTimeoutTimed<T> extends a<T, T> {
    static final b f = new a();
    final long b;
    final TimeUnit c;
    final r d;
    final o<? extends T> e;

    static final class TimeoutTimedObserver<T> extends AtomicReference<b> implements b, q<T> {
        private static final long serialVersionUID = -8387234228317808253L;
        final q<? super T> a;
        final long b;
        final TimeUnit c;
        final c d;
        b e;
        volatile long f;
        volatile boolean g;

        final class a implements Runnable {
            private final long b;

            a(long j) {
                this.b = j;
            }

            public void run() {
                if (this.b == TimeoutTimedObserver.this.f) {
                    TimeoutTimedObserver.this.g = true;
                    TimeoutTimedObserver.this.e.dispose();
                    DisposableHelper.a((AtomicReference<b>) TimeoutTimedObserver.this);
                    TimeoutTimedObserver.this.a.onError(new TimeoutException());
                    TimeoutTimedObserver.this.d.dispose();
                }
            }
        }

        TimeoutTimedObserver(q<? super T> qVar, long j, TimeUnit timeUnit, c cVar) {
            this.a = qVar;
            this.b = j;
            this.c = timeUnit;
            this.d = cVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.e, bVar)) {
                this.e = bVar;
                this.a.onSubscribe(this);
                a(0);
            }
        }

        public void onNext(T t) {
            if (!this.g) {
                long j = this.f + 1;
                this.f = j;
                this.a.onNext(t);
                a(j);
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(long j) {
            b bVar = (b) get();
            if (bVar != null) {
                bVar.dispose();
            }
            if (compareAndSet(bVar, ObservableTimeoutTimed.f)) {
                DisposableHelper.c(this, this.d.a(new a(j), this.b, this.c));
            }
        }

        public void onError(Throwable th) {
            if (this.g) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.g = true;
            this.a.onError(th);
            dispose();
        }

        public void onComplete() {
            if (!this.g) {
                this.g = true;
                this.a.onComplete();
                dispose();
            }
        }

        public void dispose() {
            this.e.dispose();
            this.d.dispose();
        }

        public boolean isDisposed() {
            return this.d.isDisposed();
        }
    }

    static final class TimeoutTimedOtherObserver<T> extends AtomicReference<b> implements b, q<T> {
        private static final long serialVersionUID = -4619702551964128179L;
        final q<? super T> a;
        final long b;
        final TimeUnit c;
        final c d;
        final o<? extends T> e;
        b f;
        final f<T> g;
        volatile long h;
        volatile boolean i;

        final class a implements Runnable {
            private final long b;

            a(long j) {
                this.b = j;
            }

            public void run() {
                if (this.b == TimeoutTimedOtherObserver.this.h) {
                    TimeoutTimedOtherObserver.this.i = true;
                    TimeoutTimedOtherObserver.this.f.dispose();
                    DisposableHelper.a((AtomicReference<b>) TimeoutTimedOtherObserver.this);
                    TimeoutTimedOtherObserver.this.a();
                    TimeoutTimedOtherObserver.this.d.dispose();
                }
            }
        }

        TimeoutTimedOtherObserver(q<? super T> qVar, long j, TimeUnit timeUnit, c cVar, o<? extends T> oVar) {
            this.a = qVar;
            this.b = j;
            this.c = timeUnit;
            this.d = cVar;
            this.e = oVar;
            this.g = new f<>(qVar, this, 8);
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.f, bVar)) {
                this.f = bVar;
                if (this.g.a(bVar)) {
                    this.a.onSubscribe(this.g);
                    a(0);
                }
            }
        }

        public void onNext(T t) {
            if (!this.i) {
                long j = this.h + 1;
                this.h = j;
                if (this.g.a(t, this.f)) {
                    a(j);
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(long j) {
            b bVar = (b) get();
            if (bVar != null) {
                bVar.dispose();
            }
            if (compareAndSet(bVar, ObservableTimeoutTimed.f)) {
                DisposableHelper.c(this, this.d.a(new a(j), this.b, this.c));
            }
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            this.e.subscribe(new h(this.g));
        }

        public void onError(Throwable th) {
            if (this.i) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.i = true;
            this.g.a(th, this.f);
            this.d.dispose();
        }

        public void onComplete() {
            if (!this.i) {
                this.i = true;
                this.g.b(this.f);
                this.d.dispose();
            }
        }

        public void dispose() {
            this.f.dispose();
            this.d.dispose();
        }

        public boolean isDisposed() {
            return this.d.isDisposed();
        }
    }

    static final class a implements b {
        a() {
        }

        public void dispose() {
        }

        public boolean isDisposed() {
            return true;
        }
    }

    public ObservableTimeoutTimed(o<T> oVar, long j, TimeUnit timeUnit, r rVar, o<? extends T> oVar2) {
        super(oVar);
        this.b = j;
        this.c = timeUnit;
        this.d = rVar;
        this.e = oVar2;
    }

    public void subscribeActual(q<? super T> qVar) {
        if (this.e == null) {
            this.a.subscribe(new TimeoutTimedObserver(new e(qVar), this.b, this.c, this.d.a()));
            return;
        }
        this.a.subscribe(new TimeoutTimedOtherObserver(qVar, this.b, this.c, this.d.a(), this.e));
    }
}
