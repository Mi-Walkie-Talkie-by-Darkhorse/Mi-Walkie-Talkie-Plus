package io.reactivex.c;

import io.reactivex.annotations.Nullable;
import io.reactivex.k;

/* compiled from: GroupedObservable */
public abstract class b<K, T> extends k<T> {
    final K b;

    protected b(@Nullable K k) {
        this.b = k;
    }
}
