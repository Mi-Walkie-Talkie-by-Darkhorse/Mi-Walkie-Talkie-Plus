package io.reactivex.subjects;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.b;
import io.reactivex.internal.a.g;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.internal.queue.a;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class UnicastSubject<T> extends b<T> {
    final a<T> a;
    final AtomicReference<q<? super T>> b;
    final AtomicReference<Runnable> c;
    final boolean d;
    volatile boolean e;
    volatile boolean f;
    Throwable g;
    final AtomicBoolean h;
    final BasicIntQueueDisposable<T> i;
    boolean j;

    final class UnicastQueueDisposable extends BasicIntQueueDisposable<T> {
        private static final long serialVersionUID = 7926949470189395511L;

        UnicastQueueDisposable() {
        }

        public int a(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            UnicastSubject.this.j = true;
            return 2;
        }

        @Nullable
        public T e_() throws Exception {
            return UnicastSubject.this.a.e_();
        }

        public boolean b() {
            return UnicastSubject.this.a.b();
        }

        public void c() {
            UnicastSubject.this.a.c();
        }

        public void dispose() {
            if (!UnicastSubject.this.e) {
                UnicastSubject.this.e = true;
                UnicastSubject.this.c();
                UnicastSubject.this.b.lazySet(null);
                if (UnicastSubject.this.i.getAndIncrement() == 0) {
                    UnicastSubject.this.b.lazySet(null);
                    UnicastSubject.this.a.c();
                }
            }
        }

        public boolean isDisposed() {
            return UnicastSubject.this.e;
        }
    }

    @CheckReturnValue
    public static <T> UnicastSubject<T> a() {
        return new UnicastSubject<>(bufferSize(), true);
    }

    @CheckReturnValue
    public static <T> UnicastSubject<T> a(int i2) {
        return new UnicastSubject<>(i2, true);
    }

    @CheckReturnValue
    public static <T> UnicastSubject<T> a(int i2, Runnable runnable) {
        return new UnicastSubject<>(i2, runnable, true);
    }

    UnicastSubject(int i2, boolean z) {
        this.a = new a<>(io.reactivex.internal.functions.a.a(i2, "capacityHint"));
        this.c = new AtomicReference<>();
        this.d = z;
        this.b = new AtomicReference<>();
        this.h = new AtomicBoolean();
        this.i = new UnicastQueueDisposable();
    }

    UnicastSubject(int i2, Runnable runnable, boolean z) {
        this.a = new a<>(io.reactivex.internal.functions.a.a(i2, "capacityHint"));
        this.c = new AtomicReference<>(io.reactivex.internal.functions.a.a(runnable, "onTerminate"));
        this.d = z;
        this.b = new AtomicReference<>();
        this.h = new AtomicBoolean();
        this.i = new UnicastQueueDisposable();
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        if (this.h.get() || !this.h.compareAndSet(false, true)) {
            EmptyDisposable.a((Throwable) new IllegalStateException("Only a single observer allowed."), qVar);
            return;
        }
        qVar.onSubscribe(this.i);
        this.b.lazySet(qVar);
        if (this.e) {
            this.b.lazySet(null);
        } else {
            d();
        }
    }

    /* access modifiers changed from: 0000 */
    public void c() {
        Runnable runnable = (Runnable) this.c.get();
        if (runnable != null && this.c.compareAndSet(runnable, null)) {
            runnable.run();
        }
    }

    public void onSubscribe(b bVar) {
        if (this.f || this.e) {
            bVar.dispose();
        }
    }

    public void onNext(T t) {
        if (!this.f && !this.e) {
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            this.a.a(t);
            d();
        }
    }

    public void onError(Throwable th) {
        if (this.f || this.e) {
            io.reactivex.d.a.a(th);
            return;
        }
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        this.g = th;
        this.f = true;
        c();
        d();
    }

    public void onComplete() {
        if (!this.f && !this.e) {
            this.f = true;
            c();
            d();
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(q<? super T> qVar) {
        a<T> aVar = this.a;
        boolean z = !this.d;
        boolean z2 = true;
        int i2 = 1;
        while (!this.e) {
            boolean z3 = this.f;
            Object e_ = this.a.e_();
            boolean z4 = e_ == null;
            if (z3) {
                if (z && z2) {
                    if (!a((g<T>) aVar, qVar)) {
                        z2 = false;
                    } else {
                        return;
                    }
                }
                if (z4) {
                    c(qVar);
                    return;
                }
            }
            if (z4) {
                i2 = this.i.addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            } else {
                qVar.onNext(e_);
            }
        }
        this.b.lazySet(null);
        aVar.c();
    }

    /* access modifiers changed from: 0000 */
    public void b(q<? super T> qVar) {
        int i2 = 1;
        a<T> aVar = this.a;
        boolean z = !this.d;
        while (!this.e) {
            boolean z2 = this.f;
            if (!z || !z2 || !a((g<T>) aVar, qVar)) {
                qVar.onNext(null);
                if (z2) {
                    c(qVar);
                    return;
                }
                i2 = this.i.addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            } else {
                return;
            }
        }
        this.b.lazySet(null);
        aVar.c();
    }

    /* access modifiers changed from: 0000 */
    public void c(q<? super T> qVar) {
        this.b.lazySet(null);
        Throwable th = this.g;
        if (th != null) {
            qVar.onError(th);
        } else {
            qVar.onComplete();
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean a(g<T> gVar, q<? super T> qVar) {
        Throwable th = this.g;
        if (th == null) {
            return false;
        }
        this.b.lazySet(null);
        gVar.c();
        qVar.onError(th);
        return true;
    }

    /* access modifiers changed from: 0000 */
    public void d() {
        if (this.i.getAndIncrement() == 0) {
            q qVar = (q) this.b.get();
            int i2 = 1;
            while (qVar == null) {
                int addAndGet = this.i.addAndGet(-i2);
                if (addAndGet != 0) {
                    int i3 = addAndGet;
                    qVar = (q) this.b.get();
                    i2 = i3;
                } else {
                    return;
                }
            }
            if (this.j) {
                b(qVar);
            } else {
                a(qVar);
            }
        }
    }
}
