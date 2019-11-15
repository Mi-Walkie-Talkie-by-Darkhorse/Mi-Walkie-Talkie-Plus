package io.reactivex.internal.operators.observable;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.a;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.r;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ObservableTakeLastTimed<T> extends a<T, T> {
    final long b;
    final long c;
    final TimeUnit d;
    final r e;
    final int f;
    final boolean g;

    static final class TakeLastTimedObserver<T> extends AtomicBoolean implements b, q<T> {
        private static final long serialVersionUID = -5677354903406201275L;
        final q<? super T> a;
        final long b;
        final long c;
        final TimeUnit d;
        final r e;
        final a<Object> f;
        final boolean g;
        b h;
        volatile boolean i;
        Throwable j;

        TakeLastTimedObserver(q<? super T> qVar, long j2, long j3, TimeUnit timeUnit, r rVar, int i2, boolean z) {
            this.a = qVar;
            this.b = j2;
            this.c = j3;
            this.d = timeUnit;
            this.e = rVar;
            this.f = new a<>(i2);
            this.g = z;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.h, bVar)) {
                this.h = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            boolean z;
            a<Object> aVar = this.f;
            long a2 = this.e.a(this.d);
            long j2 = this.c;
            long j3 = this.b;
            if (j3 == FileTracerConfig.FOREVER) {
                z = true;
            } else {
                z = false;
            }
            aVar.a(Long.valueOf(a2), t);
            while (!aVar.b()) {
                if (((Long) aVar.d()).longValue() <= a2 - j2 || (!z && ((long) (aVar.e() >> 1)) > j3)) {
                    aVar.e_();
                    aVar.e_();
                } else {
                    return;
                }
            }
        }

        public void onError(Throwable th) {
            this.j = th;
            a();
        }

        public void onComplete() {
            a();
        }

        public void dispose() {
            if (!this.i) {
                this.i = true;
                this.h.dispose();
                if (compareAndSet(false, true)) {
                    this.f.c();
                }
            }
        }

        public boolean isDisposed() {
            return this.i;
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            if (compareAndSet(false, true)) {
                q<? super T> qVar = this.a;
                a<Object> aVar = this.f;
                boolean z = this.g;
                while (!this.i) {
                    if (!z) {
                        Throwable th = this.j;
                        if (th != null) {
                            aVar.c();
                            qVar.onError(th);
                            return;
                        }
                    }
                    Object e_ = aVar.e_();
                    if (e_ == null) {
                        Throwable th2 = this.j;
                        if (th2 != null) {
                            qVar.onError(th2);
                            return;
                        } else {
                            qVar.onComplete();
                            return;
                        }
                    } else {
                        Object e_2 = aVar.e_();
                        if (((Long) e_).longValue() >= this.e.a(this.d) - this.c) {
                            qVar.onNext(e_2);
                        }
                    }
                }
                aVar.c();
            }
        }
    }

    public ObservableTakeLastTimed(o<T> oVar, long j, long j2, TimeUnit timeUnit, r rVar, int i, boolean z) {
        super(oVar);
        this.b = j;
        this.c = j2;
        this.d = timeUnit;
        this.e = rVar;
        this.f = i;
        this.g = z;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new TakeLastTimedObserver(qVar, this.b, this.c, this.d, this.e, this.f, this.g));
    }
}
