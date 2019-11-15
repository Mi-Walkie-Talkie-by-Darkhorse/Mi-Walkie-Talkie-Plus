package io.reactivex.internal.disposables;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.a.b;
import io.reactivex.q;
import io.reactivex.t;

public enum EmptyDisposable implements b<Object> {
    INSTANCE,
    NEVER;

    public void dispose() {
    }

    public boolean isDisposed() {
        return this == INSTANCE;
    }

    public static void a(q<?> qVar) {
        qVar.onSubscribe(INSTANCE);
        qVar.onComplete();
    }

    public static void a(Throwable th, q<?> qVar) {
        qVar.onSubscribe(INSTANCE);
        qVar.onError(th);
    }

    public static void a(Throwable th, t<?> tVar) {
        tVar.onSubscribe(INSTANCE);
        tVar.onError(th);
    }

    public boolean a(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Nullable
    public Object e_() throws Exception {
        return null;
    }

    public boolean b() {
        return true;
    }

    public void c() {
    }

    public int a(int i) {
        return i & 2;
    }
}
