package io.reactivex.internal.disposables;

import io.reactivex.disposables.b;
import io.reactivex.internal.queue.a;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.q;

/* compiled from: ObserverFullArbiter */
public final class f<T> extends c implements b {
    final q<? super T> b;
    final a<Object> c;
    volatile b d = EmptyDisposable.INSTANCE;
    b e;
    volatile boolean f;

    public f(q<? super T> qVar, b bVar, int i) {
        this.b = qVar;
        this.e = bVar;
        this.c = new a<>(i);
    }

    public void dispose() {
        if (!this.f) {
            this.f = true;
            a();
        }
    }

    public boolean isDisposed() {
        b bVar = this.e;
        return bVar != null ? bVar.isDisposed() : this.f;
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        b bVar = this.e;
        this.e = null;
        if (bVar != null) {
            bVar.dispose();
        }
    }

    public boolean a(b bVar) {
        if (this.f) {
            return false;
        }
        this.c.a(this.d, NotificationLite.a(bVar));
        b();
        return true;
    }

    public boolean a(T t, b bVar) {
        if (this.f) {
            return false;
        }
        this.c.a(bVar, NotificationLite.a(t));
        b();
        return true;
    }

    public void a(Throwable th, b bVar) {
        if (this.f) {
            io.reactivex.d.a.a(th);
            return;
        }
        this.c.a(bVar, NotificationLite.a(th));
        b();
    }

    public void b(b bVar) {
        this.c.a(bVar, NotificationLite.a());
        b();
    }

    /* access modifiers changed from: 0000 */
    public void b() {
        if (this.a.getAndIncrement() == 0) {
            a<Object> aVar = this.c;
            q<? super T> qVar = this.b;
            int i = 1;
            while (true) {
                Object e_ = aVar.e_();
                if (e_ == null) {
                    i = this.a.addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                } else {
                    Object e_2 = aVar.e_();
                    if (e_ == this.d) {
                        if (NotificationLite.d(e_2)) {
                            b g = NotificationLite.g(e_2);
                            this.d.dispose();
                            if (!this.f) {
                                this.d = g;
                            } else {
                                g.dispose();
                            }
                        } else if (NotificationLite.c(e_2)) {
                            aVar.c();
                            a();
                            Throwable f2 = NotificationLite.f(e_2);
                            if (!this.f) {
                                this.f = true;
                                qVar.onError(f2);
                            } else {
                                io.reactivex.d.a.a(f2);
                            }
                        } else if (NotificationLite.b(e_2)) {
                            aVar.c();
                            a();
                            if (!this.f) {
                                this.f = true;
                                qVar.onComplete();
                            }
                        } else {
                            qVar.onNext(NotificationLite.e(e_2));
                        }
                    }
                }
            }
        }
    }
}
