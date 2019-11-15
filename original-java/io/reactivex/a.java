package io.reactivex;

import io.reactivex.annotations.SchedulerSupport;

/* compiled from: Completable */
public abstract class a implements c {
    /* access modifiers changed from: protected */
    public abstract void b(b bVar);

    private static NullPointerException a(Throwable th) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th);
        return nullPointerException;
    }

    @SchedulerSupport("none")
    public final void a(b bVar) {
        io.reactivex.internal.functions.a.a(bVar, "s is null");
        try {
            b(io.reactivex.d.a.a(this, bVar));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.d.a.a(th);
            throw a(th);
        }
    }
}
