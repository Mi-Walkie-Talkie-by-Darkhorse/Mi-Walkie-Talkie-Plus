package io.reactivex.internal.observers;

import io.reactivex.b.a;
import io.reactivex.b.f;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicReference;

public final class LambdaObserver<T> extends AtomicReference<b> implements b, q<T> {
    private static final long serialVersionUID = -7251123623727029452L;
    final f<? super T> a;
    final f<? super Throwable> b;
    final a c;
    final f<? super b> d;

    public LambdaObserver(f<? super T> fVar, f<? super Throwable> fVar2, a aVar, f<? super b> fVar3) {
        this.a = fVar;
        this.b = fVar2;
        this.c = aVar;
        this.d = fVar3;
    }

    public void onSubscribe(b bVar) {
        if (DisposableHelper.b(this, bVar)) {
            try {
                this.d.accept(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                bVar.dispose();
                onError(th);
            }
        }
    }

    public void onNext(T t) {
        if (!isDisposed()) {
            try {
                this.a.accept(t);
            } catch (Throwable th) {
                Throwable th2 = th;
                io.reactivex.exceptions.a.b(th2);
                ((b) get()).dispose();
                onError(th2);
            }
        }
    }

    public void onError(Throwable th) {
        if (!isDisposed()) {
            lazySet(DisposableHelper.DISPOSED);
            try {
                this.b.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                io.reactivex.d.a.a((Throwable) new CompositeException(th, th2));
            }
        }
    }

    public void onComplete() {
        if (!isDisposed()) {
            lazySet(DisposableHelper.DISPOSED);
            try {
                this.c.a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.d.a.a(th);
            }
        }
    }

    public void dispose() {
        DisposableHelper.a((AtomicReference<b>) this);
    }

    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }
}
