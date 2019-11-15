package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.a;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.Callable;

/* compiled from: ObservableDefer */
public final class s<T> extends k<T> {
    final Callable<? extends o<? extends T>> a;

    public s(Callable<? extends o<? extends T>> callable) {
        this.a = callable;
    }

    public void subscribeActual(q<? super T> qVar) {
        try {
            ((o) a.a(this.a.call(), "null ObservableSource supplied")).subscribe(qVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.a(th, qVar);
        }
    }
}
