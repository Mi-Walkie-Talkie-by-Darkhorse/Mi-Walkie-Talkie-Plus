package io.reactivex.internal.subscriptions;

import io.reactivex.internal.a.d;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class BasicIntQueueSubscription<T> extends AtomicInteger implements d<T> {
    private static final long serialVersionUID = -6671519529404341862L;

    public final boolean a(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
