package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.util.e;
import io.reactivex.q;

/* compiled from: DefaultObserver */
public abstract class b<T> implements q<T> {
    private io.reactivex.disposables.b a;

    public final void onSubscribe(@NonNull io.reactivex.disposables.b bVar) {
        if (e.a(this.a, bVar, getClass())) {
            this.a = bVar;
            b();
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
    }
}
