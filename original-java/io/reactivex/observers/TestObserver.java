package io.reactivex.observers;

import io.reactivex.b;
import io.reactivex.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicReference;

public class TestObserver<T> extends a<T, TestObserver<T>> implements b, io.reactivex.disposables.b, h<T>, q<T>, t<T> {
    private final q<? super T> i;
    private final AtomicReference<io.reactivex.disposables.b> j;
    private io.reactivex.internal.a.b<T> k;

    enum EmptyObserver implements q<Object> {
        INSTANCE;

        public void onSubscribe(io.reactivex.disposables.b bVar) {
        }

        public void onNext(Object obj) {
        }

        public void onError(Throwable th) {
        }

        public void onComplete() {
        }
    }

    public TestObserver() {
        this(EmptyObserver.INSTANCE);
    }

    public TestObserver(q<? super T> qVar) {
        this.j = new AtomicReference<>();
        this.i = qVar;
    }

    public void onSubscribe(io.reactivex.disposables.b bVar) {
        this.e = Thread.currentThread();
        if (bVar == null) {
            this.c.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.j.compareAndSet(null, bVar)) {
            bVar.dispose();
            if (this.j.get() != DisposableHelper.DISPOSED) {
                this.c.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + bVar));
            }
        } else {
            if (this.g != 0 && (bVar instanceof io.reactivex.internal.a.b)) {
                this.k = (io.reactivex.internal.a.b) bVar;
                int a = this.k.a(this.g);
                this.h = a;
                if (a == 1) {
                    this.f = true;
                    this.e = Thread.currentThread();
                    while (true) {
                        try {
                            Object e_ = this.k.e_();
                            if (e_ != null) {
                                this.b.add(e_);
                            } else {
                                this.d++;
                                this.j.lazySet(DisposableHelper.DISPOSED);
                                return;
                            }
                        } catch (Throwable th) {
                            this.c.add(th);
                            return;
                        }
                    }
                }
            }
            this.i.onSubscribe(bVar);
        }
    }

    public void onNext(T t) {
        if (!this.f) {
            this.f = true;
            if (this.j.get() == null) {
                this.c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.e = Thread.currentThread();
        if (this.h == 2) {
            while (true) {
                try {
                    Object e_ = this.k.e_();
                    if (e_ != null) {
                        this.b.add(e_);
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    this.c.add(th);
                    this.k.dispose();
                    return;
                }
            }
        } else {
            this.b.add(t);
            if (t == null) {
                this.c.add(new NullPointerException("onNext received a null value"));
            }
            this.i.onNext(t);
        }
    }

    public void onError(Throwable th) {
        if (!this.f) {
            this.f = true;
            if (this.j.get() == null) {
                this.c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.e = Thread.currentThread();
            if (th == null) {
                this.c.add(new NullPointerException("onError received a null Throwable"));
            } else {
                this.c.add(th);
            }
            this.i.onError(th);
        } finally {
            this.a.countDown();
        }
    }

    public void onComplete() {
        if (!this.f) {
            this.f = true;
            if (this.j.get() == null) {
                this.c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.e = Thread.currentThread();
            this.d++;
            this.i.onComplete();
        } finally {
            this.a.countDown();
        }
    }

    public final void dispose() {
        DisposableHelper.a(this.j);
    }

    public final boolean isDisposed() {
        return DisposableHelper.a((io.reactivex.disposables.b) this.j.get());
    }

    public void a(T t) {
        onNext(t);
        onComplete();
    }
}
