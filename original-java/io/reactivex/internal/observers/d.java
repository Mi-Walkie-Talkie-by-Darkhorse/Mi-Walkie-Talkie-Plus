package io.reactivex.internal.observers;

/* compiled from: BlockingFirstObserver */
public final class d<T> extends c<T> {
    public void onNext(T t) {
        if (this.a == null) {
            this.a = t;
            this.c.dispose();
            countDown();
        }
    }

    public void onError(Throwable th) {
        if (this.a == null) {
            this.b = th;
        }
        countDown();
    }
}
