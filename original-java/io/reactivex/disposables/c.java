package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.a;

/* compiled from: Disposables */
public final class c {
    @NonNull
    public static b a(@NonNull Runnable runnable) {
        a.a(runnable, "run is null");
        return new RunnableDisposable(runnable);
    }

    @NonNull
    public static b a() {
        return EmptyDisposable.INSTANCE;
    }
}
