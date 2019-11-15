package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.q;

/* compiled from: SafeObserver */
public final class d<T> implements b, q<T> {
    final q<? super T> a;
    b b;
    boolean c;

    public d(@NonNull q<? super T> qVar) {
        this.a = qVar;
    }

    public void onSubscribe(@NonNull b bVar) {
        if (DisposableHelper.a(this.b, bVar)) {
            this.b = bVar;
            try {
                this.a.onSubscribe(this);
            } catch (Throwable th) {
                a.b(th);
                io.reactivex.d.a.a((Throwable) new CompositeException(th, th));
            }
        }
    }

    public void dispose() {
        this.b.dispose();
    }

    public boolean isDisposed() {
        return this.b.isDisposed();
    }

    public void onNext(@NonNull T t) {
        if (!this.c) {
            if (this.b == null) {
                a();
            } else if (t == null) {
                NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
                try {
                    this.b.dispose();
                    onError(nullPointerException);
                } catch (Throwable th) {
                    a.b(th);
                    onError(new CompositeException(nullPointerException, th));
                }
            } else {
                try {
                    this.a.onNext(t);
                } catch (Throwable th2) {
                    a.b(th2);
                    onError(new CompositeException(th, th2));
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        this.c = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.a.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.a.onError(nullPointerException);
            } catch (Throwable th) {
                a.b(th);
                io.reactivex.d.a.a((Throwable) new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            a.b(th2);
            io.reactivex.d.a.a((Throwable) new CompositeException(nullPointerException, th2));
        }
    }

    public void onError(@NonNull Throwable th) {
        if (this.c) {
            io.reactivex.d.a.a(th);
            return;
        }
        this.c = true;
        if (this.b == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.a.onSubscribe(EmptyDisposable.INSTANCE);
                try {
                    this.a.onError(new CompositeException(th, nullPointerException));
                } catch (Throwable th2) {
                    a.b(th2);
                    io.reactivex.d.a.a((Throwable) new CompositeException(th, nullPointerException, th2));
                }
            } catch (Throwable th3) {
                a.b(th3);
                io.reactivex.d.a.a((Throwable) new CompositeException(th, nullPointerException, th3));
            }
        } else {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            try {
                this.a.onError(th);
            } catch (Throwable th4) {
                a.b(th4);
                io.reactivex.d.a.a((Throwable) new CompositeException(th, th4));
            }
        }
    }

    public void onComplete() {
        if (!this.c) {
            this.c = true;
            if (this.b == null) {
                b();
                return;
            }
            try {
                this.a.onComplete();
            } catch (Throwable th) {
                a.b(th);
                io.reactivex.d.a.a(th);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void b() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.a.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.a.onError(nullPointerException);
            } catch (Throwable th) {
                a.b(th);
                io.reactivex.d.a.a((Throwable) new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            a.b(th2);
            io.reactivex.d.a.a((Throwable) new CompositeException(nullPointerException, th2));
        }
    }
}
