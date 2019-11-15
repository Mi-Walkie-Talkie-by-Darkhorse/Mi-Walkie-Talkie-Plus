package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.Beta;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureBuffer;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureDrop;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureLatest;
import io.reactivex.internal.subscribers.StrictSubscriber;
import org.a.a;
import org.a.b;

/* compiled from: Flowable */
public abstract class e<T> implements a<T> {
    static final int a = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    /* access modifiers changed from: protected */
    public abstract void b(b<? super T> bVar);

    public static int a() {
        return a;
    }

    @CheckReturnValue
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @SchedulerSupport("none")
    public final e<T> b() {
        return a(a(), false, true);
    }

    @CheckReturnValue
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @SchedulerSupport("none")
    public final e<T> a(int i, boolean z, boolean z2) {
        io.reactivex.internal.functions.a.a(i, "bufferSize");
        return io.reactivex.d.a.a((e<T>) new FlowableOnBackpressureBuffer<T>(this, i, z2, z, Functions.c));
    }

    @CheckReturnValue
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @SchedulerSupport("none")
    public final e<T> c() {
        return io.reactivex.d.a.a((e<T>) new FlowableOnBackpressureDrop<T>(this));
    }

    @CheckReturnValue
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @SchedulerSupport("none")
    public final e<T> d() {
        return io.reactivex.d.a.a((e<T>) new FlowableOnBackpressureLatest<T>(this));
    }

    @BackpressureSupport(BackpressureKind.SPECIAL)
    @SchedulerSupport("none")
    public final void a(b<? super T> bVar) {
        if (bVar instanceof f) {
            a((f) bVar);
            return;
        }
        io.reactivex.internal.functions.a.a(bVar, "s is null");
        a((f<? super T>) new StrictSubscriber<Object>(bVar));
    }

    @BackpressureSupport(BackpressureKind.SPECIAL)
    @Beta
    @SchedulerSupport("none")
    public final void a(f<? super T> fVar) {
        io.reactivex.internal.functions.a.a(fVar, "s is null");
        try {
            b a2 = io.reactivex.d.a.a(this, (b<? super T>) fVar);
            io.reactivex.internal.functions.a.a(a2, "Plugin returned null Subscriber");
            b(a2);
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
