package io.reactivex.internal.disposables;

import io.reactivex.disposables.b;
import java.util.concurrent.atomic.AtomicReference;

public final class SequentialDisposable extends AtomicReference<b> implements b {
    private static final long serialVersionUID = -754898800686245608L;

    public SequentialDisposable() {
    }

    public SequentialDisposable(b bVar) {
        lazySet(bVar);
    }

    public boolean a(b bVar) {
        return DisposableHelper.a((AtomicReference<b>) this, bVar);
    }

    public boolean b(b bVar) {
        return DisposableHelper.c(this, bVar);
    }

    public void dispose() {
        DisposableHelper.a((AtomicReference<b>) this);
    }

    public boolean isDisposed() {
        return DisposableHelper.a((b) get());
    }
}
