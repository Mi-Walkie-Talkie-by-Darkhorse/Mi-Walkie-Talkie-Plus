package rx;

/* compiled from: Observer */
public interface b<T> {
    void onCompleted();

    void onError(Throwable th);

    void onNext(T t);
}
