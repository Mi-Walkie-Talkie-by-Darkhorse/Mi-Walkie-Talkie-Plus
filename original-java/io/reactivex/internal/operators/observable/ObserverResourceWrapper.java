package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicReference;

public final class ObserverResourceWrapper<T> extends AtomicReference<b> implements b, q<T> {
    private static final long serialVersionUID = -8612022020200669122L;
    final q<? super T> a;
    final AtomicReference<b> b = new AtomicReference<>();

    public ObserverResourceWrapper(q<? super T> qVar) {
        this.a = qVar;
    }

    public void onSubscribe(b bVar) {
        if (DisposableHelper.b(this.b, bVar)) {
            this.a.onSubscribe(this);
        }
    }

    public void onNext(T t) {
        this.a.onNext(t);
    }

    public void onError(Throwable th) {
        dispose();
        this.a.onError(th);
    }

    public void onComplete() {
        dispose();
        this.a.onComplete();
    }

    public void dispose() {
        DisposableHelper.a(this.b);
        DisposableHelper.a((AtomicReference<b>) this);
    }

    public boolean isDisposed() {
        return this.b.get() == DisposableHelper.DISPOSED;
    }

    public void a(b bVar) {
        DisposableHelper.a((AtomicReference<b>) this, bVar);
    }
}
