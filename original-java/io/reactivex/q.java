package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.b;

/* compiled from: Observer */
public interface q<T> {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onNext(@NonNull T t);

    void onSubscribe(@NonNull b bVar);
}
