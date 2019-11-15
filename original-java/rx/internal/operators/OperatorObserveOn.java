package rx.internal.operators;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.a.b;
import rx.c;
import rx.d;
import rx.e;
import rx.exceptions.MissingBackpressureException;
import rx.f;
import rx.internal.util.a.r;
import rx.internal.util.a.y;
import rx.internal.util.g;

public final class OperatorObserveOn<T> implements b<T, T> {
    private final d a;

    static final class ScheduledUnsubscribe extends AtomicInteger implements f {
        final rx.d.a a;
        volatile boolean b = false;

        public ScheduledUnsubscribe(rx.d.a aVar) {
            this.a = aVar;
        }

        public boolean isUnsubscribed() {
            return this.b;
        }

        public void unsubscribe() {
            if (getAndSet(1) == 0) {
                this.a.a(new rx.b.a() {
                    public void a() {
                        ScheduledUnsubscribe.this.a.unsubscribe();
                        ScheduledUnsubscribe.this.b = true;
                    }
                });
            }
        }
    }

    private static final class a<T> extends e<T> {
        final e<? super T> a;
        final rx.d.a b;
        final ScheduledUnsubscribe c;
        final b<T> d = b.a();
        final Queue<Object> e;
        volatile boolean f = false;
        final AtomicLong g = new AtomicLong();
        final AtomicLong h = new AtomicLong();
        volatile Throwable i;
        final rx.b.a j = new rx.b.a() {
            public void a() {
                a.this.c();
            }
        };

        public a(d dVar, e<? super T> eVar) {
            this.a = eVar;
            this.b = dVar.a();
            if (y.a()) {
                this.e = new r(rx.internal.util.d.b);
            } else {
                this.e = new g(rx.internal.util.d.b);
            }
            this.c = new ScheduledUnsubscribe(this.b);
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            this.a.add(this.c);
            this.a.setProducer(new c() {
                public void a(long j) {
                    a.a(a.this.g, j);
                    a.this.b();
                }
            });
            this.a.add(this.b);
            this.a.add(this);
        }

        public void onStart() {
            request((long) rx.internal.util.d.b);
        }

        public void onNext(T t) {
            if (!isUnsubscribed()) {
                if (!this.e.offer(this.d.a(t))) {
                    onError(new MissingBackpressureException());
                } else {
                    b();
                }
            }
        }

        public void onCompleted() {
            if (!isUnsubscribed() && !this.f) {
                this.f = true;
                b();
            }
        }

        public void onError(Throwable th) {
            if (!isUnsubscribed() && !this.f) {
                this.i = th;
                unsubscribe();
                this.f = true;
                b();
            }
        }

        /* access modifiers changed from: protected */
        public void b() {
            if (this.h.getAndIncrement() == 0) {
                this.b.a(this.j);
            }
        }

        /* access modifiers changed from: 0000 */
        public void c() {
            int i2 = 0;
            AtomicLong atomicLong = this.g;
            AtomicLong atomicLong2 = this.h;
            do {
                atomicLong2.set(1);
                long j2 = 0;
                long j3 = atomicLong.get();
                while (!this.a.isUnsubscribed()) {
                    if (this.f) {
                        Throwable th = this.i;
                        if (th != null) {
                            this.e.clear();
                            this.a.onError(th);
                            return;
                        } else if (this.e.isEmpty()) {
                            this.a.onCompleted();
                            return;
                        }
                    }
                    if (j3 > 0) {
                        Object poll = this.e.poll();
                        if (poll != null) {
                            this.a.onNext(this.d.b(poll));
                            j3--;
                            j2 = 1 + j2;
                            i2++;
                        }
                    }
                    if (j2 > 0 && atomicLong.get() != FileTracerConfig.FOREVER) {
                        atomicLong.addAndGet(-j2);
                    }
                }
                return;
            } while (atomicLong2.decrementAndGet() > 0);
            if (i2 > 0) {
                request((long) i2);
            }
        }
    }

    public OperatorObserveOn(d dVar) {
        this.a = dVar;
    }

    public e<? super T> a(e<? super T> eVar) {
        if ((this.a instanceof rx.e.c) || (this.a instanceof rx.e.g)) {
            return eVar;
        }
        a aVar = new a(this.a, eVar);
        aVar.a();
        return aVar;
    }
}
