package org.a;

/* compiled from: Subscriber */
public interface b<T> {
    void a(c cVar);

    void onComplete();

    void onError(Throwable th);

    void onNext(T t);
}
