package io.reactivex.internal.operators.observable;

import io.reactivex.b.a;
import io.reactivex.b.f;
import io.reactivex.disposables.b;
import io.reactivex.internal.observers.g;
import io.reactivex.k;
import io.reactivex.q;

/* compiled from: ObservableDoOnLifecycle */
public final class ab<T> extends a<T, T> {
    private final f<? super b> b;
    private final a c;

    public ab(k<T> kVar, f<? super b> fVar, a aVar) {
        super(kVar);
        this.b = fVar;
        this.c = aVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new g(qVar, this.b, this.c));
    }
}
