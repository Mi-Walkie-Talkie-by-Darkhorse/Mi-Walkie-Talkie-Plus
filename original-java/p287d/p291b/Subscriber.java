package p287d.p291b;

/* renamed from: d.b.c */
/* loaded from: classes3.dex */
public interface Subscriber<T> {
    void onComplete();

    void onError(Throwable th);

    void onNext(T t);

    void onSubscribe(Subscription subscription);
}
