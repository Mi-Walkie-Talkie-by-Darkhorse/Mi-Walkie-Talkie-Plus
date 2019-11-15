package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.k;
import io.reactivex.q;

/* compiled from: ObservableNever */
public final class bb extends k<Object> {
    public static final k<Object> a = new bb();

    private bb() {
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super Object> qVar) {
        qVar.onSubscribe(EmptyDisposable.NEVER);
    }
}
