package io.reactivex.internal.operators.observable;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.a;
import io.reactivex.o;
import io.reactivex.s;
import io.reactivex.t;
import java.util.concurrent.Callable;

/* compiled from: ObservableReduceWithSingle */
public final class bg<T, R> extends s<R> {
    final o<T> a;
    final Callable<R> b;
    final c<R, ? super T, R> c;

    public bg(o<T> oVar, Callable<R> callable, c<R, ? super T, R> cVar) {
        this.a = oVar;
        this.b = callable;
        this.c = cVar;
    }

    /* access modifiers changed from: protected */
    public void b(t<? super R> tVar) {
        try {
            this.a.subscribe(new a(tVar, this.c, a.a(this.b.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.a(th, tVar);
        }
    }
}
