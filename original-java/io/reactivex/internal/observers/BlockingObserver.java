package io.reactivex.internal.observers;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.q;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

public final class BlockingObserver<T> extends AtomicReference<b> implements b, q<T> {
    public static final Object a = new Object();
    private static final long serialVersionUID = -4875965440900746268L;
    final Queue<Object> b;

    public BlockingObserver(Queue<Object> queue) {
        this.b = queue;
    }

    public void onSubscribe(b bVar) {
        DisposableHelper.b(this, bVar);
    }

    public void onNext(T t) {
        this.b.offer(NotificationLite.a(t));
    }

    public void onError(Throwable th) {
        this.b.offer(NotificationLite.a(th));
    }

    public void onComplete() {
        this.b.offer(NotificationLite.a());
    }

    public void dispose() {
        if (DisposableHelper.a((AtomicReference<b>) this)) {
            this.b.offer(a);
        }
    }

    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }
}
