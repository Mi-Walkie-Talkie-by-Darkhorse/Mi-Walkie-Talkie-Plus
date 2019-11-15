package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.a;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.r;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableSkipLastTimed<T> extends a<T, T> {
    final long b;
    final TimeUnit c;
    final r d;
    final int e;
    final boolean f;

    static final class SkipLastTimedObserver<T> extends AtomicInteger implements b, q<T> {
        private static final long serialVersionUID = -5677354903406201275L;
        final q<? super T> a;
        final long b;
        final TimeUnit c;
        final r d;
        final a<Object> e;
        final boolean f;
        b g;
        volatile boolean h;
        volatile boolean i;
        Throwable j;

        SkipLastTimedObserver(q<? super T> qVar, long j2, TimeUnit timeUnit, r rVar, int i2, boolean z) {
            this.a = qVar;
            this.b = j2;
            this.c = timeUnit;
            this.d = rVar;
            this.e = new a<>(i2);
            this.f = z;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.g, bVar)) {
                this.g = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            this.e.a(Long.valueOf(this.d.a(this.c)), t);
            a();
        }

        public void onError(Throwable th) {
            this.j = th;
            this.i = true;
            a();
        }

        public void onComplete() {
            this.i = true;
            a();
        }

        public void dispose() {
            if (!this.h) {
                this.h = true;
                this.g.dispose();
                if (getAndIncrement() == 0) {
                    this.e.c();
                }
            }
        }

        public boolean isDisposed() {
            return this.h;
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            if (getAndIncrement() == 0) {
                q<? super T> qVar = this.a;
                a<Object> aVar = this.e;
                boolean z = this.f;
                TimeUnit timeUnit = this.c;
                r rVar = this.d;
                long j2 = this.b;
                int i2 = 1;
                while (!this.h) {
                    boolean z2 = this.i;
                    Long l = (Long) aVar.d();
                    boolean z3 = l == null;
                    long a2 = rVar.a(timeUnit);
                    if (!z3 && l.longValue() > a2 - j2) {
                        z3 = true;
                    }
                    if (z2) {
                        if (!z) {
                            Throwable th = this.j;
                            if (th != null) {
                                this.e.c();
                                qVar.onError(th);
                                return;
                            } else if (z3) {
                                qVar.onComplete();
                                return;
                            }
                        } else if (z3) {
                            Throwable th2 = this.j;
                            if (th2 != null) {
                                qVar.onError(th2);
                                return;
                            } else {
                                qVar.onComplete();
                                return;
                            }
                        }
                    }
                    if (z3) {
                        int addAndGet = addAndGet(-i2);
                        if (addAndGet != 0) {
                            i2 = addAndGet;
                        } else {
                            return;
                        }
                    } else {
                        aVar.e_();
                        qVar.onNext(aVar.e_());
                    }
                }
                this.e.c();
            }
        }
    }

    public ObservableSkipLastTimed(o<T> oVar, long j, TimeUnit timeUnit, r rVar, int i, boolean z) {
        super(oVar);
        this.b = j;
        this.c = timeUnit;
        this.d = rVar;
        this.e = i;
        this.f = z;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new SkipLastTimedObserver(qVar, this.b, this.c, this.d, this.e, this.f));
    }
}
