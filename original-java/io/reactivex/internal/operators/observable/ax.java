package io.reactivex.internal.operators.observable;

import io.reactivex.internal.functions.a;
import io.reactivex.n;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableLift */
public final class ax<R, T> extends a<T, R> {
    final n<? extends R, ? super T> b;

    public ax(o<T> oVar, n<? extends R, ? super T> nVar) {
        super(oVar);
        this.b = nVar;
    }

    public void subscribeActual(q<? super R> qVar) {
        try {
            this.a.subscribe((q) a.a(this.b.a(qVar), "Operator " + this.b + " returned a null Observer"));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.d.a.a(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
