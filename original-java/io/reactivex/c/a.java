package io.reactivex.c;

import io.reactivex.annotations.NonNull;
import io.reactivex.b.f;
import io.reactivex.disposables.b;
import io.reactivex.internal.operators.observable.ObservableRefCount;
import io.reactivex.k;

/* compiled from: ConnectableObservable */
public abstract class a<T> extends k<T> {
    public abstract void a(@NonNull f<? super b> fVar);

    @NonNull
    public k<T> a() {
        return io.reactivex.d.a.a((k<T>) new ObservableRefCount<T>(this));
    }
}
