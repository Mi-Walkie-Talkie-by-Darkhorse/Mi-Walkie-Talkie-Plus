package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.a;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableSwitchMap<T, R> extends a<T, R> {
    final g<? super T, ? extends o<? extends R>> b;
    final int c;
    final boolean d;

    static final class SwitchMapInnerObserver<T, R> extends AtomicReference<b> implements q<R> {
        private static final long serialVersionUID = 3837284832786408377L;
        final SwitchMapObserver<T, R> a;
        final long b;
        final a<R> c;
        volatile boolean d;

        SwitchMapInnerObserver(SwitchMapObserver<T, R> switchMapObserver, long j, int i) {
            this.a = switchMapObserver;
            this.b = j;
            this.c = new a<>(i);
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this, bVar);
        }

        public void onNext(R r) {
            if (this.b == this.a.k) {
                this.c.a(r);
                this.a.b();
            }
        }

        public void onError(Throwable th) {
            this.a.a(this, th);
        }

        public void onComplete() {
            if (this.b == this.a.k) {
                this.d = true;
                this.a.b();
            }
        }

        public void a() {
            DisposableHelper.a((AtomicReference<b>) this);
        }
    }

    static final class SwitchMapObserver<T, R> extends AtomicInteger implements b, q<T> {
        static final SwitchMapInnerObserver<Object, Object> j = new SwitchMapInnerObserver<>(null, -1, 1);
        private static final long serialVersionUID = -3491074160481096299L;
        final q<? super R> a;
        final g<? super T, ? extends o<? extends R>> b;
        final int c;
        final boolean d;
        final AtomicThrowable e;
        volatile boolean f;
        volatile boolean g;
        b h;
        final AtomicReference<SwitchMapInnerObserver<T, R>> i = new AtomicReference<>();
        volatile long k;

        static {
            j.a();
        }

        SwitchMapObserver(q<? super R> qVar, g<? super T, ? extends o<? extends R>> gVar, int i2, boolean z) {
            this.a = qVar;
            this.b = gVar;
            this.c = i2;
            this.d = z;
            this.e = new AtomicThrowable();
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.h, bVar)) {
                this.h = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            SwitchMapInnerObserver<Object, Object> switchMapInnerObserver;
            long j2 = 1 + this.k;
            this.k = j2;
            SwitchMapInnerObserver switchMapInnerObserver2 = (SwitchMapInnerObserver) this.i.get();
            if (switchMapInnerObserver2 != null) {
                switchMapInnerObserver2.a();
            }
            try {
                o oVar = (o) io.reactivex.internal.functions.a.a(this.b.apply(t), "The ObservableSource returned is null");
                SwitchMapInnerObserver switchMapInnerObserver3 = new SwitchMapInnerObserver(this, j2, this.c);
                do {
                    switchMapInnerObserver = (SwitchMapInnerObserver) this.i.get();
                    if (switchMapInnerObserver == j) {
                        return;
                    }
                } while (!this.i.compareAndSet(switchMapInnerObserver, switchMapInnerObserver3));
                oVar.subscribe(switchMapInnerObserver3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.h.dispose();
                onError(th);
            }
        }

        public void onError(Throwable th) {
            if (this.f || !this.e.a(th)) {
                if (!this.d) {
                    a();
                }
                io.reactivex.d.a.a(th);
                return;
            }
            this.f = true;
            b();
        }

        public void onComplete() {
            if (!this.f) {
                this.f = true;
                b();
            }
        }

        public void dispose() {
            if (!this.g) {
                this.g = true;
                this.h.dispose();
                a();
            }
        }

        public boolean isDisposed() {
            return this.g;
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            if (((SwitchMapInnerObserver) this.i.get()) != j) {
                SwitchMapInnerObserver<Object, Object> switchMapInnerObserver = (SwitchMapInnerObserver) this.i.getAndSet(j);
                if (switchMapInnerObserver != j && switchMapInnerObserver != null) {
                    switchMapInnerObserver.a();
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            boolean z;
            if (getAndIncrement() == 0) {
                q<? super R> qVar = this.a;
                int i2 = 1;
                while (!this.g) {
                    if (this.f) {
                        boolean z2 = this.i.get() == null;
                        if (this.d) {
                            if (z2) {
                                Throwable th = (Throwable) this.e.get();
                                if (th != null) {
                                    qVar.onError(th);
                                    return;
                                } else {
                                    qVar.onComplete();
                                    return;
                                }
                            }
                        } else if (((Throwable) this.e.get()) != null) {
                            qVar.onError(this.e.a());
                            return;
                        } else if (z2) {
                            qVar.onComplete();
                            return;
                        }
                    }
                    SwitchMapInnerObserver switchMapInnerObserver = (SwitchMapInnerObserver) this.i.get();
                    if (switchMapInnerObserver != null) {
                        a<R> aVar = switchMapInnerObserver.c;
                        if (switchMapInnerObserver.d) {
                            boolean b2 = aVar.b();
                            if (this.d) {
                                if (b2) {
                                    this.i.compareAndSet(switchMapInnerObserver, null);
                                }
                            } else if (((Throwable) this.e.get()) != null) {
                                qVar.onError(this.e.a());
                                return;
                            } else if (b2) {
                                this.i.compareAndSet(switchMapInnerObserver, null);
                            }
                        }
                        while (!this.g) {
                            if (switchMapInnerObserver != this.i.get()) {
                                z = true;
                            } else if (this.d || ((Throwable) this.e.get()) == null) {
                                boolean z3 = switchMapInnerObserver.d;
                                Object e_ = aVar.e_();
                                boolean z4 = e_ == null;
                                if (z3 && z4) {
                                    this.i.compareAndSet(switchMapInnerObserver, null);
                                    z = true;
                                } else if (z4) {
                                    z = false;
                                } else {
                                    qVar.onNext(e_);
                                }
                            } else {
                                qVar.onError(this.e.a());
                                return;
                            }
                            if (z) {
                                continue;
                            }
                        }
                        return;
                    }
                    int addAndGet = addAndGet(-i2);
                    if (addAndGet != 0) {
                        i2 = addAndGet;
                    } else {
                        return;
                    }
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(SwitchMapInnerObserver<T, R> switchMapInnerObserver, Throwable th) {
            if (switchMapInnerObserver.b != this.k || !this.e.a(th)) {
                io.reactivex.d.a.a(th);
                return;
            }
            if (!this.d) {
                this.h.dispose();
            }
            switchMapInnerObserver.d = true;
            b();
        }
    }

    public ObservableSwitchMap(o<T> oVar, g<? super T, ? extends o<? extends R>> gVar, int i, boolean z) {
        super(oVar);
        this.b = gVar;
        this.c = i;
        this.d = z;
    }

    public void subscribeActual(q<? super R> qVar) {
        if (!ObservableScalarXMap.a(this.a, qVar, this.b)) {
            this.a.subscribe(new SwitchMapObserver(qVar, this.b, this.c, this.d));
        }
    }
}
