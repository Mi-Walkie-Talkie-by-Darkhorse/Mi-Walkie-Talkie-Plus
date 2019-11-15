package io.reactivex;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.internal.functions.a;
import io.reactivex.internal.observers.f;

/* compiled from: Maybe */
public abstract class g<T> implements i<T> {
    /* access modifiers changed from: protected */
    public abstract void b(h<? super T> hVar);

    @CheckReturnValue
    @SchedulerSupport("none")
    public final T a() {
        f fVar = new f();
        a(fVar);
        return fVar.b();
    }

    @SchedulerSupport("none")
    public final void a(h<? super T> hVar) {
        a.a(hVar, "observer is null");
        h a = io.reactivex.d.a.a(this, hVar);
        a.a(a, "observer returned by the RxJavaPlugins hook is null");
        try {
            b(a);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
