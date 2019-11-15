package io.reactivex;

import io.reactivex.annotations.NonNull;

/* compiled from: CompletableObserver */
public interface b {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onSubscribe(@NonNull io.reactivex.disposables.b bVar);
}
