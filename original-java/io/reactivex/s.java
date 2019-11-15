package io.reactivex;

import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.a;
import io.reactivex.internal.observers.ConsumerSingleObserver;
import io.reactivex.internal.observers.f;
import io.reactivex.internal.operators.single.SingleObserveOn;
import io.reactivex.internal.operators.single.SingleSubscribeOn;

/* compiled from: Single */
public abstract class s<T> implements u<T> {
    /* access modifiers changed from: protected */
    public abstract void b(@NonNull t<? super T> tVar);

    @CheckReturnValue
    @SchedulerSupport("none")
    public final T a() {
        f fVar = new f();
        a((t<? super T>) fVar);
        return fVar.b();
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> s<R> a(g<? super T, ? extends R> gVar) {
        a.a(gVar, "mapper is null");
        return io.reactivex.d.a.a((s<T>) new io.reactivex.internal.operators.single.a<T>(this, gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final s<T> a(r rVar) {
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((s<T>) new SingleObserveOn<T>(this, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final b a(io.reactivex.b.f<? super T> fVar) {
        return a(fVar, Functions.f);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final b a(io.reactivex.b.f<? super T> fVar, io.reactivex.b.f<? super Throwable> fVar2) {
        a.a(fVar, "onSuccess is null");
        a.a(fVar2, "onError is null");
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(fVar, fVar2);
        a((t<? super T>) consumerSingleObserver);
        return consumerSingleObserver;
    }

    @SchedulerSupport("none")
    public final void a(t<? super T> tVar) {
        a.a(tVar, "subscriber is null");
        t a = io.reactivex.d.a.a(this, tVar);
        a.a(a, "subscriber returned by the RxJavaPlugins hook is null");
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

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final s<T> b(r rVar) {
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((s<T>) new SingleSubscribeOn<T>(this, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> b() {
        if (this instanceof io.reactivex.internal.a.a) {
            return ((io.reactivex.internal.a.a) this).f_();
        }
        return io.reactivex.d.a.a((k<T>) new io.reactivex.internal.operators.single.b<T>(this));
    }
}
