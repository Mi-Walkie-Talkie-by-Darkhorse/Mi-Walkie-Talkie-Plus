package io.reactivex.internal.observers;

/* compiled from: InnerQueuedObserverSupport */
public interface j<T> {
    void a();

    void a(InnerQueuedObserver<T> innerQueuedObserver);

    void a(InnerQueuedObserver<T> innerQueuedObserver, T t);

    void a(InnerQueuedObserver<T> innerQueuedObserver, Throwable th);
}
