package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.a;
import io.reactivex.k;
import io.reactivex.q;
import java.util.concurrent.Callable;

/* compiled from: ObservableError */
public final class ag<T> extends k<T> {
    final Callable<? extends Throwable> a;

    public ag(Callable<? extends Throwable> callable) {
        this.a = callable;
    }

    public void subscribeActual(q<? super T> qVar) {
        try {
            th = (Throwable) a.a(this.a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.exceptions.a.b(th);
        }
        EmptyDisposable.a(th, qVar);
    }
}
