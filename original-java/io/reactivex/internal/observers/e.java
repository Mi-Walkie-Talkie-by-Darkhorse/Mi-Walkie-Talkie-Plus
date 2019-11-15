package io.reactivex.internal.observers;

/* compiled from: BlockingLastObserver */
public final class e<T> extends c<T> {
    public void onNext(T t) {
        this.a = t;
    }

    public void onError(Throwable th) {
        this.a = null;
        this.b = th;
        countDown();
    }
}
