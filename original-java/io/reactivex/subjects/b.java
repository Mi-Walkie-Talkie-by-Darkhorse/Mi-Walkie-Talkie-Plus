package io.reactivex.subjects;

import io.reactivex.annotations.NonNull;
import io.reactivex.k;
import io.reactivex.q;

/* compiled from: Subject */
public abstract class b<T> extends k<T> implements q<T> {
    @NonNull
    public final b<T> b() {
        return this instanceof a ? this : new a(this);
    }
}
