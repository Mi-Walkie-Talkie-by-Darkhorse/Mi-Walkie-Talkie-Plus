package io.reactivex.internal.operators.observable;

import io.reactivex.internal.a.e;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.k;
import io.reactivex.q;

/* compiled from: ObservableEmpty */
public final class af extends k<Object> implements e<Object> {
    public static final k<Object> a = new af();

    private af() {
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super Object> qVar) {
        EmptyDisposable.a(qVar);
    }

    public Object call() {
        return null;
    }
}
