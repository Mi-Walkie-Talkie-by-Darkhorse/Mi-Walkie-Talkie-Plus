package io.reactivex.a.a;

import io.reactivex.b.g;
import io.reactivex.r;
import java.util.concurrent.Callable;

/* compiled from: RxAndroidPlugins */
public final class a {
    private static volatile g<Callable<r>, r> a;
    private static volatile g<r, r> b;

    public static r a(Callable<r> callable) {
        if (callable == null) {
            throw new NullPointerException("scheduler == null");
        }
        g<Callable<r>, r> gVar = a;
        if (gVar == null) {
            return b(callable);
        }
        return a(gVar, callable);
    }

    public static r a(r rVar) {
        if (rVar == null) {
            throw new NullPointerException("scheduler == null");
        }
        g<r, r> gVar = b;
        return gVar == null ? rVar : (r) a(gVar, (T) rVar);
    }

    static r b(Callable<r> callable) {
        try {
            r rVar = (r) callable.call();
            if (rVar != null) {
                return rVar;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            throw io.reactivex.exceptions.a.a(th);
        }
    }

    static r a(g<Callable<r>, r> gVar, Callable<r> callable) {
        r rVar = (r) a(gVar, (T) callable);
        if (rVar != null) {
            return rVar;
        }
        throw new NullPointerException("Scheduler Callable returned null");
    }

    static <T, R> R a(g<T, R> gVar, T t) {
        try {
            return gVar.apply(t);
        } catch (Throwable th) {
            throw io.reactivex.exceptions.a.a(th);
        }
    }
}
