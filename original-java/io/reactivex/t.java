package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.b;

/* compiled from: SingleObserver */
public interface t<T> {
    void a(@NonNull T t);

    void onError(@NonNull Throwable th);

    void onSubscribe(@NonNull b bVar);
}
