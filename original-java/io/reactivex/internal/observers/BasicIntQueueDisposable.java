package io.reactivex.internal.observers;

import io.reactivex.internal.a.b;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class BasicIntQueueDisposable<T> extends AtomicInteger implements b<T> {
    private static final long serialVersionUID = -1001730202384742097L;

    public final boolean a(T t) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
