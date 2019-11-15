package io.reactivex.internal.operators.flowable;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.e;
import io.reactivex.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.a.b;
import org.a.c;

public final class FlowableOnBackpressureLatest<T> extends a<T, T> {

    static final class BackpressureLatestSubscriber<T> extends AtomicInteger implements f<T>, c {
        private static final long serialVersionUID = 163080509307634843L;
        final b<? super T> a;
        c b;
        volatile boolean c;
        Throwable d;
        volatile boolean e;
        final AtomicLong f = new AtomicLong();
        final AtomicReference<T> g = new AtomicReference<>();

        BackpressureLatestSubscriber(b<? super T> bVar) {
            this.a = bVar;
        }

        public void a(c cVar) {
            if (SubscriptionHelper.a(this.b, cVar)) {
                this.b = cVar;
                this.a.a(this);
                cVar.a(FileTracerConfig.FOREVER);
            }
        }

        public void onNext(T t) {
            this.g.lazySet(t);
            b();
        }

        public void onError(Throwable th) {
            this.d = th;
            this.c = true;
            b();
        }

        public void onComplete() {
            this.c = true;
            b();
        }

        public void a(long j) {
            if (SubscriptionHelper.b(j)) {
                io.reactivex.internal.util.b.a(this.f, j);
                b();
            }
        }

        public void a() {
            if (!this.e) {
                this.e = true;
                this.b.a();
                if (getAndIncrement() == 0) {
                    this.g.lazySet(null);
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            boolean z;
            if (getAndIncrement() == 0) {
                b<? super T> bVar = this.a;
                AtomicLong atomicLong = this.f;
                AtomicReference<T> atomicReference = this.g;
                int i = 1;
                do {
                    long j = 0;
                    while (j != atomicLong.get()) {
                        boolean z2 = this.c;
                        Object andSet = atomicReference.getAndSet(null);
                        boolean z3 = andSet == null;
                        if (a(z2, z3, bVar, atomicReference)) {
                            return;
                        }
                        if (z3) {
                            break;
                        }
                        bVar.onNext(andSet);
                        j++;
                    }
                    if (j == atomicLong.get()) {
                        boolean z4 = this.c;
                        if (atomicReference.get() == null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (a(z4, z, bVar, atomicReference)) {
                            return;
                        }
                    }
                    if (j != 0) {
                        io.reactivex.internal.util.b.b(atomicLong, j);
                    }
                    i = addAndGet(-i);
                } while (i != 0);
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean a(boolean z, boolean z2, b<?> bVar, AtomicReference<T> atomicReference) {
            if (this.e) {
                atomicReference.lazySet(null);
                return true;
            }
            if (z) {
                Throwable th = this.d;
                if (th != null) {
                    atomicReference.lazySet(null);
                    bVar.onError(th);
                    return true;
                } else if (z2) {
                    bVar.onComplete();
                    return true;
                }
            }
            return false;
        }
    }

    public FlowableOnBackpressureLatest(e<T> eVar) {
        super(eVar);
    }

    /* access modifiers changed from: protected */
    public void b(b<? super T> bVar) {
        this.b.a((f<? super T>) new BackpressureLatestSubscriber<Object>(bVar));
    }
}
