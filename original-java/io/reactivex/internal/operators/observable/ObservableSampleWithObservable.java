package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableSampleWithObservable<T> extends a<T, T> {
    final o<?> b;
    final boolean c;

    static final class SampleMainEmitLast<T> extends SampleMainObserver<T> {
        private static final long serialVersionUID = -3029755663834015785L;
        final AtomicInteger a = new AtomicInteger();
        volatile boolean b;

        SampleMainEmitLast(q<? super T> qVar, o<?> oVar) {
            super(qVar, oVar);
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            this.b = true;
            if (this.a.getAndIncrement() == 0) {
                e();
                this.c.onComplete();
            }
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            this.b = true;
            if (this.a.getAndIncrement() == 0) {
                e();
                this.c.onComplete();
            }
        }

        /* access modifiers changed from: 0000 */
        public void c() {
            if (this.a.getAndIncrement() == 0) {
                do {
                    boolean z = this.b;
                    e();
                    if (z) {
                        this.c.onComplete();
                        return;
                    }
                } while (this.a.decrementAndGet() != 0);
            }
        }
    }

    static final class SampleMainNoLast<T> extends SampleMainObserver<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        SampleMainNoLast(q<? super T> qVar, o<?> oVar) {
            super(qVar, oVar);
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            this.c.onComplete();
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            this.c.onComplete();
        }

        /* access modifiers changed from: 0000 */
        public void c() {
            e();
        }
    }

    static abstract class SampleMainObserver<T> extends AtomicReference<T> implements b, q<T> {
        private static final long serialVersionUID = -3517602651313910099L;
        final q<? super T> c;
        final o<?> d;
        final AtomicReference<b> e = new AtomicReference<>();
        b f;

        /* access modifiers changed from: 0000 */
        public abstract void a();

        /* access modifiers changed from: 0000 */
        public abstract void b();

        /* access modifiers changed from: 0000 */
        public abstract void c();

        SampleMainObserver(q<? super T> qVar, o<?> oVar) {
            this.c = qVar;
            this.d = oVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.f, bVar)) {
                this.f = bVar;
                this.c.onSubscribe(this);
                if (this.e.get() == null) {
                    this.d.subscribe(new a(this));
                }
            }
        }

        public void onNext(T t) {
            lazySet(t);
        }

        public void onError(Throwable th) {
            DisposableHelper.a(this.e);
            this.c.onError(th);
        }

        public void onComplete() {
            DisposableHelper.a(this.e);
            a();
        }

        /* access modifiers changed from: 0000 */
        public boolean a(b bVar) {
            return DisposableHelper.b(this.e, bVar);
        }

        public void dispose() {
            DisposableHelper.a(this.e);
            this.f.dispose();
        }

        public boolean isDisposed() {
            return this.e.get() == DisposableHelper.DISPOSED;
        }

        public void a(Throwable th) {
            this.f.dispose();
            this.c.onError(th);
        }

        public void d() {
            this.f.dispose();
            b();
        }

        /* access modifiers changed from: 0000 */
        public void e() {
            Object andSet = getAndSet(null);
            if (andSet != null) {
                this.c.onNext(andSet);
            }
        }
    }

    static final class a<T> implements q<Object> {
        final SampleMainObserver<T> a;

        a(SampleMainObserver<T> sampleMainObserver) {
            this.a = sampleMainObserver;
        }

        public void onSubscribe(b bVar) {
            this.a.a(bVar);
        }

        public void onNext(Object obj) {
            this.a.c();
        }

        public void onError(Throwable th) {
            this.a.a(th);
        }

        public void onComplete() {
            this.a.d();
        }
    }

    public ObservableSampleWithObservable(o<T> oVar, o<?> oVar2, boolean z) {
        super(oVar);
        this.b = oVar2;
        this.c = z;
    }

    public void subscribeActual(q<? super T> qVar) {
        e eVar = new e(qVar);
        if (this.c) {
            this.a.subscribe(new SampleMainEmitLast(eVar, this.b));
        } else {
            this.a.subscribe(new SampleMainNoLast(eVar, this.b));
        }
    }
}
