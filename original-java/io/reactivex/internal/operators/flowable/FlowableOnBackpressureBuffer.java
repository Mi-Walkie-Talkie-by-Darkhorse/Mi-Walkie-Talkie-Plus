package io.reactivex.internal.operators.flowable;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.annotations.Nullable;
import io.reactivex.b.a;
import io.reactivex.e;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.f;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import org.a.b;
import org.a.c;

public final class FlowableOnBackpressureBuffer<T> extends a<T, T> {
    final int c;
    final boolean d;
    final boolean e;
    final a f;

    static final class BackpressureBufferSubscriber<T> extends BasicIntQueueSubscription<T> implements f<T> {
        private static final long serialVersionUID = -2514538129242366402L;
        final b<? super T> a;
        final io.reactivex.internal.a.f<T> b;
        final boolean c;
        final a d;
        c e;
        volatile boolean f;
        volatile boolean g;
        Throwable h;
        final AtomicLong i = new AtomicLong();
        boolean j;

        BackpressureBufferSubscriber(b<? super T> bVar, int i2, boolean z, boolean z2, a aVar) {
            io.reactivex.internal.a.f<T> spscArrayQueue;
            this.a = bVar;
            this.d = aVar;
            this.c = z2;
            if (z) {
                spscArrayQueue = new io.reactivex.internal.queue.a<>(i2);
            } else {
                spscArrayQueue = new SpscArrayQueue<>(i2);
            }
            this.b = spscArrayQueue;
        }

        public void a(c cVar) {
            if (SubscriptionHelper.a(this.e, cVar)) {
                this.e = cVar;
                this.a.a(this);
                cVar.a(FileTracerConfig.FOREVER);
            }
        }

        public void onNext(T t) {
            if (!this.b.a(t)) {
                this.e.a();
                MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
                try {
                    this.d.a();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    missingBackpressureException.initCause(th);
                }
                onError(missingBackpressureException);
            } else if (this.j) {
                this.a.onNext(null);
            } else {
                d();
            }
        }

        public void onError(Throwable th) {
            this.h = th;
            this.g = true;
            if (this.j) {
                this.a.onError(th);
            } else {
                d();
            }
        }

        public void onComplete() {
            this.g = true;
            if (this.j) {
                this.a.onComplete();
            } else {
                d();
            }
        }

        public void a(long j2) {
            if (!this.j && SubscriptionHelper.b(j2)) {
                io.reactivex.internal.util.b.a(this.i, j2);
                d();
            }
        }

        public void a() {
            if (!this.f) {
                this.f = true;
                this.e.a();
                if (getAndIncrement() == 0) {
                    this.b.c();
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void d() {
            if (getAndIncrement() == 0) {
                io.reactivex.internal.a.f<T> fVar = this.b;
                b<? super T> bVar = this.a;
                int i2 = 1;
                while (!a(this.g, fVar.b(), bVar)) {
                    long j2 = this.i.get();
                    long j3 = 0;
                    while (j3 != j2) {
                        boolean z = this.g;
                        Object e_ = fVar.e_();
                        boolean z2 = e_ == null;
                        if (a(z, z2, bVar)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        bVar.onNext(e_);
                        j3 = 1 + j3;
                    }
                    if (j3 != j2 || !a(this.g, fVar.b(), bVar)) {
                        if (!(j3 == 0 || j2 == FileTracerConfig.FOREVER)) {
                            this.i.addAndGet(-j3);
                        }
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean a(boolean z, boolean z2, b<? super T> bVar) {
            if (this.f) {
                this.b.c();
                return true;
            }
            if (z) {
                if (!this.c) {
                    Throwable th = this.h;
                    if (th != null) {
                        this.b.c();
                        bVar.onError(th);
                        return true;
                    } else if (z2) {
                        bVar.onComplete();
                        return true;
                    }
                } else if (z2) {
                    Throwable th2 = this.h;
                    if (th2 != null) {
                        bVar.onError(th2);
                        return true;
                    }
                    bVar.onComplete();
                    return true;
                }
            }
            return false;
        }

        public int a(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.j = true;
            return 2;
        }

        @Nullable
        public T e_() throws Exception {
            return this.b.e_();
        }

        public void c() {
            this.b.c();
        }

        public boolean b() {
            return this.b.b();
        }
    }

    public FlowableOnBackpressureBuffer(e<T> eVar, int i, boolean z, boolean z2, a aVar) {
        super(eVar);
        this.c = i;
        this.d = z;
        this.e = z2;
        this.f = aVar;
    }

    /* access modifiers changed from: protected */
    public void b(b<? super T> bVar) {
        this.b.a((f<? super T>) new BackpressureBufferSubscriber<Object>(bVar, this.c, this.d, this.e, this.f));
    }
}
