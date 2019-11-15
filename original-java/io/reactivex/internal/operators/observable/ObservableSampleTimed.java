package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import io.reactivex.r;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableSampleTimed<T> extends a<T, T> {
    final long b;
    final TimeUnit c;
    final r d;
    final boolean e;

    static final class SampleTimedEmitLast<T> extends SampleTimedObserver<T> {
        private static final long serialVersionUID = -7139995637533111443L;
        final AtomicInteger a = new AtomicInteger(1);

        SampleTimedEmitLast(q<? super T> qVar, long j, TimeUnit timeUnit, r rVar) {
            super(qVar, j, timeUnit, rVar);
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            c();
            if (this.a.decrementAndGet() == 0) {
                this.b.onComplete();
            }
        }

        public void run() {
            if (this.a.incrementAndGet() == 2) {
                c();
                if (this.a.decrementAndGet() == 0) {
                    this.b.onComplete();
                }
            }
        }
    }

    static final class SampleTimedNoLast<T> extends SampleTimedObserver<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        SampleTimedNoLast(q<? super T> qVar, long j, TimeUnit timeUnit, r rVar) {
            super(qVar, j, timeUnit, rVar);
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            this.b.onComplete();
        }

        public void run() {
            c();
        }
    }

    static abstract class SampleTimedObserver<T> extends AtomicReference<T> implements b, q<T>, Runnable {
        private static final long serialVersionUID = -3517602651313910099L;
        final q<? super T> b;
        final long c;
        final TimeUnit d;
        final r e;
        final AtomicReference<b> f = new AtomicReference<>();
        b g;

        /* access modifiers changed from: 0000 */
        public abstract void a();

        SampleTimedObserver(q<? super T> qVar, long j, TimeUnit timeUnit, r rVar) {
            this.b = qVar;
            this.c = j;
            this.d = timeUnit;
            this.e = rVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.g, bVar)) {
                this.g = bVar;
                this.b.onSubscribe(this);
                DisposableHelper.c(this.f, this.e.a(this, this.c, this.c, this.d));
            }
        }

        public void onNext(T t) {
            lazySet(t);
        }

        public void onError(Throwable th) {
            b();
            this.b.onError(th);
        }

        public void onComplete() {
            b();
            a();
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            DisposableHelper.a(this.f);
        }

        public void dispose() {
            b();
            this.g.dispose();
        }

        public boolean isDisposed() {
            return this.g.isDisposed();
        }

        /* access modifiers changed from: 0000 */
        public void c() {
            Object andSet = getAndSet(null);
            if (andSet != null) {
                this.b.onNext(andSet);
            }
        }
    }

    public ObservableSampleTimed(o<T> oVar, long j, TimeUnit timeUnit, r rVar, boolean z) {
        super(oVar);
        this.b = j;
        this.c = timeUnit;
        this.d = rVar;
        this.e = z;
    }

    public void subscribeActual(q<? super T> qVar) {
        e eVar = new e(qVar);
        if (this.e) {
            this.a.subscribe(new SampleTimedEmitLast(eVar, this.b, this.c, this.d));
        } else {
            this.a.subscribe(new SampleTimedNoLast(eVar, this.b, this.c, this.d));
        }
    }
}
