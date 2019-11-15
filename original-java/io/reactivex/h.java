package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.b;

/* compiled from: MaybeObserver */
public interface h<T> {
    void a(@NonNull T t);

    void onComplete();

    void onError(@NonNull Throwable th);

    void onSubscribe(@NonNull b bVar);
}
