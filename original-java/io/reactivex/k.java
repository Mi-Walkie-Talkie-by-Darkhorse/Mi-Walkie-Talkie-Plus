package io.reactivex;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.Experimental;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.b.b;
import io.reactivex.b.c;
import io.reactivex.b.d;
import io.reactivex.b.f;
import io.reactivex.b.g;
import io.reactivex.b.h;
import io.reactivex.b.i;
import io.reactivex.b.j;
import io.reactivex.b.l;
import io.reactivex.b.m;
import io.reactivex.b.n;
import io.reactivex.b.p;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.a;
import io.reactivex.internal.observers.ForEachWhileObserver;
import io.reactivex.internal.observers.LambdaObserver;
import io.reactivex.internal.observers.e;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureError;
import io.reactivex.internal.operators.observable.BlockingObservableIterable;
import io.reactivex.internal.operators.observable.ObservableAmb;
import io.reactivex.internal.operators.observable.ObservableBuffer;
import io.reactivex.internal.operators.observable.ObservableCache;
import io.reactivex.internal.operators.observable.ObservableCombineLatest;
import io.reactivex.internal.operators.observable.ObservableConcatMap;
import io.reactivex.internal.operators.observable.ObservableConcatMapEager;
import io.reactivex.internal.operators.observable.ObservableCreate;
import io.reactivex.internal.operators.observable.ObservableDebounceTimed;
import io.reactivex.internal.operators.observable.ObservableDoFinally;
import io.reactivex.internal.operators.observable.ObservableFlatMap;
import io.reactivex.internal.operators.observable.ObservableFlatMapCompletableCompletable;
import io.reactivex.internal.operators.observable.ObservableFlatMapMaybe;
import io.reactivex.internal.operators.observable.ObservableFlatMapSingle;
import io.reactivex.internal.operators.observable.ObservableGroupBy;
import io.reactivex.internal.operators.observable.ObservableGroupJoin;
import io.reactivex.internal.operators.observable.ObservableInterval;
import io.reactivex.internal.operators.observable.ObservableIntervalRange;
import io.reactivex.internal.operators.observable.ObservableJoin;
import io.reactivex.internal.operators.observable.ObservableObserveOn;
import io.reactivex.internal.operators.observable.ObservablePublish;
import io.reactivex.internal.operators.observable.ObservablePublishSelector;
import io.reactivex.internal.operators.observable.ObservableRange;
import io.reactivex.internal.operators.observable.ObservableRangeLong;
import io.reactivex.internal.operators.observable.ObservableRepeat;
import io.reactivex.internal.operators.observable.ObservableRepeatUntil;
import io.reactivex.internal.operators.observable.ObservableRepeatWhen;
import io.reactivex.internal.operators.observable.ObservableReplay;
import io.reactivex.internal.operators.observable.ObservableRetryBiPredicate;
import io.reactivex.internal.operators.observable.ObservableRetryPredicate;
import io.reactivex.internal.operators.observable.ObservableRetryWhen;
import io.reactivex.internal.operators.observable.ObservableSampleTimed;
import io.reactivex.internal.operators.observable.ObservableSampleWithObservable;
import io.reactivex.internal.operators.observable.ObservableScalarXMap;
import io.reactivex.internal.operators.observable.ObservableSequenceEqualSingle;
import io.reactivex.internal.operators.observable.ObservableSkipLast;
import io.reactivex.internal.operators.observable.ObservableSkipLastTimed;
import io.reactivex.internal.operators.observable.ObservableSubscribeOn;
import io.reactivex.internal.operators.observable.ObservableSwitchMap;
import io.reactivex.internal.operators.observable.ObservableTakeLast;
import io.reactivex.internal.operators.observable.ObservableTakeLastTimed;
import io.reactivex.internal.operators.observable.ObservableTakeUntil;
import io.reactivex.internal.operators.observable.ObservableThrottleFirstTimed;
import io.reactivex.internal.operators.observable.ObservableTimeout;
import io.reactivex.internal.operators.observable.ObservableTimeoutTimed;
import io.reactivex.internal.operators.observable.ObservableTimer;
import io.reactivex.internal.operators.observable.ObservableUnsubscribeOn;
import io.reactivex.internal.operators.observable.ObservableUsing;
import io.reactivex.internal.operators.observable.ObservableWindow;
import io.reactivex.internal.operators.observable.ObservableWithLatestFrom;
import io.reactivex.internal.operators.observable.ObservableWithLatestFromMany;
import io.reactivex.internal.operators.observable.ObservableZip;
import io.reactivex.internal.operators.observable.aa;
import io.reactivex.internal.operators.observable.ab;
import io.reactivex.internal.operators.observable.ad;
import io.reactivex.internal.operators.observable.ae;
import io.reactivex.internal.operators.observable.af;
import io.reactivex.internal.operators.observable.ag;
import io.reactivex.internal.operators.observable.ah;
import io.reactivex.internal.operators.observable.ai;
import io.reactivex.internal.operators.observable.aj;
import io.reactivex.internal.operators.observable.ak;
import io.reactivex.internal.operators.observable.al;
import io.reactivex.internal.operators.observable.am;
import io.reactivex.internal.operators.observable.an;
import io.reactivex.internal.operators.observable.ao;
import io.reactivex.internal.operators.observable.ap;
import io.reactivex.internal.operators.observable.aq;
import io.reactivex.internal.operators.observable.ar;
import io.reactivex.internal.operators.observable.as;
import io.reactivex.internal.operators.observable.at;
import io.reactivex.internal.operators.observable.au;
import io.reactivex.internal.operators.observable.av;
import io.reactivex.internal.operators.observable.aw;
import io.reactivex.internal.operators.observable.ax;
import io.reactivex.internal.operators.observable.ay;
import io.reactivex.internal.operators.observable.az;
import io.reactivex.internal.operators.observable.ba;
import io.reactivex.internal.operators.observable.bb;
import io.reactivex.internal.operators.observable.bc;
import io.reactivex.internal.operators.observable.bd;
import io.reactivex.internal.operators.observable.be;
import io.reactivex.internal.operators.observable.bf;
import io.reactivex.internal.operators.observable.bg;
import io.reactivex.internal.operators.observable.bh;
import io.reactivex.internal.operators.observable.bi;
import io.reactivex.internal.operators.observable.bj;
import io.reactivex.internal.operators.observable.bk;
import io.reactivex.internal.operators.observable.bl;
import io.reactivex.internal.operators.observable.bm;
import io.reactivex.internal.operators.observable.bn;
import io.reactivex.internal.operators.observable.bo;
import io.reactivex.internal.operators.observable.bp;
import io.reactivex.internal.operators.observable.bq;
import io.reactivex.internal.operators.observable.br;
import io.reactivex.internal.operators.observable.bs;
import io.reactivex.internal.operators.observable.bt;
import io.reactivex.internal.operators.observable.bu;
import io.reactivex.internal.operators.observable.bv;
import io.reactivex.internal.operators.observable.bw;
import io.reactivex.internal.operators.observable.bx;
import io.reactivex.internal.operators.observable.by;
import io.reactivex.internal.operators.observable.bz;
import io.reactivex.internal.operators.observable.ca;
import io.reactivex.internal.operators.observable.cb;
import io.reactivex.internal.operators.observable.o;
import io.reactivex.internal.operators.observable.q;
import io.reactivex.internal.operators.observable.r;
import io.reactivex.internal.operators.observable.s;
import io.reactivex.internal.operators.observable.t;
import io.reactivex.internal.operators.observable.u;
import io.reactivex.internal.operators.observable.v;
import io.reactivex.internal.operators.observable.w;
import io.reactivex.internal.operators.observable.x;
import io.reactivex.internal.operators.observable.y;
import io.reactivex.internal.operators.observable.z;
import io.reactivex.internal.util.ArrayListSupplier;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.HashMapSupplier;
import io.reactivex.observers.TestObserver;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: Observable */
public abstract class k<T> implements o<T> {
    /* access modifiers changed from: protected */
    public abstract void subscribeActual(q<? super T> qVar);

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> amb(Iterable<? extends o<? extends T>> iterable) {
        a.a(iterable, "sources is null");
        return io.reactivex.d.a.a((k<T>) new ObservableAmb<T>(null, iterable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> ambArray(o<? extends T>... oVarArr) {
        a.a(oVarArr, "sources is null");
        int length = oVarArr.length;
        if (length == 0) {
            return empty();
        }
        if (length == 1) {
            return wrap(oVarArr[0]);
        }
        return io.reactivex.d.a.a((k<T>) new ObservableAmb<T>(oVarArr, null));
    }

    public static int bufferSize() {
        return e.a();
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> combineLatest(g<? super Object[], ? extends R> gVar, int i, o<? extends T>... oVarArr) {
        return combineLatest(oVarArr, gVar, i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> combineLatest(Iterable<? extends o<? extends T>> iterable, g<? super Object[], ? extends R> gVar) {
        return combineLatest(iterable, gVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> combineLatest(Iterable<? extends o<? extends T>> iterable, g<? super Object[], ? extends R> gVar, int i) {
        a.a(iterable, "sources is null");
        a.a(gVar, "combiner is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new ObservableCombineLatest<T>(null, iterable, gVar, i << 1, false));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> combineLatest(o<? extends T>[] oVarArr, g<? super Object[], ? extends R> gVar) {
        return combineLatest(oVarArr, gVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> combineLatest(o<? extends T>[] oVarArr, g<? super Object[], ? extends R> gVar, int i) {
        a.a(oVarArr, "sources is null");
        if (oVarArr.length == 0) {
            return empty();
        }
        a.a(gVar, "combiner is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new ObservableCombineLatest<T>(oVarArr, null, gVar, i << 1, false));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, R> k<R> combineLatest(o<? extends T1> oVar, o<? extends T2> oVar2, c<? super T1, ? super T2, ? extends R> cVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        return combineLatest(Functions.a(cVar), bufferSize(), (o<? extends T>[]) new o[]{oVar, oVar2});
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, R> k<R> combineLatest(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        return combineLatest(Functions.a(hVar), bufferSize(), (o<? extends T>[]) new o[]{oVar, oVar2, oVar3});
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, R> k<R> combineLatest(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        return combineLatest(Functions.a(iVar), bufferSize(), (o<? extends T>[]) new o[]{oVar, oVar2, oVar3, oVar4});
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, T5, R> k<R> combineLatest(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, o<? extends T5> oVar5, j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        a.a(oVar5, "source5 is null");
        return combineLatest(Functions.a(jVar), bufferSize(), (o<? extends T>[]) new o[]{oVar, oVar2, oVar3, oVar4, oVar5});
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, T5, T6, R> k<R> combineLatest(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, o<? extends T5> oVar5, o<? extends T6> oVar6, io.reactivex.b.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        a.a(oVar5, "source5 is null");
        a.a(oVar6, "source6 is null");
        return combineLatest(Functions.a(kVar), bufferSize(), (o<? extends T>[]) new o[]{oVar, oVar2, oVar3, oVar4, oVar5, oVar6});
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> k<R> combineLatest(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, o<? extends T5> oVar5, o<? extends T6> oVar6, o<? extends T7> oVar7, l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        a.a(oVar5, "source5 is null");
        a.a(oVar6, "source6 is null");
        a.a(oVar7, "source7 is null");
        return combineLatest(Functions.a(lVar), bufferSize(), (o<? extends T>[]) new o[]{oVar, oVar2, oVar3, oVar4, oVar5, oVar6, oVar7});
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> k<R> combineLatest(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, o<? extends T5> oVar5, o<? extends T6> oVar6, o<? extends T7> oVar7, o<? extends T8> oVar8, m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        a.a(oVar5, "source5 is null");
        a.a(oVar6, "source6 is null");
        a.a(oVar7, "source7 is null");
        a.a(oVar8, "source8 is null");
        return combineLatest(Functions.a(mVar), bufferSize(), (o<? extends T>[]) new o[]{oVar, oVar2, oVar3, oVar4, oVar5, oVar6, oVar7, oVar8});
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> k<R> combineLatest(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, o<? extends T5> oVar5, o<? extends T6> oVar6, o<? extends T7> oVar7, o<? extends T8> oVar8, o<? extends T9> oVar9, n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        a.a(oVar5, "source5 is null");
        a.a(oVar6, "source6 is null");
        a.a(oVar7, "source7 is null");
        a.a(oVar8, "source8 is null");
        a.a(oVar9, "source9 is null");
        return combineLatest(Functions.a(nVar), bufferSize(), (o<? extends T>[]) new o[]{oVar, oVar2, oVar3, oVar4, oVar5, oVar6, oVar7, oVar8, oVar9});
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> combineLatestDelayError(o<? extends T>[] oVarArr, g<? super Object[], ? extends R> gVar) {
        return combineLatestDelayError(oVarArr, gVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> combineLatestDelayError(g<? super Object[], ? extends R> gVar, int i, o<? extends T>... oVarArr) {
        return combineLatestDelayError(oVarArr, gVar, i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> combineLatestDelayError(o<? extends T>[] oVarArr, g<? super Object[], ? extends R> gVar, int i) {
        a.a(i, "bufferSize");
        a.a(gVar, "combiner is null");
        if (oVarArr.length == 0) {
            return empty();
        }
        return io.reactivex.d.a.a((k<T>) new ObservableCombineLatest<T>(oVarArr, null, gVar, i << 1, true));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> combineLatestDelayError(Iterable<? extends o<? extends T>> iterable, g<? super Object[], ? extends R> gVar) {
        return combineLatestDelayError(iterable, gVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> combineLatestDelayError(Iterable<? extends o<? extends T>> iterable, g<? super Object[], ? extends R> gVar, int i) {
        a.a(iterable, "sources is null");
        a.a(gVar, "combiner is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new ObservableCombineLatest<T>(null, iterable, gVar, i << 1, true));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concat(Iterable<? extends o<? extends T>> iterable) {
        a.a(iterable, "sources is null");
        return fromIterable(iterable).concatMapDelayError(Functions.a(), bufferSize(), false);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concat(o<? extends o<? extends T>> oVar) {
        return concat(oVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concat(o<? extends o<? extends T>> oVar, int i) {
        a.a(oVar, "sources is null");
        a.a(i, "prefetch");
        return io.reactivex.d.a.a((k<T>) new ObservableConcatMap<T>(oVar, Functions.a(), i, ErrorMode.IMMEDIATE));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concat(o<? extends T> oVar, o<? extends T> oVar2) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        return concatArray(oVar, oVar2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concat(o<? extends T> oVar, o<? extends T> oVar2, o<? extends T> oVar3) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        return concatArray(oVar, oVar2, oVar3);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concat(o<? extends T> oVar, o<? extends T> oVar2, o<? extends T> oVar3, o<? extends T> oVar4) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        return concatArray(oVar, oVar2, oVar3, oVar4);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatArray(o<? extends T>... oVarArr) {
        if (oVarArr.length == 0) {
            return empty();
        }
        if (oVarArr.length == 1) {
            return wrap(oVarArr[0]);
        }
        return io.reactivex.d.a.a((k<T>) new ObservableConcatMap<T>(fromArray(oVarArr), Functions.a(), bufferSize(), ErrorMode.BOUNDARY));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatArrayDelayError(o<? extends T>... oVarArr) {
        if (oVarArr.length == 0) {
            return empty();
        }
        if (oVarArr.length == 1) {
            return wrap(oVarArr[0]);
        }
        return concatDelayError((o<? extends o<? extends T>>) fromArray(oVarArr));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatArrayEager(o<? extends T>... oVarArr) {
        return concatArrayEager(bufferSize(), bufferSize(), oVarArr);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatArrayEager(int i, int i2, o<? extends T>... oVarArr) {
        return fromArray(oVarArr).concatMapEagerDelayError(Functions.a(), i, i2, false);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatDelayError(Iterable<? extends o<? extends T>> iterable) {
        a.a(iterable, "sources is null");
        return concatDelayError((o<? extends o<? extends T>>) fromIterable(iterable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatDelayError(o<? extends o<? extends T>> oVar) {
        return concatDelayError(oVar, bufferSize(), true);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatDelayError(o<? extends o<? extends T>> oVar, int i, boolean z) {
        a.a(oVar, "sources is null");
        a.a(i, "prefetch is null");
        return io.reactivex.d.a.a((k<T>) new ObservableConcatMap<T>(oVar, Functions.a(), i, z ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatEager(o<? extends o<? extends T>> oVar) {
        return concatEager(oVar, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatEager(o<? extends o<? extends T>> oVar, int i, int i2) {
        a.a(Integer.valueOf(i), "maxConcurrency is null");
        a.a(Integer.valueOf(i2), "prefetch is null");
        return wrap(oVar).concatMapEager(Functions.a(), i, i2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatEager(Iterable<? extends o<? extends T>> iterable) {
        return concatEager(iterable, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> concatEager(Iterable<? extends o<? extends T>> iterable, int i, int i2) {
        a.a(Integer.valueOf(i), "maxConcurrency is null");
        a.a(Integer.valueOf(i2), "prefetch is null");
        return fromIterable(iterable).concatMapEagerDelayError(Functions.a(), i, i2, false);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> create(m<T> mVar) {
        a.a(mVar, "source is null");
        return io.reactivex.d.a.a((k<T>) new ObservableCreate<T>(mVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> defer(Callable<? extends o<? extends T>> callable) {
        a.a(callable, "supplier is null");
        return io.reactivex.d.a.a((k<T>) new s<T>(callable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> empty() {
        return io.reactivex.d.a.a(af.a);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> error(Callable<? extends Throwable> callable) {
        a.a(callable, "errorSupplier is null");
        return io.reactivex.d.a.a((k<T>) new ag<T>(callable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> error(Throwable th) {
        a.a(th, "e is null");
        return error(Functions.a(th));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> fromArray(T... tArr) {
        a.a(tArr, "items is null");
        if (tArr.length == 0) {
            return empty();
        }
        if (tArr.length == 1) {
            return just(tArr[0]);
        }
        return io.reactivex.d.a.a((k<T>) new aj<T>(tArr));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> fromCallable(Callable<? extends T> callable) {
        a.a(callable, "supplier is null");
        return io.reactivex.d.a.a((k<T>) new ak<T>(callable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> fromFuture(Future<? extends T> future) {
        a.a(future, "future is null");
        return io.reactivex.d.a.a((k<T>) new al<T>(future, 0, null));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> fromFuture(Future<? extends T> future, long j, TimeUnit timeUnit) {
        a.a(future, "future is null");
        a.a(timeUnit, "unit is null");
        return io.reactivex.d.a.a((k<T>) new al<T>(future, j, timeUnit));
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public static <T> k<T> fromFuture(Future<? extends T> future, long j, TimeUnit timeUnit, r rVar) {
        a.a(rVar, "scheduler is null");
        return fromFuture(future, j, timeUnit).subscribeOn(rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public static <T> k<T> fromFuture(Future<? extends T> future, r rVar) {
        a.a(rVar, "scheduler is null");
        return fromFuture(future).subscribeOn(rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> fromIterable(Iterable<? extends T> iterable) {
        a.a(iterable, "source is null");
        return io.reactivex.d.a.a((k<T>) new am<T>(iterable));
    }

    @CheckReturnValue
    @BackpressureSupport(BackpressureKind.UNBOUNDED_IN)
    @SchedulerSupport("none")
    public static <T> k<T> fromPublisher(org.a.a<? extends T> aVar) {
        a.a(aVar, "publisher is null");
        return io.reactivex.d.a.a((k<T>) new an<T>(aVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> generate(f<d<T>> fVar) {
        a.a(fVar, "generator  is null");
        return generate(Functions.e(), at.a(fVar), Functions.b());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, S> k<T> generate(Callable<S> callable, b<S, d<T>> bVar) {
        a.a(bVar, "generator  is null");
        return generate(callable, at.a(bVar), Functions.b());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, S> k<T> generate(Callable<S> callable, b<S, d<T>> bVar, f<? super S> fVar) {
        a.a(bVar, "generator  is null");
        return generate(callable, at.a(bVar), fVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, S> k<T> generate(Callable<S> callable, c<S, d<T>, S> cVar) {
        return generate(callable, cVar, Functions.b());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, S> k<T> generate(Callable<S> callable, c<S, d<T>, S> cVar, f<? super S> fVar) {
        a.a(callable, "initialState is null");
        a.a(cVar, "generator  is null");
        a.a(fVar, "disposeState is null");
        return io.reactivex.d.a.a((k<T>) new ap<T>(callable, cVar, fVar));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public static k<Long> interval(long j, long j2, TimeUnit timeUnit) {
        return interval(j, j2, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public static k<Long> interval(long j, long j2, TimeUnit timeUnit, r rVar) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableInterval<T>(Math.max(0, j), Math.max(0, j2), timeUnit, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public static k<Long> interval(long j, TimeUnit timeUnit) {
        return interval(j, j, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public static k<Long> interval(long j, TimeUnit timeUnit, r rVar) {
        return interval(j, j, timeUnit, rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public static k<Long> intervalRange(long j, long j2, long j3, long j4, TimeUnit timeUnit) {
        return intervalRange(j, j2, j3, j4, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public static k<Long> intervalRange(long j, long j2, long j3, long j4, TimeUnit timeUnit, r rVar) {
        if (j2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j2);
        } else if (j2 == 0) {
            return empty().delay(j3, timeUnit, rVar);
        } else {
            long j5 = j + (j2 - 1);
            if (j <= 0 || j5 >= 0) {
                a.a(timeUnit, "unit is null");
                a.a(rVar, "scheduler is null");
                return io.reactivex.d.a.a((k<T>) new ObservableIntervalRange<T>(j, j5, Math.max(0, j3), Math.max(0, j4), timeUnit, rVar));
            }
            throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
        }
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> just(T t) {
        a.a(t, "The item is null");
        return io.reactivex.d.a.a((k<T>) new au<T>(t));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> just(T t, T t2) {
        a.a(t, "The first item is null");
        a.a(t2, "The second item is null");
        return fromArray(t, t2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> just(T t, T t2, T t3) {
        a.a(t, "The first item is null");
        a.a(t2, "The second item is null");
        a.a(t3, "The third item is null");
        return fromArray(t, t2, t3);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> just(T t, T t2, T t3, T t4) {
        a.a(t, "The first item is null");
        a.a(t2, "The second item is null");
        a.a(t3, "The third item is null");
        a.a(t4, "The fourth item is null");
        return fromArray(t, t2, t3, t4);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> just(T t, T t2, T t3, T t4, T t5) {
        a.a(t, "The first item is null");
        a.a(t2, "The second item is null");
        a.a(t3, "The third item is null");
        a.a(t4, "The fourth item is null");
        a.a(t5, "The fifth item is null");
        return fromArray(t, t2, t3, t4, t5);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> just(T t, T t2, T t3, T t4, T t5, T t6) {
        a.a(t, "The first item is null");
        a.a(t2, "The second item is null");
        a.a(t3, "The third item is null");
        a.a(t4, "The fourth item is null");
        a.a(t5, "The fifth item is null");
        a.a(t6, "The sixth item is null");
        return fromArray(t, t2, t3, t4, t5, t6);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7) {
        a.a(t, "The first item is null");
        a.a(t2, "The second item is null");
        a.a(t3, "The third item is null");
        a.a(t4, "The fourth item is null");
        a.a(t5, "The fifth item is null");
        a.a(t6, "The sixth item is null");
        a.a(t7, "The seventh item is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        a.a(t, "The first item is null");
        a.a(t2, "The second item is null");
        a.a(t3, "The third item is null");
        a.a(t4, "The fourth item is null");
        a.a(t5, "The fifth item is null");
        a.a(t6, "The sixth item is null");
        a.a(t7, "The seventh item is null");
        a.a(t8, "The eighth item is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        a.a(t, "The first item is null");
        a.a(t2, "The second item is null");
        a.a(t3, "The third item is null");
        a.a(t4, "The fourth item is null");
        a.a(t5, "The fifth item is null");
        a.a(t6, "The sixth item is null");
        a.a(t7, "The seventh item is null");
        a.a(t8, "The eighth item is null");
        a.a(t9, "The ninth item is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8, t9);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10) {
        a.a(t, "The first item is null");
        a.a(t2, "The second item is null");
        a.a(t3, "The third item is null");
        a.a(t4, "The fourth item is null");
        a.a(t5, "The fifth item is null");
        a.a(t6, "The sixth item is null");
        a.a(t7, "The seventh item is null");
        a.a(t8, "The eighth item is null");
        a.a(t9, "The ninth item is null");
        a.a(t10, "The tenth item is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8, t9, t10);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> merge(Iterable<? extends o<? extends T>> iterable, int i, int i2) {
        return fromIterable(iterable).flatMap(Functions.a(), false, i, i2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeArray(int i, int i2, o<? extends T>... oVarArr) {
        return fromArray(oVarArr).flatMap(Functions.a(), false, i, i2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> merge(Iterable<? extends o<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(Functions.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> merge(Iterable<? extends o<? extends T>> iterable, int i) {
        return fromIterable(iterable).flatMap(Functions.a(), i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> merge(o<? extends o<? extends T>> oVar) {
        a.a(oVar, "sources is null");
        return io.reactivex.d.a.a((k<T>) new ObservableFlatMap<T>(oVar, Functions.a(), false, Integer.MAX_VALUE, bufferSize()));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> merge(o<? extends o<? extends T>> oVar, int i) {
        a.a(oVar, "sources is null");
        a.a(i, "maxConcurrency");
        return io.reactivex.d.a.a((k<T>) new ObservableFlatMap<T>(oVar, Functions.a(), false, i, bufferSize()));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> merge(o<? extends T> oVar, o<? extends T> oVar2) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        return fromArray(oVar, oVar2).flatMap(Functions.a(), false, 2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> merge(o<? extends T> oVar, o<? extends T> oVar2, o<? extends T> oVar3) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        return fromArray(oVar, oVar2, oVar3).flatMap(Functions.a(), false, 3);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> merge(o<? extends T> oVar, o<? extends T> oVar2, o<? extends T> oVar3, o<? extends T> oVar4) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        return fromArray(oVar, oVar2, oVar3, oVar4).flatMap(Functions.a(), false, 4);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeArray(o<? extends T>... oVarArr) {
        return fromArray(oVarArr).flatMap(Functions.a(), oVarArr.length);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeDelayError(Iterable<? extends o<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(Functions.a(), true);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeDelayError(Iterable<? extends o<? extends T>> iterable, int i, int i2) {
        return fromIterable(iterable).flatMap(Functions.a(), true, i, i2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeArrayDelayError(int i, int i2, o<? extends T>... oVarArr) {
        return fromArray(oVarArr).flatMap(Functions.a(), true, i, i2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeDelayError(Iterable<? extends o<? extends T>> iterable, int i) {
        return fromIterable(iterable).flatMap(Functions.a(), true, i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeDelayError(o<? extends o<? extends T>> oVar) {
        a.a(oVar, "sources is null");
        return io.reactivex.d.a.a((k<T>) new ObservableFlatMap<T>(oVar, Functions.a(), true, Integer.MAX_VALUE, bufferSize()));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeDelayError(o<? extends o<? extends T>> oVar, int i) {
        a.a(oVar, "sources is null");
        a.a(i, "maxConcurrency");
        return io.reactivex.d.a.a((k<T>) new ObservableFlatMap<T>(oVar, Functions.a(), true, i, bufferSize()));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeDelayError(o<? extends T> oVar, o<? extends T> oVar2) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        return fromArray(oVar, oVar2).flatMap(Functions.a(), true, 2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeDelayError(o<? extends T> oVar, o<? extends T> oVar2, o<? extends T> oVar3) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        return fromArray(oVar, oVar2, oVar3).flatMap(Functions.a(), true, 3);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeDelayError(o<? extends T> oVar, o<? extends T> oVar2, o<? extends T> oVar3, o<? extends T> oVar4) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        return fromArray(oVar, oVar2, oVar3, oVar4).flatMap(Functions.a(), true, 4);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> mergeArrayDelayError(o<? extends T>... oVarArr) {
        return fromArray(oVarArr).flatMap(Functions.a(), true, oVarArr.length);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> never() {
        return io.reactivex.d.a.a(bb.a);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static k<Integer> range(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + i2);
        } else if (i2 == 0) {
            return empty();
        } else {
            if (i2 == 1) {
                return just(Integer.valueOf(i));
            }
            if (((long) i) + ((long) (i2 - 1)) <= 2147483647L) {
                return io.reactivex.d.a.a((k<T>) new ObservableRange<T>(i, i2));
            }
            throw new IllegalArgumentException("Integer overflow");
        }
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static k<Long> rangeLong(long j, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j2);
        } else if (j2 == 0) {
            return empty();
        } else {
            if (j2 == 1) {
                return just(Long.valueOf(j));
            }
            long j3 = (j2 - 1) + j;
            if (j <= 0 || j3 >= 0) {
                return io.reactivex.d.a.a((k<T>) new ObservableRangeLong<T>(j, j2));
            }
            throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
        }
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> s<Boolean> sequenceEqual(o<? extends T> oVar, o<? extends T> oVar2) {
        return sequenceEqual(oVar, oVar2, a.a(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> s<Boolean> sequenceEqual(o<? extends T> oVar, o<? extends T> oVar2, d<? super T, ? super T> dVar) {
        return sequenceEqual(oVar, oVar2, dVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> s<Boolean> sequenceEqual(o<? extends T> oVar, o<? extends T> oVar2, d<? super T, ? super T> dVar, int i) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(dVar, "isEqual is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((s<T>) new ObservableSequenceEqualSingle<T>(oVar, oVar2, dVar, i));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> s<Boolean> sequenceEqual(o<? extends T> oVar, o<? extends T> oVar2, int i) {
        return sequenceEqual(oVar, oVar2, a.a(), i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> switchOnNext(o<? extends o<? extends T>> oVar, int i) {
        a.a(oVar, "sources is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new ObservableSwitchMap<T>(oVar, Functions.a(), i, false));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> switchOnNext(o<? extends o<? extends T>> oVar) {
        return switchOnNext(oVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> switchOnNextDelayError(o<? extends o<? extends T>> oVar) {
        return switchOnNextDelayError(oVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> switchOnNextDelayError(o<? extends o<? extends T>> oVar, int i) {
        a.a(oVar, "sources is null");
        a.a(i, "prefetch");
        return io.reactivex.d.a.a((k<T>) new ObservableSwitchMap<T>(oVar, Functions.a(), i, true));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public static k<Long> timer(long j, TimeUnit timeUnit) {
        return timer(j, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public static k<Long> timer(long j, TimeUnit timeUnit, r rVar) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableTimer<T>(Math.max(j, 0), timeUnit, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> unsafeCreate(o<T> oVar) {
        a.a(oVar, "source is null");
        a.a(oVar, "onSubscribe is null");
        if (!(oVar instanceof k)) {
            return io.reactivex.d.a.a((k<T>) new ao<T>(oVar));
        }
        throw new IllegalArgumentException("unsafeCreate(Observable) should be upgraded");
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, D> k<T> using(Callable<? extends D> callable, g<? super D, ? extends o<? extends T>> gVar, f<? super D> fVar) {
        return using(callable, gVar, fVar, true);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, D> k<T> using(Callable<? extends D> callable, g<? super D, ? extends o<? extends T>> gVar, f<? super D> fVar, boolean z) {
        a.a(callable, "resourceSupplier is null");
        a.a(gVar, "sourceSupplier is null");
        a.a(fVar, "disposer is null");
        return io.reactivex.d.a.a((k<T>) new ObservableUsing<T>(callable, gVar, fVar, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T> k<T> wrap(o<T> oVar) {
        a.a(oVar, "source is null");
        if (oVar instanceof k) {
            return io.reactivex.d.a.a((k) oVar);
        }
        return io.reactivex.d.a.a((k<T>) new ao<T>(oVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> zip(Iterable<? extends o<? extends T>> iterable, g<? super Object[], ? extends R> gVar) {
        a.a(gVar, "zipper is null");
        a.a(iterable, "sources is null");
        return io.reactivex.d.a.a((k<T>) new ObservableZip<T>(null, iterable, gVar, bufferSize(), false));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> zip(o<? extends o<? extends T>> oVar, g<? super Object[], ? extends R> gVar) {
        a.a(gVar, "zipper is null");
        a.a(oVar, "sources is null");
        return io.reactivex.d.a.a(new bv(oVar, 16).flatMap(at.c(gVar)));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, R> k<R> zip(o<? extends T1> oVar, o<? extends T2> oVar2, c<? super T1, ? super T2, ? extends R> cVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        return zipArray(Functions.a(cVar), false, bufferSize(), oVar, oVar2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, R> k<R> zip(o<? extends T1> oVar, o<? extends T2> oVar2, c<? super T1, ? super T2, ? extends R> cVar, boolean z) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        return zipArray(Functions.a(cVar), z, bufferSize(), oVar, oVar2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, R> k<R> zip(o<? extends T1> oVar, o<? extends T2> oVar2, c<? super T1, ? super T2, ? extends R> cVar, boolean z, int i) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        return zipArray(Functions.a(cVar), z, i, oVar, oVar2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, R> k<R> zip(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        return zipArray(Functions.a(hVar), false, bufferSize(), oVar, oVar2, oVar3);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, R> k<R> zip(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        return zipArray(Functions.a(iVar), false, bufferSize(), oVar, oVar2, oVar3, oVar4);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, T5, R> k<R> zip(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, o<? extends T5> oVar5, j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        a.a(oVar5, "source5 is null");
        return zipArray(Functions.a(jVar), false, bufferSize(), oVar, oVar2, oVar3, oVar4, oVar5);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, T5, T6, R> k<R> zip(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, o<? extends T5> oVar5, o<? extends T6> oVar6, io.reactivex.b.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        a.a(oVar5, "source5 is null");
        a.a(oVar6, "source6 is null");
        return zipArray(Functions.a(kVar), false, bufferSize(), oVar, oVar2, oVar3, oVar4, oVar5, oVar6);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> k<R> zip(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, o<? extends T5> oVar5, o<? extends T6> oVar6, o<? extends T7> oVar7, l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        a.a(oVar5, "source5 is null");
        a.a(oVar6, "source6 is null");
        a.a(oVar7, "source7 is null");
        return zipArray(Functions.a(lVar), false, bufferSize(), oVar, oVar2, oVar3, oVar4, oVar5, oVar6, oVar7);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> k<R> zip(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, o<? extends T5> oVar5, o<? extends T6> oVar6, o<? extends T7> oVar7, o<? extends T8> oVar8, m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        a.a(oVar5, "source5 is null");
        a.a(oVar6, "source6 is null");
        a.a(oVar7, "source7 is null");
        a.a(oVar8, "source8 is null");
        return zipArray(Functions.a(mVar), false, bufferSize(), oVar, oVar2, oVar3, oVar4, oVar5, oVar6, oVar7, oVar8);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> k<R> zip(o<? extends T1> oVar, o<? extends T2> oVar2, o<? extends T3> oVar3, o<? extends T4> oVar4, o<? extends T5> oVar5, o<? extends T6> oVar6, o<? extends T7> oVar7, o<? extends T8> oVar8, o<? extends T9> oVar9, n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        a.a(oVar, "source1 is null");
        a.a(oVar2, "source2 is null");
        a.a(oVar3, "source3 is null");
        a.a(oVar4, "source4 is null");
        a.a(oVar5, "source5 is null");
        a.a(oVar6, "source6 is null");
        a.a(oVar7, "source7 is null");
        a.a(oVar8, "source8 is null");
        a.a(oVar9, "source9 is null");
        return zipArray(Functions.a(nVar), false, bufferSize(), oVar, oVar2, oVar3, oVar4, oVar5, oVar6, oVar7, oVar8, oVar9);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> zipArray(g<? super Object[], ? extends R> gVar, boolean z, int i, o<? extends T>... oVarArr) {
        if (oVarArr.length == 0) {
            return empty();
        }
        a.a(gVar, "zipper is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new ObservableZip<T>(oVarArr, null, gVar, i, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public static <T, R> k<R> zipIterable(Iterable<? extends o<? extends T>> iterable, g<? super Object[], ? extends R> gVar, boolean z, int i) {
        a.a(gVar, "zipper is null");
        a.a(iterable, "sources is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new ObservableZip<T>(null, iterable, gVar, i, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<Boolean> all(p<? super T> pVar) {
        a.a(pVar, "predicate is null");
        return io.reactivex.d.a.a((s<T>) new io.reactivex.internal.operators.observable.f<T>(this, pVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> ambWith(o<? extends T> oVar) {
        a.a(oVar, "other is null");
        return ambArray(this, oVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<Boolean> any(p<? super T> pVar) {
        a.a(pVar, "predicate is null");
        return io.reactivex.d.a.a((s<T>) new io.reactivex.internal.operators.observable.h<T>(this, pVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final T blockingFirst() {
        io.reactivex.internal.observers.d dVar = new io.reactivex.internal.observers.d();
        subscribe((q<? super T>) dVar);
        T a = dVar.a();
        if (a != null) {
            return a;
        }
        throw new NoSuchElementException();
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final T blockingFirst(T t) {
        io.reactivex.internal.observers.d dVar = new io.reactivex.internal.observers.d();
        subscribe((q<? super T>) dVar);
        Object a = dVar.a();
        return a != null ? a : t;
    }

    @SchedulerSupport("none")
    public final void blockingForEach(f<? super T> fVar) {
        Iterator it = blockingIterable().iterator();
        while (it.hasNext()) {
            try {
                fVar.accept(it.next());
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                ((io.reactivex.disposables.b) it).dispose();
                throw ExceptionHelper.a(th);
            }
        }
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final Iterable<T> blockingIterable() {
        return blockingIterable(bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final Iterable<T> blockingIterable(int i) {
        a.a(i, "bufferSize");
        return new BlockingObservableIterable(this, i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final T blockingLast() {
        e eVar = new e();
        subscribe((q<? super T>) eVar);
        T a = eVar.a();
        if (a != null) {
            return a;
        }
        throw new NoSuchElementException();
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final T blockingLast(T t) {
        e eVar = new e();
        subscribe((q<? super T>) eVar);
        Object a = eVar.a();
        return a != null ? a : t;
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final Iterable<T> blockingLatest() {
        return new io.reactivex.internal.operators.observable.b(this);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final Iterable<T> blockingMostRecent(T t) {
        return new io.reactivex.internal.operators.observable.c(this, t);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final Iterable<T> blockingNext() {
        return new io.reactivex.internal.operators.observable.d(this);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final T blockingSingle() {
        T a = singleElement().a();
        if (a != null) {
            return a;
        }
        throw new NoSuchElementException();
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final T blockingSingle(T t) {
        return single(t).a();
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final Future<T> toFuture() {
        return (Future) subscribeWith(new io.reactivex.internal.observers.i());
    }

    @SchedulerSupport("none")
    public final void blockingSubscribe() {
        io.reactivex.internal.operators.observable.i.a(this);
    }

    @SchedulerSupport("none")
    public final void blockingSubscribe(f<? super T> fVar) {
        io.reactivex.internal.operators.observable.i.a(this, fVar, Functions.f, Functions.c);
    }

    @SchedulerSupport("none")
    public final void blockingSubscribe(f<? super T> fVar, f<? super Throwable> fVar2) {
        io.reactivex.internal.operators.observable.i.a(this, fVar, fVar2, Functions.c);
    }

    @SchedulerSupport("none")
    public final void blockingSubscribe(f<? super T> fVar, f<? super Throwable> fVar2, io.reactivex.b.a aVar) {
        io.reactivex.internal.operators.observable.i.a(this, fVar, fVar2, aVar);
    }

    @SchedulerSupport("none")
    public final void blockingSubscribe(q<? super T> qVar) {
        io.reactivex.internal.operators.observable.i.a(this, qVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<List<T>> buffer(int i) {
        return buffer(i, i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<List<T>> buffer(int i, int i2) {
        return buffer(i, i2, ArrayListSupplier.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U extends Collection<? super T>> k<U> buffer(int i, int i2, Callable<U> callable) {
        a.a(i, "count");
        a.a(i2, "skip");
        a.a(callable, "bufferSupplier is null");
        return io.reactivex.d.a.a((k<T>) new ObservableBuffer<T>(this, i, i2, callable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U extends Collection<? super T>> k<U> buffer(int i, Callable<U> callable) {
        return buffer(i, i, callable);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<List<T>> buffer(long j, long j2, TimeUnit timeUnit) {
        return buffer(j, j2, timeUnit, io.reactivex.e.a.a(), ArrayListSupplier.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<List<T>> buffer(long j, long j2, TimeUnit timeUnit, r rVar) {
        return buffer(j, j2, timeUnit, rVar, ArrayListSupplier.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final <U extends Collection<? super T>> k<U> buffer(long j, long j2, TimeUnit timeUnit, r rVar, Callable<U> callable) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        a.a(callable, "bufferSupplier is null");
        return io.reactivex.d.a.a((k<T>) new io.reactivex.internal.operators.observable.m<T>(this, j, j2, timeUnit, rVar, callable, Integer.MAX_VALUE, false));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<List<T>> buffer(long j, TimeUnit timeUnit) {
        return buffer(j, timeUnit, io.reactivex.e.a.a(), Integer.MAX_VALUE);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<List<T>> buffer(long j, TimeUnit timeUnit, int i) {
        return buffer(j, timeUnit, io.reactivex.e.a.a(), i);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<List<T>> buffer(long j, TimeUnit timeUnit, r rVar, int i) {
        return buffer(j, timeUnit, rVar, i, ArrayListSupplier.a(), false);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final <U extends Collection<? super T>> k<U> buffer(long j, TimeUnit timeUnit, r rVar, int i, Callable<U> callable, boolean z) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        a.a(callable, "bufferSupplier is null");
        a.a(i, "count");
        return io.reactivex.d.a.a((k<T>) new io.reactivex.internal.operators.observable.m<T>(this, j, j, timeUnit, rVar, callable, i, z));
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<List<T>> buffer(long j, TimeUnit timeUnit, r rVar) {
        return buffer(j, timeUnit, rVar, Integer.MAX_VALUE, ArrayListSupplier.a(), false);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <TOpening, TClosing> k<List<T>> buffer(o<? extends TOpening> oVar, g<? super TOpening, ? extends o<? extends TClosing>> gVar) {
        return buffer(oVar, gVar, ArrayListSupplier.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <TOpening, TClosing, U extends Collection<? super T>> k<U> buffer(o<? extends TOpening> oVar, g<? super TOpening, ? extends o<? extends TClosing>> gVar, Callable<U> callable) {
        a.a(oVar, "openingIndicator is null");
        a.a(gVar, "closingIndicator is null");
        a.a(callable, "bufferSupplier is null");
        return io.reactivex.d.a.a((k<T>) new io.reactivex.internal.operators.observable.j<T>(this, oVar, gVar, callable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <B> k<List<T>> buffer(o<B> oVar) {
        return buffer(oVar, ArrayListSupplier.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <B> k<List<T>> buffer(o<B> oVar, int i) {
        a.a(i, "initialCapacity");
        return buffer(oVar, Functions.a(i));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <B, U extends Collection<? super T>> k<U> buffer(o<B> oVar, Callable<U> callable) {
        a.a(oVar, "boundary is null");
        a.a(callable, "bufferSupplier is null");
        return io.reactivex.d.a.a((k<T>) new io.reactivex.internal.operators.observable.l<T>(this, oVar, callable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <B> k<List<T>> buffer(Callable<? extends o<B>> callable) {
        return buffer(callable, ArrayListSupplier.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <B, U extends Collection<? super T>> k<U> buffer(Callable<? extends o<B>> callable, Callable<U> callable2) {
        a.a(callable, "boundarySupplier is null");
        a.a(callable2, "bufferSupplier is null");
        return io.reactivex.d.a.a((k<T>) new io.reactivex.internal.operators.observable.k<T>(this, callable, callable2));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> cache() {
        return ObservableCache.a(this);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> cacheWithInitialCapacity(int i) {
        return ObservableCache.a(this, i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<U> cast(Class<U> cls) {
        a.a(cls, "clazz is null");
        return map(Functions.a(cls));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> s<U> collect(Callable<? extends U> callable, b<? super U, ? super T> bVar) {
        a.a(callable, "initialValueSupplier is null");
        a.a(bVar, "collector is null");
        return io.reactivex.d.a.a((s<T>) new o<T>(this, callable, bVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> s<U> collectInto(U u, b<? super U, ? super T> bVar) {
        a.a(u, "initialValue is null");
        return collect(Functions.a(u), bVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> compose(p<? super T, ? extends R> pVar) {
        return wrap(((p) a.a(pVar, "composer is null")).a(this));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> concatMap(g<? super T, ? extends o<? extends R>> gVar) {
        return concatMap(gVar, 2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> concatMap(g<? super T, ? extends o<? extends R>> gVar, int i) {
        a.a(gVar, "mapper is null");
        a.a(i, "prefetch");
        if (!(this instanceof io.reactivex.internal.a.e)) {
            return io.reactivex.d.a.a((k<T>) new ObservableConcatMap<T>(this, gVar, i, ErrorMode.IMMEDIATE));
        }
        Object call = ((io.reactivex.internal.a.e) this).call();
        if (call == null) {
            return empty();
        }
        return ObservableScalarXMap.a(call, gVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> concatMapDelayError(g<? super T, ? extends o<? extends R>> gVar) {
        return concatMapDelayError(gVar, bufferSize(), true);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> concatMapDelayError(g<? super T, ? extends o<? extends R>> gVar, int i, boolean z) {
        a.a(gVar, "mapper is null");
        a.a(i, "prefetch");
        if (this instanceof io.reactivex.internal.a.e) {
            Object call = ((io.reactivex.internal.a.e) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, gVar);
        }
        return io.reactivex.d.a.a((k<T>) new ObservableConcatMap<T>(this, gVar, i, z ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> concatMapEager(g<? super T, ? extends o<? extends R>> gVar) {
        return concatMapEager(gVar, Integer.MAX_VALUE, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> concatMapEager(g<? super T, ? extends o<? extends R>> gVar, int i, int i2) {
        a.a(gVar, "mapper is null");
        a.a(i, "maxConcurrency");
        a.a(i2, "prefetch");
        return io.reactivex.d.a.a((k<T>) new ObservableConcatMapEager<T>(this, gVar, ErrorMode.IMMEDIATE, i, i2));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> concatMapEagerDelayError(g<? super T, ? extends o<? extends R>> gVar, boolean z) {
        return concatMapEagerDelayError(gVar, Integer.MAX_VALUE, bufferSize(), z);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> concatMapEagerDelayError(g<? super T, ? extends o<? extends R>> gVar, int i, int i2, boolean z) {
        a.a(gVar, "mapper is null");
        a.a(i, "maxConcurrency");
        a.a(i2, "prefetch");
        return io.reactivex.d.a.a((k<T>) new ObservableConcatMapEager<T>(this, gVar, z ? ErrorMode.END : ErrorMode.BOUNDARY, i, i2));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<U> concatMapIterable(g<? super T, ? extends Iterable<? extends U>> gVar) {
        a.a(gVar, "mapper is null");
        return io.reactivex.d.a.a((k<T>) new ai<T>(this, gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<U> concatMapIterable(g<? super T, ? extends Iterable<? extends U>> gVar, int i) {
        a.a(gVar, "mapper is null");
        a.a(i, "prefetch");
        return concatMap(at.b(gVar), i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> concatWith(o<? extends T> oVar) {
        a.a(oVar, "other is null");
        return concat((o<? extends T>) this, oVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<Boolean> contains(Object obj) {
        a.a(obj, "element is null");
        return any(Functions.c(obj));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<Long> count() {
        return io.reactivex.d.a.a((s<T>) new q<T>(this));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<T> debounce(g<? super T, ? extends o<U>> gVar) {
        a.a(gVar, "debounceSelector is null");
        return io.reactivex.d.a.a((k<T>) new r<T>(this, gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> debounce(long j, TimeUnit timeUnit) {
        return debounce(j, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> debounce(long j, TimeUnit timeUnit, r rVar) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableDebounceTimed<T>(this, j, timeUnit, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> defaultIfEmpty(T t) {
        a.a(t, "defaultItem is null");
        return switchIfEmpty(just(t));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<T> delay(g<? super T, ? extends o<U>> gVar) {
        a.a(gVar, "itemDelay is null");
        return flatMap(at.a(gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> delay(long j, TimeUnit timeUnit) {
        return delay(j, timeUnit, io.reactivex.e.a.a(), false);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> delay(long j, TimeUnit timeUnit, boolean z) {
        return delay(j, timeUnit, io.reactivex.e.a.a(), z);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> delay(long j, TimeUnit timeUnit, r rVar) {
        return delay(j, timeUnit, rVar, false);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> delay(long j, TimeUnit timeUnit, r rVar, boolean z) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new t<T>(this, j, timeUnit, rVar, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, V> k<T> delay(o<U> oVar, g<? super T, ? extends o<V>> gVar) {
        return delaySubscription(oVar).delay(gVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<T> delaySubscription(o<U> oVar) {
        a.a(oVar, "other is null");
        return io.reactivex.d.a.a((k<T>) new u<T>(this, oVar));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> delaySubscription(long j, TimeUnit timeUnit) {
        return delaySubscription(j, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> delaySubscription(long j, TimeUnit timeUnit, r rVar) {
        return delaySubscription(timer(j, timeUnit, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <T2> k<T2> dematerialize() {
        return io.reactivex.d.a.a((k<T>) new v<T>(this));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> distinct() {
        return distinct(Functions.a(), Functions.g());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K> k<T> distinct(g<? super T, K> gVar) {
        return distinct(gVar, Functions.g());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K> k<T> distinct(g<? super T, K> gVar, Callable<? extends Collection<? super K>> callable) {
        a.a(gVar, "keySelector is null");
        a.a(callable, "collectionSupplier is null");
        return io.reactivex.d.a.a((k<T>) new x<T>(this, gVar, callable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> distinctUntilChanged() {
        return distinctUntilChanged(Functions.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K> k<T> distinctUntilChanged(g<? super T, K> gVar) {
        a.a(gVar, "keySelector is null");
        return io.reactivex.d.a.a((k<T>) new y<T>(this, gVar, a.a()));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> distinctUntilChanged(d<? super T, ? super T> dVar) {
        a.a(dVar, "comparer is null");
        return io.reactivex.d.a.a((k<T>) new y<T>(this, Functions.a(), dVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doAfterNext(f<? super T> fVar) {
        a.a(fVar, "onAfterNext is null");
        return io.reactivex.d.a.a((k<T>) new z<T>(this, fVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doAfterTerminate(io.reactivex.b.a aVar) {
        a.a(aVar, "onFinally is null");
        return doOnEach(Functions.b(), Functions.b(), Functions.c, aVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doFinally(io.reactivex.b.a aVar) {
        a.a(aVar, "onFinally is null");
        return io.reactivex.d.a.a((k<T>) new ObservableDoFinally<T>(this, aVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doOnDispose(io.reactivex.b.a aVar) {
        return doOnLifecycle(Functions.b(), aVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doOnComplete(io.reactivex.b.a aVar) {
        return doOnEach(Functions.b(), Functions.b(), aVar, Functions.c);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    private k<T> doOnEach(f<? super T> fVar, f<? super Throwable> fVar2, io.reactivex.b.a aVar, io.reactivex.b.a aVar2) {
        a.a(fVar, "onNext is null");
        a.a(fVar2, "onError is null");
        a.a(aVar, "onComplete is null");
        a.a(aVar2, "onAfterTerminate is null");
        return io.reactivex.d.a.a((k<T>) new aa<T>(this, fVar, fVar2, aVar, aVar2));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doOnEach(f<? super j<T>> fVar) {
        a.a(fVar, "consumer is null");
        return doOnEach(Functions.a(fVar), Functions.b(fVar), Functions.c(fVar), Functions.c);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doOnEach(q<? super T> qVar) {
        a.a(qVar, "observer is null");
        return doOnEach(at.a(qVar), at.b(qVar), at.c(qVar), Functions.c);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doOnError(f<? super Throwable> fVar) {
        return doOnEach(Functions.b(), fVar, Functions.c, Functions.c);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doOnLifecycle(f<? super io.reactivex.disposables.b> fVar, io.reactivex.b.a aVar) {
        a.a(fVar, "onSubscribe is null");
        a.a(aVar, "onDispose is null");
        return io.reactivex.d.a.a((k<T>) new ab<T>(this, fVar, aVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doOnNext(f<? super T> fVar) {
        return doOnEach(fVar, Functions.b(), Functions.c, Functions.c);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doOnSubscribe(f<? super io.reactivex.disposables.b> fVar) {
        return doOnLifecycle(fVar, Functions.c);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> doOnTerminate(io.reactivex.b.a aVar) {
        a.a(aVar, "onTerminate is null");
        return doOnEach(Functions.b(), Functions.a(aVar), aVar, Functions.c);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final g<T> elementAt(long j) {
        if (j >= 0) {
            return io.reactivex.d.a.a((g<T>) new ad<T>(this, j));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<T> elementAt(long j, T t) {
        if (j < 0) {
            throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
        }
        a.a(t, "defaultItem is null");
        return io.reactivex.d.a.a((s<T>) new ae<T>(this, j, t));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<T> elementAtOrError(long j) {
        if (j >= 0) {
            return io.reactivex.d.a.a((s<T>) new ae<T>(this, j, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> filter(p<? super T> pVar) {
        a.a(pVar, "predicate is null");
        return io.reactivex.d.a.a((k<T>) new ah<T>(this, pVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final g<T> firstElement() {
        return elementAt(0);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<T> first(T t) {
        return elementAt(0, t);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<T> firstOrError() {
        return elementAtOrError(0);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMap(g<? super T, ? extends o<? extends R>> gVar) {
        return flatMap(gVar, false);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMap(g<? super T, ? extends o<? extends R>> gVar, boolean z) {
        return flatMap(gVar, z, Integer.MAX_VALUE);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMap(g<? super T, ? extends o<? extends R>> gVar, boolean z, int i) {
        return flatMap(gVar, z, i, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMap(g<? super T, ? extends o<? extends R>> gVar, boolean z, int i, int i2) {
        a.a(gVar, "mapper is null");
        a.a(i, "maxConcurrency");
        a.a(i2, "bufferSize");
        if (!(this instanceof io.reactivex.internal.a.e)) {
            return io.reactivex.d.a.a((k<T>) new ObservableFlatMap<T>(this, gVar, z, i, i2));
        }
        Object call = ((io.reactivex.internal.a.e) this).call();
        if (call == null) {
            return empty();
        }
        return ObservableScalarXMap.a(call, gVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMap(g<? super T, ? extends o<? extends R>> gVar, g<? super Throwable, ? extends o<? extends R>> gVar2, Callable<? extends o<? extends R>> callable) {
        a.a(gVar, "onNextMapper is null");
        a.a(gVar2, "onErrorMapper is null");
        a.a(callable, "onCompleteSupplier is null");
        return merge((o<? extends o<? extends T>>) new az<Object>(this, gVar, gVar2, callable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMap(g<? super T, ? extends o<? extends R>> gVar, g<Throwable, ? extends o<? extends R>> gVar2, Callable<? extends o<? extends R>> callable, int i) {
        a.a(gVar, "onNextMapper is null");
        a.a(gVar2, "onErrorMapper is null");
        a.a(callable, "onCompleteSupplier is null");
        return merge((o<? extends o<? extends T>>) new az<Object>(this, gVar, gVar2, callable), i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMap(g<? super T, ? extends o<? extends R>> gVar, int i) {
        return flatMap(gVar, false, i, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, R> k<R> flatMap(g<? super T, ? extends o<? extends U>> gVar, c<? super T, ? super U, ? extends R> cVar) {
        return flatMap(gVar, cVar, false, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, R> k<R> flatMap(g<? super T, ? extends o<? extends U>> gVar, c<? super T, ? super U, ? extends R> cVar, boolean z) {
        return flatMap(gVar, cVar, z, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, R> k<R> flatMap(g<? super T, ? extends o<? extends U>> gVar, c<? super T, ? super U, ? extends R> cVar, boolean z, int i) {
        return flatMap(gVar, cVar, z, i, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, R> k<R> flatMap(g<? super T, ? extends o<? extends U>> gVar, c<? super T, ? super U, ? extends R> cVar, boolean z, int i, int i2) {
        a.a(gVar, "mapper is null");
        a.a(cVar, "combiner is null");
        return flatMap(at.a(gVar, cVar), z, i, i2);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, R> k<R> flatMap(g<? super T, ? extends o<? extends U>> gVar, c<? super T, ? super U, ? extends R> cVar, int i) {
        return flatMap(gVar, cVar, false, i, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final a flatMapCompletable(g<? super T, ? extends c> gVar) {
        return flatMapCompletable(gVar, false);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final a flatMapCompletable(g<? super T, ? extends c> gVar, boolean z) {
        a.a(gVar, "mapper is null");
        return io.reactivex.d.a.a((a) new ObservableFlatMapCompletableCompletable(this, gVar, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<U> flatMapIterable(g<? super T, ? extends Iterable<? extends U>> gVar) {
        a.a(gVar, "mapper is null");
        return io.reactivex.d.a.a((k<T>) new ai<T>(this, gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, V> k<V> flatMapIterable(g<? super T, ? extends Iterable<? extends U>> gVar, c<? super T, ? super U, ? extends V> cVar) {
        a.a(gVar, "mapper is null");
        a.a(cVar, "resultSelector is null");
        return flatMap(at.b(gVar), cVar, false, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMapMaybe(g<? super T, ? extends i<? extends R>> gVar) {
        return flatMapMaybe(gVar, false);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMapMaybe(g<? super T, ? extends i<? extends R>> gVar, boolean z) {
        a.a(gVar, "mapper is null");
        return io.reactivex.d.a.a((k<T>) new ObservableFlatMapMaybe<T>(this, gVar, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMapSingle(g<? super T, ? extends u<? extends R>> gVar) {
        return flatMapSingle(gVar, false);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> flatMapSingle(g<? super T, ? extends u<? extends R>> gVar, boolean z) {
        a.a(gVar, "mapper is null");
        return io.reactivex.d.a.a((k<T>) new ObservableFlatMapSingle<T>(this, gVar, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.disposables.b forEach(f<? super T> fVar) {
        return subscribe(fVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.disposables.b forEachWhile(p<? super T> pVar) {
        return forEachWhile(pVar, Functions.f, Functions.c);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.disposables.b forEachWhile(p<? super T> pVar, f<? super Throwable> fVar) {
        return forEachWhile(pVar, fVar, Functions.c);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.disposables.b forEachWhile(p<? super T> pVar, f<? super Throwable> fVar, io.reactivex.b.a aVar) {
        a.a(pVar, "onNext is null");
        a.a(fVar, "onError is null");
        a.a(aVar, "onComplete is null");
        ForEachWhileObserver forEachWhileObserver = new ForEachWhileObserver(pVar, fVar, aVar);
        subscribe((q<? super T>) forEachWhileObserver);
        return forEachWhileObserver;
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K> k<io.reactivex.c.b<K, T>> groupBy(g<? super T, ? extends K> gVar) {
        return groupBy(gVar, Functions.a(), false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K> k<io.reactivex.c.b<K, T>> groupBy(g<? super T, ? extends K> gVar, boolean z) {
        return groupBy(gVar, Functions.a(), z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K, V> k<io.reactivex.c.b<K, V>> groupBy(g<? super T, ? extends K> gVar, g<? super T, ? extends V> gVar2) {
        return groupBy(gVar, gVar2, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K, V> k<io.reactivex.c.b<K, V>> groupBy(g<? super T, ? extends K> gVar, g<? super T, ? extends V> gVar2, boolean z) {
        return groupBy(gVar, gVar2, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K, V> k<io.reactivex.c.b<K, V>> groupBy(g<? super T, ? extends K> gVar, g<? super T, ? extends V> gVar2, boolean z, int i) {
        a.a(gVar, "keySelector is null");
        a.a(gVar2, "valueSelector is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new ObservableGroupBy<T>(this, gVar, gVar2, i, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <TRight, TLeftEnd, TRightEnd, R> k<R> groupJoin(o<? extends TRight> oVar, g<? super T, ? extends o<TLeftEnd>> gVar, g<? super TRight, ? extends o<TRightEnd>> gVar2, c<? super T, ? super k<TRight>, ? extends R> cVar) {
        a.a(oVar, "other is null");
        a.a(gVar, "leftEnd is null");
        a.a(gVar2, "rightEnd is null");
        a.a(cVar, "resultSelector is null");
        return io.reactivex.d.a.a((k<T>) new ObservableGroupJoin<T>(this, oVar, gVar, gVar2, cVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> hide() {
        return io.reactivex.d.a.a((k<T>) new aq<T>(this));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final a ignoreElements() {
        return io.reactivex.d.a.a((a) new as(this));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<Boolean> isEmpty() {
        return all(Functions.d());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <TRight, TLeftEnd, TRightEnd, R> k<R> join(o<? extends TRight> oVar, g<? super T, ? extends o<TLeftEnd>> gVar, g<? super TRight, ? extends o<TRightEnd>> gVar2, c<? super T, ? super TRight, ? extends R> cVar) {
        a.a(oVar, "other is null");
        a.a(gVar, "leftEnd is null");
        a.a(gVar2, "rightEnd is null");
        a.a(cVar, "resultSelector is null");
        return io.reactivex.d.a.a((k<T>) new ObservableJoin<T>(this, oVar, gVar, gVar2, cVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final g<T> lastElement() {
        return io.reactivex.d.a.a((g<T>) new av<T>(this));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<T> last(T t) {
        a.a(t, "defaultItem is null");
        return io.reactivex.d.a.a((s<T>) new aw<T>(this, t));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<T> lastOrError() {
        return io.reactivex.d.a.a((s<T>) new aw<T>(this, null));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> lift(n<? extends R, ? super T> nVar) {
        a.a(nVar, "onLift is null");
        return io.reactivex.d.a.a((k<T>) new ax<T>(this, nVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> map(g<? super T, ? extends R> gVar) {
        a.a(gVar, "mapper is null");
        return io.reactivex.d.a.a((k<T>) new ay<T>(this, gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<j<T>> materialize() {
        return io.reactivex.d.a.a((k<T>) new ba<T>(this));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> mergeWith(o<? extends T> oVar) {
        a.a(oVar, "other is null");
        return merge((o<? extends T>) this, oVar);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> observeOn(r rVar) {
        return observeOn(rVar, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> observeOn(r rVar, boolean z) {
        return observeOn(rVar, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> observeOn(r rVar, boolean z, int i) {
        a.a(rVar, "scheduler is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new ObservableObserveOn<T>(this, rVar, z, i));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<U> ofType(Class<U> cls) {
        a.a(cls, "clazz is null");
        return filter(Functions.b(cls)).cast(cls);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> onErrorResumeNext(g<? super Throwable, ? extends o<? extends T>> gVar) {
        a.a(gVar, "resumeFunction is null");
        return io.reactivex.d.a.a((k<T>) new bc<T>(this, gVar, false));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> onErrorResumeNext(o<? extends T> oVar) {
        a.a(oVar, "next is null");
        return onErrorResumeNext(Functions.b(oVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> onErrorReturn(g<? super Throwable, ? extends T> gVar) {
        a.a(gVar, "valueSupplier is null");
        return io.reactivex.d.a.a((k<T>) new bd<T>(this, gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> onErrorReturnItem(T t) {
        a.a(t, "item is null");
        return onErrorReturn(Functions.b(t));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> onExceptionResumeNext(o<? extends T> oVar) {
        a.a(oVar, "next is null");
        return io.reactivex.d.a.a((k<T>) new bc<T>(this, Functions.b(oVar), true));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> onTerminateDetach() {
        return io.reactivex.d.a.a((k<T>) new w<T>(this));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.c.a<T> publish() {
        return ObservablePublish.a((o<T>) this);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> publish(g<? super k<T>, ? extends o<R>> gVar) {
        a.a(gVar, "selector is null");
        return io.reactivex.d.a.a((k<T>) new ObservablePublishSelector<T>(this, gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final g<T> reduce(c<T, T, T> cVar) {
        a.a(cVar, "reducer is null");
        return io.reactivex.d.a.a((g<T>) new be<T>(this, cVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> s<R> reduce(R r, c<R, ? super T, R> cVar) {
        a.a(r, "seed is null");
        a.a(cVar, "reducer is null");
        return io.reactivex.d.a.a((s<T>) new bf<T>(this, r, cVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> s<R> reduceWith(Callable<R> callable, c<R, ? super T, R> cVar) {
        a.a(callable, "seedSupplier is null");
        a.a(cVar, "reducer is null");
        return io.reactivex.d.a.a((s<T>) new bg<T>(this, callable, cVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> repeat() {
        return repeat(FileTracerConfig.FOREVER);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> repeat(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("times >= 0 required but it was " + j);
        } else if (j == 0) {
            return empty();
        } else {
            return io.reactivex.d.a.a((k<T>) new ObservableRepeat<T>(this, j));
        }
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> repeatUntil(io.reactivex.b.e eVar) {
        a.a(eVar, "stop is null");
        return io.reactivex.d.a.a((k<T>) new ObservableRepeatUntil<T>(this, eVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> repeatWhen(g<? super k<Object>, ? extends o<?>> gVar) {
        a.a(gVar, "handler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableRepeatWhen<T>(this, gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.c.a<T> replay() {
        return ObservableReplay.a((o<? extends T>) this);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> replay(g<? super k<T>, ? extends o<R>> gVar) {
        a.a(gVar, "selector is null");
        return ObservableReplay.a(at.a(this), gVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> replay(g<? super k<T>, ? extends o<R>> gVar, int i) {
        a.a(gVar, "selector is null");
        a.a(i, "bufferSize");
        return ObservableReplay.a(at.a(this, i), gVar);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final <R> k<R> replay(g<? super k<T>, ? extends o<R>> gVar, int i, long j, TimeUnit timeUnit) {
        return replay(gVar, i, j, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final <R> k<R> replay(g<? super k<T>, ? extends o<R>> gVar, int i, long j, TimeUnit timeUnit, r rVar) {
        a.a(gVar, "selector is null");
        a.a(i, "bufferSize");
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return ObservableReplay.a(at.a(this, i, j, timeUnit, rVar), gVar);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final <R> k<R> replay(g<? super k<T>, ? extends o<R>> gVar, int i, r rVar) {
        a.a(gVar, "selector is null");
        a.a(rVar, "scheduler is null");
        a.a(i, "bufferSize");
        return ObservableReplay.a(at.a(this, i), at.a(gVar, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final <R> k<R> replay(g<? super k<T>, ? extends o<R>> gVar, long j, TimeUnit timeUnit) {
        return replay(gVar, j, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final <R> k<R> replay(g<? super k<T>, ? extends o<R>> gVar, long j, TimeUnit timeUnit, r rVar) {
        a.a(gVar, "selector is null");
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return ObservableReplay.a(at.a(this, j, timeUnit, rVar), gVar);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final <R> k<R> replay(g<? super k<T>, ? extends o<R>> gVar, r rVar) {
        a.a(gVar, "selector is null");
        a.a(rVar, "scheduler is null");
        return ObservableReplay.a(at.a(this), at.a(gVar, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.c.a<T> replay(int i) {
        a.a(i, "bufferSize");
        return ObservableReplay.a((o<T>) this, i);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final io.reactivex.c.a<T> replay(int i, long j, TimeUnit timeUnit) {
        return replay(i, j, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final io.reactivex.c.a<T> replay(int i, long j, TimeUnit timeUnit, r rVar) {
        a.a(i, "bufferSize");
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return ObservableReplay.a(this, j, timeUnit, rVar, i);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final io.reactivex.c.a<T> replay(int i, r rVar) {
        a.a(i, "bufferSize");
        return ObservableReplay.a(replay(i), rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final io.reactivex.c.a<T> replay(long j, TimeUnit timeUnit) {
        return replay(j, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final io.reactivex.c.a<T> replay(long j, TimeUnit timeUnit, r rVar) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return ObservableReplay.a(this, j, timeUnit, rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final io.reactivex.c.a<T> replay(r rVar) {
        a.a(rVar, "scheduler is null");
        return ObservableReplay.a(replay(), rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> retry() {
        return retry(FileTracerConfig.FOREVER, Functions.c());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> retry(d<? super Integer, ? super Throwable> dVar) {
        a.a(dVar, "predicate is null");
        return io.reactivex.d.a.a((k<T>) new ObservableRetryBiPredicate<T>(this, dVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> retry(long j) {
        return retry(j, Functions.c());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> retry(long j, p<? super Throwable> pVar) {
        if (j < 0) {
            throw new IllegalArgumentException("times >= 0 required but it was " + j);
        }
        a.a(pVar, "predicate is null");
        return io.reactivex.d.a.a((k<T>) new ObservableRetryPredicate<T>(this, j, pVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> retry(p<? super Throwable> pVar) {
        return retry(FileTracerConfig.FOREVER, pVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> retryUntil(io.reactivex.b.e eVar) {
        a.a(eVar, "stop is null");
        return retry(FileTracerConfig.FOREVER, Functions.a(eVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> retryWhen(g<? super k<Throwable>, ? extends o<?>> gVar) {
        a.a(gVar, "handler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableRetryWhen<T>(this, gVar));
    }

    @SchedulerSupport("none")
    public final void safeSubscribe(q<? super T> qVar) {
        a.a(qVar, "s is null");
        if (qVar instanceof io.reactivex.observers.d) {
            subscribe(qVar);
        } else {
            subscribe((q<? super T>) new io.reactivex.observers.d<Object>(qVar));
        }
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> sample(long j, TimeUnit timeUnit) {
        return sample(j, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> sample(long j, TimeUnit timeUnit, boolean z) {
        return sample(j, timeUnit, io.reactivex.e.a.a(), z);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> sample(long j, TimeUnit timeUnit, r rVar) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableSampleTimed<T>(this, j, timeUnit, rVar, false));
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> sample(long j, TimeUnit timeUnit, r rVar, boolean z) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableSampleTimed<T>(this, j, timeUnit, rVar, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<T> sample(o<U> oVar) {
        a.a(oVar, "sampler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableSampleWithObservable<T>(this, oVar, false));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<T> sample(o<U> oVar, boolean z) {
        a.a(oVar, "sampler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableSampleWithObservable<T>(this, oVar, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> scan(c<T, T, T> cVar) {
        a.a(cVar, "accumulator is null");
        return io.reactivex.d.a.a((k<T>) new bh<T>(this, cVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> scan(R r, c<R, ? super T, R> cVar) {
        a.a(r, "seed is null");
        return scanWith(Functions.a(r), cVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> scanWith(Callable<R> callable, c<R, ? super T, R> cVar) {
        a.a(callable, "seedSupplier is null");
        a.a(cVar, "accumulator is null");
        return io.reactivex.d.a.a((k<T>) new bi<T>(this, callable, cVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> serialize() {
        return io.reactivex.d.a.a((k<T>) new bj<T>(this));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> share() {
        return publish().a();
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final g<T> singleElement() {
        return io.reactivex.d.a.a((g<T>) new bk<T>(this));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<T> single(T t) {
        a.a(t, "defaultItem is null");
        return io.reactivex.d.a.a((s<T>) new bl<T>(this, t));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<T> singleOrError() {
        return io.reactivex.d.a.a((s<T>) new bl<T>(this, null));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> skip(long j) {
        if (j <= 0) {
            return io.reactivex.d.a.a(this);
        }
        return io.reactivex.d.a.a((k<T>) new bm<T>(this, j));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> skip(long j, TimeUnit timeUnit) {
        return skipUntil(timer(j, timeUnit));
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> skip(long j, TimeUnit timeUnit, r rVar) {
        return skipUntil(timer(j, timeUnit, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> skipLast(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count >= 0 required but it was " + i);
        } else if (i == 0) {
            return io.reactivex.d.a.a(this);
        } else {
            return io.reactivex.d.a.a((k<T>) new ObservableSkipLast<T>(this, i));
        }
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:trampoline")
    public final k<T> skipLast(long j, TimeUnit timeUnit) {
        return skipLast(j, timeUnit, io.reactivex.e.a.c(), false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:trampoline")
    public final k<T> skipLast(long j, TimeUnit timeUnit, boolean z) {
        return skipLast(j, timeUnit, io.reactivex.e.a.c(), z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> skipLast(long j, TimeUnit timeUnit, r rVar) {
        return skipLast(j, timeUnit, rVar, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> skipLast(long j, TimeUnit timeUnit, r rVar, boolean z) {
        return skipLast(j, timeUnit, rVar, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> skipLast(long j, TimeUnit timeUnit, r rVar, boolean z, int i) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new ObservableSkipLastTimed<T>(this, j, timeUnit, rVar, i << 1, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<T> skipUntil(o<U> oVar) {
        a.a(oVar, "other is null");
        return io.reactivex.d.a.a((k<T>) new bn<T>(this, oVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> skipWhile(p<? super T> pVar) {
        a.a(pVar, "predicate is null");
        return io.reactivex.d.a.a((k<T>) new bo<T>(this, pVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> sorted() {
        return toList().b().map(Functions.a(Functions.h())).flatMapIterable(Functions.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> sorted(Comparator<? super T> comparator) {
        a.a(comparator, "sortFunction is null");
        return toList().b().map(Functions.a(comparator)).flatMapIterable(Functions.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> startWith(Iterable<? extends T> iterable) {
        return concatArray(fromIterable(iterable), this);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> startWith(o<? extends T> oVar) {
        a.a(oVar, "other is null");
        return concatArray(oVar, this);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> startWith(T t) {
        a.a(t, "item is null");
        return concatArray(just(t), this);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> startWithArray(T... tArr) {
        k fromArray = fromArray(tArr);
        if (fromArray == empty()) {
            return io.reactivex.d.a.a(this);
        }
        return concatArray(fromArray, this);
    }

    @SchedulerSupport("none")
    public final io.reactivex.disposables.b subscribe() {
        return subscribe(Functions.b(), Functions.f, Functions.c, Functions.b());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.disposables.b subscribe(f<? super T> fVar) {
        return subscribe(fVar, Functions.f, Functions.c, Functions.b());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.disposables.b subscribe(f<? super T> fVar, f<? super Throwable> fVar2) {
        return subscribe(fVar, fVar2, Functions.c, Functions.b());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.disposables.b subscribe(f<? super T> fVar, f<? super Throwable> fVar2, io.reactivex.b.a aVar) {
        return subscribe(fVar, fVar2, aVar, Functions.b());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final io.reactivex.disposables.b subscribe(f<? super T> fVar, f<? super Throwable> fVar2, io.reactivex.b.a aVar, f<? super io.reactivex.disposables.b> fVar3) {
        a.a(fVar, "onNext is null");
        a.a(fVar2, "onError is null");
        a.a(aVar, "onComplete is null");
        a.a(fVar3, "onSubscribe is null");
        LambdaObserver lambdaObserver = new LambdaObserver(fVar, fVar2, aVar, fVar3);
        subscribe((q<? super T>) lambdaObserver);
        return lambdaObserver;
    }

    @SchedulerSupport("none")
    public final void subscribe(q<? super T> qVar) {
        a.a(qVar, "observer is null");
        try {
            q a = io.reactivex.d.a.a(this, qVar);
            a.a(a, "Plugin returned null Observer");
            subscribeActual(a);
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

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <E extends q<? super T>> E subscribeWith(E e) {
        subscribe((q<? super T>) e);
        return e;
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> subscribeOn(r rVar) {
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableSubscribeOn<T>(this, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> switchIfEmpty(o<? extends T> oVar) {
        a.a(oVar, "other is null");
        return io.reactivex.d.a.a((k<T>) new bp<T>(this, oVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> switchMap(g<? super T, ? extends o<? extends R>> gVar) {
        return switchMap(gVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> switchMap(g<? super T, ? extends o<? extends R>> gVar, int i) {
        a.a(gVar, "mapper is null");
        a.a(i, "bufferSize");
        if (!(this instanceof io.reactivex.internal.a.e)) {
            return io.reactivex.d.a.a((k<T>) new ObservableSwitchMap<T>(this, gVar, i, false));
        }
        Object call = ((io.reactivex.internal.a.e) this).call();
        if (call == null) {
            return empty();
        }
        return ObservableScalarXMap.a(call, gVar);
    }

    @CheckReturnValue
    @Experimental
    @NonNull
    @SchedulerSupport("none")
    public final <R> k<R> switchMapSingle(@NonNull g<? super T, ? extends u<? extends R>> gVar) {
        return at.a(this, gVar);
    }

    @CheckReturnValue
    @Experimental
    @NonNull
    @SchedulerSupport("none")
    public final <R> k<R> switchMapSingleDelayError(@NonNull g<? super T, ? extends u<? extends R>> gVar) {
        return at.b(this, gVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> switchMapDelayError(g<? super T, ? extends o<? extends R>> gVar) {
        return switchMapDelayError(gVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> switchMapDelayError(g<? super T, ? extends o<? extends R>> gVar, int i) {
        a.a(gVar, "mapper is null");
        a.a(i, "bufferSize");
        if (!(this instanceof io.reactivex.internal.a.e)) {
            return io.reactivex.d.a.a((k<T>) new ObservableSwitchMap<T>(this, gVar, i, true));
        }
        Object call = ((io.reactivex.internal.a.e) this).call();
        if (call == null) {
            return empty();
        }
        return ObservableScalarXMap.a(call, gVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> take(long j) {
        if (j >= 0) {
            return io.reactivex.d.a.a((k<T>) new bq<T>(this, j));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> take(long j, TimeUnit timeUnit) {
        return takeUntil((o<U>) timer(j, timeUnit));
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> take(long j, TimeUnit timeUnit, r rVar) {
        return takeUntil((o<U>) timer(j, timeUnit, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> takeLast(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count >= 0 required but it was " + i);
        } else if (i == 0) {
            return io.reactivex.d.a.a((k<T>) new ar<T>(this));
        } else {
            if (i == 1) {
                return io.reactivex.d.a.a((k<T>) new br<T>(this));
            }
            return io.reactivex.d.a.a((k<T>) new ObservableTakeLast<T>(this, i));
        }
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:trampoline")
    public final k<T> takeLast(long j, long j2, TimeUnit timeUnit) {
        return takeLast(j, j2, timeUnit, io.reactivex.e.a.c(), false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> takeLast(long j, long j2, TimeUnit timeUnit, r rVar) {
        return takeLast(j, j2, timeUnit, rVar, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> takeLast(long j, long j2, TimeUnit timeUnit, r rVar, boolean z, int i) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        a.a(i, "bufferSize");
        if (j >= 0) {
            return io.reactivex.d.a.a((k<T>) new ObservableTakeLastTimed<T>(this, j, j2, timeUnit, rVar, i, z));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + j);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:trampoline")
    public final k<T> takeLast(long j, TimeUnit timeUnit) {
        return takeLast(j, timeUnit, io.reactivex.e.a.c(), false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:trampoline")
    public final k<T> takeLast(long j, TimeUnit timeUnit, boolean z) {
        return takeLast(j, timeUnit, io.reactivex.e.a.c(), z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> takeLast(long j, TimeUnit timeUnit, r rVar) {
        return takeLast(j, timeUnit, rVar, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> takeLast(long j, TimeUnit timeUnit, r rVar, boolean z) {
        return takeLast(j, timeUnit, rVar, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> takeLast(long j, TimeUnit timeUnit, r rVar, boolean z, int i) {
        return takeLast(FileTracerConfig.FOREVER, j, timeUnit, rVar, z, i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U> k<T> takeUntil(o<U> oVar) {
        a.a(oVar, "other is null");
        return io.reactivex.d.a.a((k<T>) new ObservableTakeUntil<T>(this, oVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> takeUntil(p<? super T> pVar) {
        a.a(pVar, "predicate is null");
        return io.reactivex.d.a.a((k<T>) new bs<T>(this, pVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<T> takeWhile(p<? super T> pVar) {
        a.a(pVar, "predicate is null");
        return io.reactivex.d.a.a((k<T>) new bt<T>(this, pVar));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> throttleFirst(long j, TimeUnit timeUnit) {
        return throttleFirst(j, timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> throttleFirst(long j, TimeUnit timeUnit, r rVar) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableThrottleFirstTimed<T>(this, j, timeUnit, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> throttleLast(long j, TimeUnit timeUnit) {
        return sample(j, timeUnit);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> throttleLast(long j, TimeUnit timeUnit, r rVar) {
        return sample(j, timeUnit, rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> throttleWithTimeout(long j, TimeUnit timeUnit) {
        return debounce(j, timeUnit);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> throttleWithTimeout(long j, TimeUnit timeUnit, r rVar) {
        return debounce(j, timeUnit, rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<io.reactivex.e.b<T>> timeInterval() {
        return timeInterval(TimeUnit.MILLISECONDS, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<io.reactivex.e.b<T>> timeInterval(r rVar) {
        return timeInterval(TimeUnit.MILLISECONDS, rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<io.reactivex.e.b<T>> timeInterval(TimeUnit timeUnit) {
        return timeInterval(timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<io.reactivex.e.b<T>> timeInterval(TimeUnit timeUnit, r rVar) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new bu<T>(this, timeUnit, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <V> k<T> timeout(g<? super T, ? extends o<V>> gVar) {
        return timeout0(null, gVar, null);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <V> k<T> timeout(g<? super T, ? extends o<V>> gVar, o<? extends T> oVar) {
        a.a(oVar, "other is null");
        return timeout0(null, gVar, oVar);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> timeout(long j, TimeUnit timeUnit) {
        return timeout0(j, timeUnit, null, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<T> timeout(long j, TimeUnit timeUnit, o<? extends T> oVar) {
        a.a(oVar, "other is null");
        return timeout0(j, timeUnit, oVar, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> timeout(long j, TimeUnit timeUnit, r rVar, o<? extends T> oVar) {
        a.a(oVar, "other is null");
        return timeout0(j, timeUnit, oVar, rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> timeout(long j, TimeUnit timeUnit, r rVar) {
        return timeout0(j, timeUnit, null, rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, V> k<T> timeout(o<U> oVar, g<? super T, ? extends o<V>> gVar) {
        a.a(oVar, "firstTimeoutIndicator is null");
        return timeout0(oVar, gVar, null);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, V> k<T> timeout(o<U> oVar, g<? super T, ? extends o<V>> gVar, o<? extends T> oVar2) {
        a.a(oVar, "firstTimeoutIndicator is null");
        a.a(oVar2, "other is null");
        return timeout0(oVar, gVar, oVar2);
    }

    private k<T> timeout0(long j, TimeUnit timeUnit, o<? extends T> oVar, r rVar) {
        a.a(timeUnit, "timeUnit is null");
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableTimeoutTimed<T>(this, j, timeUnit, rVar, oVar));
    }

    private <U, V> k<T> timeout0(o<U> oVar, g<? super T, ? extends o<V>> gVar, o<? extends T> oVar2) {
        a.a(gVar, "itemTimeoutIndicator is null");
        return io.reactivex.d.a.a((k<T>) new ObservableTimeout<T>(this, oVar, gVar, oVar2));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<io.reactivex.e.b<T>> timestamp() {
        return timestamp(TimeUnit.MILLISECONDS, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<io.reactivex.e.b<T>> timestamp(r rVar) {
        return timestamp(TimeUnit.MILLISECONDS, rVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<io.reactivex.e.b<T>> timestamp(TimeUnit timeUnit) {
        return timestamp(timeUnit, io.reactivex.e.a.a());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<io.reactivex.e.b<T>> timestamp(TimeUnit timeUnit, r rVar) {
        a.a(timeUnit, "unit is null");
        a.a(rVar, "scheduler is null");
        return map(Functions.a(timeUnit, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> R to(g<? super k<T>, R> gVar) {
        try {
            return ((g) a.a(gVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.a(th);
        }
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<List<T>> toList() {
        return toList(16);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<List<T>> toList(int i) {
        a.a(i, "capacityHint");
        return io.reactivex.d.a.a((s<T>) new bw<T>((o<T>) this, i));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U extends Collection<? super T>> s<U> toList(Callable<U> callable) {
        a.a(callable, "collectionSupplier is null");
        return io.reactivex.d.a.a((s<T>) new bw<T>((o<T>) this, callable));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K> s<Map<K, T>> toMap(g<? super T, ? extends K> gVar) {
        a.a(gVar, "keySelector is null");
        return collect(HashMapSupplier.a(), Functions.a(gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K, V> s<Map<K, V>> toMap(g<? super T, ? extends K> gVar, g<? super T, ? extends V> gVar2) {
        a.a(gVar, "keySelector is null");
        a.a(gVar2, "valueSelector is null");
        return collect(HashMapSupplier.a(), Functions.a(gVar, gVar2));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K, V> s<Map<K, V>> toMap(g<? super T, ? extends K> gVar, g<? super T, ? extends V> gVar2, Callable<? extends Map<K, V>> callable) {
        a.a(gVar, "keySelector is null");
        a.a(gVar, "keySelector is null");
        a.a(gVar2, "valueSelector is null");
        a.a(callable, "mapSupplier is null");
        return collect(callable, Functions.a(gVar, gVar2));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K> s<Map<K, Collection<T>>> toMultimap(g<? super T, ? extends K> gVar) {
        return toMultimap(gVar, Functions.a(), HashMapSupplier.a(), ArrayListSupplier.b());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K, V> s<Map<K, Collection<V>>> toMultimap(g<? super T, ? extends K> gVar, g<? super T, ? extends V> gVar2) {
        return toMultimap(gVar, gVar2, HashMapSupplier.a(), ArrayListSupplier.b());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K, V> s<Map<K, Collection<V>>> toMultimap(g<? super T, ? extends K> gVar, g<? super T, ? extends V> gVar2, Callable<? extends Map<K, Collection<V>>> callable, g<? super K, ? extends Collection<? super V>> gVar3) {
        a.a(gVar, "keySelector is null");
        a.a(gVar2, "valueSelector is null");
        a.a(callable, "mapSupplier is null");
        a.a(gVar3, "collectionFactory is null");
        return collect(callable, Functions.a(gVar, gVar2, gVar3));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <K, V> s<Map<K, Collection<V>>> toMultimap(g<? super T, ? extends K> gVar, g<? super T, ? extends V> gVar2, Callable<Map<K, Collection<V>>> callable) {
        return toMultimap(gVar, gVar2, callable, ArrayListSupplier.b());
    }

    @CheckReturnValue
    @BackpressureSupport(BackpressureKind.SPECIAL)
    @SchedulerSupport("none")
    public final e<T> toFlowable(BackpressureStrategy backpressureStrategy) {
        io.reactivex.internal.operators.flowable.b bVar = new io.reactivex.internal.operators.flowable.b(this);
        switch (backpressureStrategy) {
            case DROP:
                return bVar.c();
            case LATEST:
                return bVar.d();
            case MISSING:
                return bVar;
            case ERROR:
                return io.reactivex.d.a.a((e<T>) new FlowableOnBackpressureError<T>(bVar));
            default:
                return bVar.b();
        }
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<List<T>> toSortedList() {
        return toSortedList(Functions.f());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<List<T>> toSortedList(Comparator<? super T> comparator) {
        a.a(comparator, "comparator is null");
        return toList().a(Functions.a(comparator));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<List<T>> toSortedList(Comparator<? super T> comparator, int i) {
        a.a(comparator, "comparator is null");
        return toList(i).a(Functions.a(comparator));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final s<List<T>> toSortedList(int i) {
        return toSortedList(Functions.f(), i);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<T> unsubscribeOn(r rVar) {
        a.a(rVar, "scheduler is null");
        return io.reactivex.d.a.a((k<T>) new ObservableUnsubscribeOn<T>(this, rVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<k<T>> window(long j) {
        return window(j, j, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<k<T>> window(long j, long j2) {
        return window(j, j2, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final k<k<T>> window(long j, long j2, int i) {
        a.a(j, "count");
        a.a(j2, "skip");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new ObservableWindow<T>(this, j, j2, i));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<k<T>> window(long j, long j2, TimeUnit timeUnit) {
        return window(j, j2, timeUnit, io.reactivex.e.a.a(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<k<T>> window(long j, long j2, TimeUnit timeUnit, r rVar) {
        return window(j, j2, timeUnit, rVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<k<T>> window(long j, long j2, TimeUnit timeUnit, r rVar, int i) {
        a.a(j, "timespan");
        a.a(j2, "timeskip");
        a.a(i, "bufferSize");
        a.a(rVar, "scheduler is null");
        a.a(timeUnit, "unit is null");
        return io.reactivex.d.a.a((k<T>) new ca<T>(this, j, j2, timeUnit, rVar, FileTracerConfig.FOREVER, i, false));
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<k<T>> window(long j, TimeUnit timeUnit) {
        return window(j, timeUnit, io.reactivex.e.a.a(), (long) FileTracerConfig.FOREVER, false);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<k<T>> window(long j, TimeUnit timeUnit, long j2) {
        return window(j, timeUnit, io.reactivex.e.a.a(), j2, false);
    }

    @CheckReturnValue
    @SchedulerSupport("io.reactivex:computation")
    public final k<k<T>> window(long j, TimeUnit timeUnit, long j2, boolean z) {
        return window(j, timeUnit, io.reactivex.e.a.a(), j2, z);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<k<T>> window(long j, TimeUnit timeUnit, r rVar) {
        return window(j, timeUnit, rVar, (long) FileTracerConfig.FOREVER, false);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<k<T>> window(long j, TimeUnit timeUnit, r rVar, long j2) {
        return window(j, timeUnit, rVar, j2, false);
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<k<T>> window(long j, TimeUnit timeUnit, r rVar, long j2, boolean z) {
        return window(j, timeUnit, rVar, j2, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("custom")
    public final k<k<T>> window(long j, TimeUnit timeUnit, r rVar, long j2, boolean z, int i) {
        a.a(i, "bufferSize");
        a.a(rVar, "scheduler is null");
        a.a(timeUnit, "unit is null");
        a.a(j2, "count");
        return io.reactivex.d.a.a((k<T>) new ca<T>(this, j, j, timeUnit, rVar, j2, i, z));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <B> k<k<T>> window(o<B> oVar) {
        return window(oVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <B> k<k<T>> window(o<B> oVar, int i) {
        a.a(oVar, "boundary is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new bx<T>(this, oVar, i));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, V> k<k<T>> window(o<U> oVar, g<? super U, ? extends o<V>> gVar) {
        return window(oVar, gVar, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, V> k<k<T>> window(o<U> oVar, g<? super U, ? extends o<V>> gVar, int i) {
        a.a(oVar, "openingIndicator is null");
        a.a(gVar, "closingIndicator is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new by<T>(this, oVar, gVar, i));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <B> k<k<T>> window(Callable<? extends o<B>> callable) {
        return window(callable, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <B> k<k<T>> window(Callable<? extends o<B>> callable, int i) {
        a.a(callable, "boundary is null");
        a.a(i, "bufferSize");
        return io.reactivex.d.a.a((k<T>) new bz<T>(this, callable, i));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, R> k<R> withLatestFrom(o<? extends U> oVar, c<? super T, ? super U, ? extends R> cVar) {
        a.a(oVar, "other is null");
        a.a(cVar, "combiner is null");
        return io.reactivex.d.a.a((k<T>) new ObservableWithLatestFrom<T>(this, cVar, oVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <T1, T2, R> k<R> withLatestFrom(o<T1> oVar, o<T2> oVar2, h<? super T, ? super T1, ? super T2, R> hVar) {
        a.a(oVar, "o1 is null");
        a.a(oVar2, "o2 is null");
        a.a(hVar, "combiner is null");
        return withLatestFrom((o<?>[]) new o[]{oVar, oVar2}, Functions.a(hVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <T1, T2, T3, R> k<R> withLatestFrom(o<T1> oVar, o<T2> oVar2, o<T3> oVar3, i<? super T, ? super T1, ? super T2, ? super T3, R> iVar) {
        a.a(oVar, "o1 is null");
        a.a(oVar2, "o2 is null");
        a.a(oVar3, "o3 is null");
        a.a(iVar, "combiner is null");
        return withLatestFrom((o<?>[]) new o[]{oVar, oVar2, oVar3}, Functions.a(iVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <T1, T2, T3, T4, R> k<R> withLatestFrom(o<T1> oVar, o<T2> oVar2, o<T3> oVar3, o<T4> oVar4, j<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> jVar) {
        a.a(oVar, "o1 is null");
        a.a(oVar2, "o2 is null");
        a.a(oVar3, "o3 is null");
        a.a(oVar4, "o4 is null");
        a.a(jVar, "combiner is null");
        return withLatestFrom((o<?>[]) new o[]{oVar, oVar2, oVar3, oVar4}, Functions.a(jVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> withLatestFrom(o<?>[] oVarArr, g<? super Object[], R> gVar) {
        a.a(oVarArr, "others is null");
        a.a(gVar, "combiner is null");
        return io.reactivex.d.a.a((k<T>) new ObservableWithLatestFromMany<T>((o<T>) this, oVarArr, gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <R> k<R> withLatestFrom(Iterable<? extends o<?>> iterable, g<? super Object[], R> gVar) {
        a.a(iterable, "others is null");
        a.a(gVar, "combiner is null");
        return io.reactivex.d.a.a((k<T>) new ObservableWithLatestFromMany<T>((o<T>) this, iterable, gVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, R> k<R> zipWith(Iterable<U> iterable, c<? super T, ? super U, ? extends R> cVar) {
        a.a(iterable, "other is null");
        a.a(cVar, "zipper is null");
        return io.reactivex.d.a.a((k<T>) new cb<T>(this, iterable, cVar));
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, R> k<R> zipWith(o<? extends U> oVar, c<? super T, ? super U, ? extends R> cVar) {
        a.a(oVar, "other is null");
        return zip(this, oVar, cVar);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, R> k<R> zipWith(o<? extends U> oVar, c<? super T, ? super U, ? extends R> cVar, boolean z) {
        return zip((o<? extends T1>) this, oVar, cVar, z);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final <U, R> k<R> zipWith(o<? extends U> oVar, c<? super T, ? super U, ? extends R> cVar, boolean z, int i) {
        return zip((o<? extends T1>) this, oVar, cVar, z, i);
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final TestObserver<T> test() {
        TestObserver<T> testObserver = new TestObserver<>();
        subscribe((q<? super T>) testObserver);
        return testObserver;
    }

    @CheckReturnValue
    @SchedulerSupport("none")
    public final TestObserver<T> test(boolean z) {
        TestObserver<T> testObserver = new TestObserver<>();
        if (z) {
            testObserver.dispose();
        }
        subscribe((q<? super T>) testObserver);
        return testObserver;
    }
}
