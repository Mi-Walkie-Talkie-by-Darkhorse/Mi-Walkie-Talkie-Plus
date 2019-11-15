package io.reactivex.internal.observers;

import io.reactivex.b.f;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicReference;

public final class ConsumerSingleObserver<T> extends AtomicReference<b> implements b, t<T> {
    private static final long serialVersionUID = -7012088219455310787L;
    final f<? super T> a;
    final f<? super Throwable> b;

    public ConsumerSingleObserver(f<? super T> fVar, f<? super Throwable> fVar2) {
        this.a = fVar;
        this.b = fVar2;
    }

    public void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.b.accept(th);
        } catch (Throwable th2) {
            a.b(th2);
            io.reactivex.d.a.a((Throwable) new CompositeException(th, th2));
        }
    }

    public void onSubscribe(b bVar) {
        DisposableHelper.b(this, bVar);
    }

    public void a(T t) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.a.accept(t);
        } catch (Throwable th) {
            a.b(th);
            io.reactivex.d.a.a(th);
        }
    }

    public void dispose() {
        DisposableHelper.a((AtomicReference<b>) this);
    }

    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }
}
