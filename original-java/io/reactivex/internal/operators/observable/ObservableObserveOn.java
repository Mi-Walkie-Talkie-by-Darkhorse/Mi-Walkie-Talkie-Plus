package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.b;
import io.reactivex.internal.a.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.internal.queue.a;
import io.reactivex.internal.schedulers.i;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.r;
import io.reactivex.r.c;

public final class ObservableObserveOn<T> extends a<T, T> {
    final r b;
    final boolean c;
    final int d;

    static final class ObserveOnObserver<T> extends BasicIntQueueDisposable<T> implements q<T>, Runnable {
        private static final long serialVersionUID = 6576896619930983584L;
        final q<? super T> a;
        final c b;
        final boolean c;
        final int d;
        g<T> e;
        b f;
        Throwable g;
        volatile boolean h;
        volatile boolean i;
        int j;
        boolean k;

        ObserveOnObserver(q<? super T> qVar, c cVar, boolean z, int i2) {
            this.a = qVar;
            this.b = cVar;
            this.c = z;
            this.d = i2;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.f, bVar)) {
                this.f = bVar;
                if (bVar instanceof io.reactivex.internal.a.b) {
                    io.reactivex.internal.a.b bVar2 = (io.reactivex.internal.a.b) bVar;
                    int a2 = bVar2.a(7);
                    if (a2 == 1) {
                        this.j = a2;
                        this.e = bVar2;
                        this.h = true;
                        this.a.onSubscribe(this);
                        d();
                        return;
                    } else if (a2 == 2) {
                        this.j = a2;
                        this.e = bVar2;
                        this.a.onSubscribe(this);
                        return;
                    }
                }
                this.e = new a(this.d);
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (!this.h) {
                if (this.j != 2) {
                    this.e.a(t);
                }
                d();
            }
        }

        public void onError(Throwable th) {
            if (this.h) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.g = th;
            this.h = true;
            d();
        }

        public void onComplete() {
            if (!this.h) {
                this.h = true;
                d();
            }
        }

        public void dispose() {
            if (!this.i) {
                this.i = true;
                this.f.dispose();
                this.b.dispose();
                if (getAndIncrement() == 0) {
                    this.e.c();
                }
            }
        }

        public boolean isDisposed() {
            return this.i;
        }

        /* access modifiers changed from: 0000 */
        public void d() {
            if (getAndIncrement() == 0) {
                this.b.a((Runnable) this);
            }
        }

        /* access modifiers changed from: 0000 */
        public void e() {
            g<T> gVar = this.e;
            q<? super T> qVar = this.a;
            int i2 = 1;
            while (!a(this.h, gVar.b(), qVar)) {
                while (true) {
                    boolean z = this.h;
                    try {
                        Object e_ = gVar.e_();
                        boolean z2 = e_ == null;
                        if (a(z, z2, qVar)) {
                            return;
                        }
                        if (z2) {
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        } else {
                            qVar.onNext(e_);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f.dispose();
                        gVar.c();
                        qVar.onError(th);
                        this.b.dispose();
                        return;
                    }
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void f() {
            int i2 = 1;
            while (!this.i) {
                boolean z = this.h;
                Throwable th = this.g;
                if (this.c || !z || th == null) {
                    this.a.onNext(null);
                    if (z) {
                        Throwable th2 = this.g;
                        if (th2 != null) {
                            this.a.onError(th2);
                        } else {
                            this.a.onComplete();
                        }
                        this.b.dispose();
                        return;
                    }
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    this.a.onError(this.g);
                    this.b.dispose();
                    return;
                }
            }
        }

        public void run() {
            if (this.k) {
                f();
            } else {
                e();
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean a(boolean z, boolean z2, q<? super T> qVar) {
            if (this.i) {
                this.e.c();
                return true;
            }
            if (z) {
                Throwable th = this.g;
                if (this.c) {
                    if (z2) {
                        if (th != null) {
                            qVar.onError(th);
                        } else {
                            qVar.onComplete();
                        }
                        this.b.dispose();
                        return true;
                    }
                } else if (th != null) {
                    this.e.c();
                    qVar.onError(th);
                    this.b.dispose();
                    return true;
                } else if (z2) {
                    qVar.onComplete();
                    this.b.dispose();
                    return true;
                }
            }
            return false;
        }

        public int a(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.k = true;
            return 2;
        }

        @Nullable
        public T e_() throws Exception {
            return this.e.e_();
        }

        public void c() {
            this.e.c();
        }

        public boolean b() {
            return this.e.b();
        }
    }

    public ObservableObserveOn(o<T> oVar, r rVar, boolean z, int i) {
        super(oVar);
        this.b = rVar;
        this.c = z;
        this.d = i;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        if (this.b instanceof i) {
            this.a.subscribe(qVar);
            return;
        }
        this.a.subscribe(new ObserveOnObserver(qVar, this.b.a(), this.c, this.d));
    }
}
