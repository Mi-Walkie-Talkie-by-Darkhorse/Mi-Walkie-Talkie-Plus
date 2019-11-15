package io.reactivex.d;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.b.c;
import io.reactivex.b.f;
import io.reactivex.b.g;
import io.reactivex.e;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.exceptions.UndeliverableException;
import io.reactivex.h;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.k;
import io.reactivex.q;
import io.reactivex.r;
import io.reactivex.s;
import io.reactivex.t;
import java.util.concurrent.Callable;
import org.a.b;

/* compiled from: RxJavaPlugins */
public final class a {
    @Nullable
    static volatile f<? super Throwable> a;
    @Nullable
    static volatile g<? super Runnable, ? extends Runnable> b;
    @Nullable
    static volatile g<? super Callable<r>, ? extends r> c;
    @Nullable
    static volatile g<? super Callable<r>, ? extends r> d;
    @Nullable
    static volatile g<? super Callable<r>, ? extends r> e;
    @Nullable
    static volatile g<? super Callable<r>, ? extends r> f;
    @Nullable
    static volatile g<? super r, ? extends r> g;
    @Nullable
    static volatile g<? super r, ? extends r> h;
    @Nullable
    static volatile g<? super e, ? extends e> i;
    @Nullable
    static volatile g<? super k, ? extends k> j;
    @Nullable
    static volatile g<? super io.reactivex.c.a, ? extends io.reactivex.c.a> k;
    @Nullable
    static volatile g<? super io.reactivex.g, ? extends io.reactivex.g> l;
    @Nullable
    static volatile g<? super s, ? extends s> m;
    static volatile g<? super io.reactivex.a, ? extends io.reactivex.a> n;
    @Nullable
    static volatile c<? super e, ? super b, ? extends b> o;
    @Nullable
    static volatile c<? super io.reactivex.g, ? super h, ? extends h> p;
    @Nullable
    static volatile c<? super k, ? super q, ? extends q> q;
    @Nullable
    static volatile c<? super s, ? super t, ? extends t> r;
    @Nullable
    static volatile c<? super io.reactivex.a, ? super io.reactivex.b, ? extends io.reactivex.b> s;
    @Nullable
    static volatile io.reactivex.b.e t;
    static volatile boolean u;

    public static boolean a() {
        return u;
    }

    @NonNull
    public static r a(@NonNull Callable<r> callable) {
        io.reactivex.internal.functions.a.a(callable, "Scheduler Callable can't be null");
        g<? super Callable<r>, ? extends r> gVar = c;
        if (gVar == null) {
            return e(callable);
        }
        return a(gVar, callable);
    }

    @NonNull
    public static r b(@NonNull Callable<r> callable) {
        io.reactivex.internal.functions.a.a(callable, "Scheduler Callable can't be null");
        g<? super Callable<r>, ? extends r> gVar = e;
        if (gVar == null) {
            return e(callable);
        }
        return a(gVar, callable);
    }

    @NonNull
    public static r c(@NonNull Callable<r> callable) {
        io.reactivex.internal.functions.a.a(callable, "Scheduler Callable can't be null");
        g<? super Callable<r>, ? extends r> gVar = f;
        if (gVar == null) {
            return e(callable);
        }
        return a(gVar, callable);
    }

    @NonNull
    public static r d(@NonNull Callable<r> callable) {
        io.reactivex.internal.functions.a.a(callable, "Scheduler Callable can't be null");
        g<? super Callable<r>, ? extends r> gVar = d;
        if (gVar == null) {
            return e(callable);
        }
        return a(gVar, callable);
    }

    @NonNull
    public static r a(@NonNull r rVar) {
        g<? super r, ? extends r> gVar = g;
        return gVar == null ? rVar : (r) a(gVar, (T) rVar);
    }

    public static void a(@NonNull Throwable th) {
        f<? super Throwable> fVar = a;
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!b(th)) {
            th = new UndeliverableException(th);
        }
        if (fVar != null) {
            try {
                fVar.accept(th);
                return;
            } catch (Throwable th2) {
                ThrowableExtension.printStackTrace(th2);
                c(th2);
            }
        }
        ThrowableExtension.printStackTrace(th);
        c(th);
    }

    static boolean b(Throwable th) {
        if (!(th instanceof OnErrorNotImplementedException) && !(th instanceof MissingBackpressureException) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof CompositeException)) {
            return false;
        }
        return true;
    }

    static void c(@NonNull Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }

    @NonNull
    public static r b(@NonNull r rVar) {
        g<? super r, ? extends r> gVar = h;
        return gVar == null ? rVar : (r) a(gVar, (T) rVar);
    }

    @NonNull
    public static Runnable a(@NonNull Runnable runnable) {
        g<? super Runnable, ? extends Runnable> gVar = b;
        return gVar == null ? runnable : (Runnable) a(gVar, (T) runnable);
    }

    @NonNull
    public static <T> b<? super T> a(@NonNull e<T> eVar, @NonNull b<? super T> bVar) {
        c<? super e, ? super b, ? extends b> cVar = o;
        if (cVar != null) {
            return (b) a(cVar, eVar, bVar);
        }
        return bVar;
    }

    @NonNull
    public static <T> q<? super T> a(@NonNull k<T> kVar, @NonNull q<? super T> qVar) {
        c<? super k, ? super q, ? extends q> cVar = q;
        if (cVar != null) {
            return (q) a(cVar, kVar, qVar);
        }
        return qVar;
    }

    @NonNull
    public static <T> t<? super T> a(@NonNull s<T> sVar, @NonNull t<? super T> tVar) {
        c<? super s, ? super t, ? extends t> cVar = r;
        if (cVar != null) {
            return (t) a(cVar, sVar, tVar);
        }
        return tVar;
    }

    @NonNull
    public static io.reactivex.b a(@NonNull io.reactivex.a aVar, @NonNull io.reactivex.b bVar) {
        c<? super io.reactivex.a, ? super io.reactivex.b, ? extends io.reactivex.b> cVar = s;
        if (cVar != null) {
            return (io.reactivex.b) a(cVar, aVar, bVar);
        }
        return bVar;
    }

    @NonNull
    public static <T> h<? super T> a(@NonNull io.reactivex.g<T> gVar, @NonNull h<? super T> hVar) {
        c<? super io.reactivex.g, ? super h, ? extends h> cVar = p;
        if (cVar != null) {
            return (h) a(cVar, gVar, hVar);
        }
        return hVar;
    }

    @NonNull
    public static <T> io.reactivex.g<T> a(@NonNull io.reactivex.g<T> gVar) {
        g<? super io.reactivex.g, ? extends io.reactivex.g> gVar2 = l;
        if (gVar2 != null) {
            return (io.reactivex.g) a(gVar2, (T) gVar);
        }
        return gVar;
    }

    @NonNull
    public static <T> e<T> a(@NonNull e<T> eVar) {
        g<? super e, ? extends e> gVar = i;
        if (gVar != null) {
            return (e) a(gVar, (T) eVar);
        }
        return eVar;
    }

    @NonNull
    public static <T> k<T> a(@NonNull k<T> kVar) {
        g<? super k, ? extends k> gVar = j;
        if (gVar != null) {
            return (k) a(gVar, (T) kVar);
        }
        return kVar;
    }

    @NonNull
    public static <T> io.reactivex.c.a<T> a(@NonNull io.reactivex.c.a<T> aVar) {
        g<? super io.reactivex.c.a, ? extends io.reactivex.c.a> gVar = k;
        if (gVar != null) {
            return (io.reactivex.c.a) a(gVar, (T) aVar);
        }
        return aVar;
    }

    @NonNull
    public static <T> s<T> a(@NonNull s<T> sVar) {
        g<? super s, ? extends s> gVar = m;
        if (gVar != null) {
            return (s) a(gVar, (T) sVar);
        }
        return sVar;
    }

    @NonNull
    public static io.reactivex.a a(@NonNull io.reactivex.a aVar) {
        g<? super io.reactivex.a, ? extends io.reactivex.a> gVar = n;
        if (gVar != null) {
            return (io.reactivex.a) a(gVar, (T) aVar);
        }
        return aVar;
    }

    public static boolean b() {
        io.reactivex.b.e eVar = t;
        if (eVar == null) {
            return false;
        }
        try {
            return eVar.a();
        } catch (Throwable th) {
            throw ExceptionHelper.a(th);
        }
    }

    @NonNull
    static <T, R> R a(@NonNull g<T, R> gVar, @NonNull T t2) {
        try {
            return gVar.apply(t2);
        } catch (Throwable th) {
            throw ExceptionHelper.a(th);
        }
    }

    @NonNull
    static <T, U, R> R a(@NonNull c<T, U, R> cVar, @NonNull T t2, @NonNull U u2) {
        try {
            return cVar.a(t2, u2);
        } catch (Throwable th) {
            throw ExceptionHelper.a(th);
        }
    }

    @NonNull
    static r e(@NonNull Callable<r> callable) {
        try {
            return (r) io.reactivex.internal.functions.a.a(callable.call(), "Scheduler Callable result can't be null");
        } catch (Throwable th) {
            throw ExceptionHelper.a(th);
        }
    }

    @NonNull
    static r a(@NonNull g<? super Callable<r>, ? extends r> gVar, Callable<r> callable) {
        return (r) io.reactivex.internal.functions.a.a(a(gVar, (T) callable), "Scheduler Callable result can't be null");
    }
}
