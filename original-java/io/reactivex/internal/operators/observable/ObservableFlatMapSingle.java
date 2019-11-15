package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.a;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.u;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableFlatMapSingle<T, R> extends a<T, R> {
    final g<? super T, ? extends u<? extends R>> b;
    final boolean c;

    static final class FlatMapSingleObserver<T, R> extends AtomicInteger implements b, q<T> {
        private static final long serialVersionUID = 8600231336733376951L;
        final q<? super R> a;
        final boolean b;
        final a c = new a();
        final AtomicInteger d = new AtomicInteger(1);
        final AtomicThrowable e = new AtomicThrowable();
        final g<? super T, ? extends u<? extends R>> f;
        final AtomicReference<io.reactivex.internal.queue.a<R>> g = new AtomicReference<>();
        b h;
        volatile boolean i;

        final class InnerObserver extends AtomicReference<b> implements b, t<R> {
            private static final long serialVersionUID = -502562646270949838L;

            InnerObserver() {
            }

            public void onSubscribe(b bVar) {
                DisposableHelper.b(this, bVar);
            }

            public void a(R r) {
                FlatMapSingleObserver.this.a(this, r);
            }

            public void onError(Throwable th) {
                FlatMapSingleObserver.this.a(this, th);
            }

            public boolean isDisposed() {
                return DisposableHelper.a((b) get());
            }

            public void dispose() {
                DisposableHelper.a((AtomicReference<b>) this);
            }
        }

        FlatMapSingleObserver(q<? super R> qVar, g<? super T, ? extends u<? extends R>> gVar, boolean z) {
            this.a = qVar;
            this.f = gVar;
            this.b = z;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.h, bVar)) {
                this.h = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            try {
                u uVar = (u) io.reactivex.internal.functions.a.a(this.f.apply(t), "The mapper returned a null SingleSource");
                this.d.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (!this.i && this.c.a((b) innerObserver)) {
                    uVar.a(innerObserver);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.h.dispose();
                onError(th);
            }
        }

        public void onError(Throwable th) {
            this.d.decrementAndGet();
            if (this.e.a(th)) {
                if (!this.b) {
                    this.c.dispose();
                }
                b();
                return;
            }
            io.reactivex.d.a.a(th);
        }

        public void onComplete() {
            this.d.decrementAndGet();
            b();
        }

        public void dispose() {
            this.i = true;
            this.h.dispose();
            this.c.dispose();
        }

        public boolean isDisposed() {
            return this.i;
        }

        /* access modifiers changed from: 0000 */
        public void a(InnerObserver innerObserver, R r) {
            boolean z = false;
            this.c.c(innerObserver);
            if (get() != 0 || !compareAndSet(0, 1)) {
                io.reactivex.internal.queue.a a2 = a();
                synchronized (a2) {
                    a2.a(r);
                }
                this.d.decrementAndGet();
                if (getAndIncrement() != 0) {
                    return;
                }
            } else {
                this.a.onNext(r);
                if (this.d.decrementAndGet() == 0) {
                    z = true;
                }
                io.reactivex.internal.queue.a aVar = (io.reactivex.internal.queue.a) this.g.get();
                if (z && (aVar == null || aVar.b())) {
                    Throwable a3 = this.e.a();
                    if (a3 != null) {
                        this.a.onError(a3);
                        return;
                    } else {
                        this.a.onComplete();
                        return;
                    }
                } else if (decrementAndGet() == 0) {
                    return;
                }
            }
            d();
        }

        /* access modifiers changed from: 0000 */
        public io.reactivex.internal.queue.a<R> a() {
            io.reactivex.internal.queue.a<R> aVar;
            do {
                aVar = (io.reactivex.internal.queue.a) this.g.get();
                if (aVar != null) {
                    break;
                }
                aVar = new io.reactivex.internal.queue.a<>(k.bufferSize());
            } while (!this.g.compareAndSet(null, aVar));
            return aVar;
        }

        /* access modifiers changed from: 0000 */
        public void a(InnerObserver innerObserver, Throwable th) {
            this.c.c(innerObserver);
            if (this.e.a(th)) {
                if (!this.b) {
                    this.h.dispose();
                    this.c.dispose();
                }
                this.d.decrementAndGet();
                b();
                return;
            }
            io.reactivex.d.a.a(th);
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            if (getAndIncrement() == 0) {
                d();
            }
        }

        /* access modifiers changed from: 0000 */
        public void c() {
            io.reactivex.internal.queue.a aVar = (io.reactivex.internal.queue.a) this.g.get();
            if (aVar != null) {
                aVar.c();
            }
        }

        /* access modifiers changed from: 0000 */
        public void d() {
            boolean z;
            q<? super R> qVar = this.a;
            AtomicInteger atomicInteger = this.d;
            AtomicReference<io.reactivex.internal.queue.a<R>> atomicReference = this.g;
            int i2 = 1;
            while (!this.i) {
                if (this.b || ((Throwable) this.e.get()) == null) {
                    boolean z2 = atomicInteger.get() == 0;
                    io.reactivex.internal.queue.a aVar = (io.reactivex.internal.queue.a) atomicReference.get();
                    Object obj = aVar != null ? aVar.e_() : null;
                    if (obj == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z2 && z) {
                        Throwable a2 = this.e.a();
                        if (a2 != null) {
                            qVar.onError(a2);
                            return;
                        } else {
                            qVar.onComplete();
                            return;
                        }
                    } else if (z) {
                        int addAndGet = addAndGet(-i2);
                        if (addAndGet != 0) {
                            i2 = addAndGet;
                        } else {
                            return;
                        }
                    } else {
                        qVar.onNext(obj);
                    }
                } else {
                    Throwable a3 = this.e.a();
                    c();
                    qVar.onError(a3);
                    return;
                }
            }
            c();
        }
    }

    public ObservableFlatMapSingle(o<T> oVar, g<? super T, ? extends u<? extends R>> gVar, boolean z) {
        super(oVar);
        this.b = gVar;
        this.c = z;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super R> qVar) {
        this.a.subscribe(new FlatMapSingleObserver(qVar, this.b, this.c));
    }
}
