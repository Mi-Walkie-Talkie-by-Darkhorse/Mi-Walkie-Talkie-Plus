package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.e;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableObserver */
public abstract class c<T> implements b, q<T> {
    final AtomicReference<b> f = new AtomicReference<>();

    public final void onSubscribe(@NonNull b bVar) {
        if (e.a(this.f, bVar, getClass())) {
            c();
        }
    }

    /* access modifiers changed from: protected */
    public void c() {
    }

    public final boolean isDisposed() {
        return this.f.get() == DisposableHelper.DISPOSED;
    }

    public final void dispose() {
        DisposableHelper.a(this.f);
    }
}
