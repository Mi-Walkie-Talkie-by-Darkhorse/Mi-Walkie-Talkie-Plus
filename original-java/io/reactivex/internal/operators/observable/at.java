package io.reactivex.internal.operators.observable;

import io.reactivex.internal.functions.Functions;
import io.reactivex.q;
import io.reactivex.r;
import io.reactivex.u;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableInternalHelper */
public final class at {

    /* compiled from: ObservableInternalHelper */
    static final class a<T> implements Callable<io.reactivex.c.a<T>> {
        private final io.reactivex.k<T> a;
        private final int b;

        a(io.reactivex.k<T> kVar, int i) {
            this.a = kVar;
            this.b = i;
        }

        /* renamed from: a */
        public io.reactivex.c.a<T> call() {
            return this.a.replay(this.b);
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class b<T> implements Callable<io.reactivex.c.a<T>> {
        private final io.reactivex.k<T> a;
        private final int b;
        private final long c;
        private final TimeUnit d;
        private final r e;

        b(io.reactivex.k<T> kVar, int i, long j, TimeUnit timeUnit, r rVar) {
            this.a = kVar;
            this.b = i;
            this.c = j;
            this.d = timeUnit;
            this.e = rVar;
        }

        /* renamed from: a */
        public io.reactivex.c.a<T> call() {
            return this.a.replay(this.b, this.c, this.d, this.e);
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class c<T, U> implements io.reactivex.b.g<T, io.reactivex.o<U>> {
        private final io.reactivex.b.g<? super T, ? extends Iterable<? extends U>> a;

        c(io.reactivex.b.g<? super T, ? extends Iterable<? extends U>> gVar) {
            this.a = gVar;
        }

        /* renamed from: a */
        public io.reactivex.o<U> apply(T t) throws Exception {
            return new am((Iterable) io.reactivex.internal.functions.a.a(this.a.apply(t), "The mapper returned a null Iterable"));
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class d<U, R, T> implements io.reactivex.b.g<U, R> {
        private final io.reactivex.b.c<? super T, ? super U, ? extends R> a;
        private final T b;

        d(io.reactivex.b.c<? super T, ? super U, ? extends R> cVar, T t) {
            this.a = cVar;
            this.b = t;
        }

        public R apply(U u) throws Exception {
            return this.a.a(this.b, u);
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class e<T, R, U> implements io.reactivex.b.g<T, io.reactivex.o<R>> {
        private final io.reactivex.b.c<? super T, ? super U, ? extends R> a;
        private final io.reactivex.b.g<? super T, ? extends io.reactivex.o<? extends U>> b;

        e(io.reactivex.b.c<? super T, ? super U, ? extends R> cVar, io.reactivex.b.g<? super T, ? extends io.reactivex.o<? extends U>> gVar) {
            this.a = cVar;
            this.b = gVar;
        }

        /* renamed from: a */
        public io.reactivex.o<R> apply(T t) throws Exception {
            return new ay((io.reactivex.o) io.reactivex.internal.functions.a.a(this.b.apply(t), "The mapper returned a null ObservableSource"), new d(this.a, t));
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class f<T, U> implements io.reactivex.b.g<T, io.reactivex.o<T>> {
        final io.reactivex.b.g<? super T, ? extends io.reactivex.o<U>> a;

        f(io.reactivex.b.g<? super T, ? extends io.reactivex.o<U>> gVar) {
            this.a = gVar;
        }

        /* renamed from: a */
        public io.reactivex.o<T> apply(T t) throws Exception {
            return new bq((io.reactivex.o) io.reactivex.internal.functions.a.a(this.a.apply(t), "The itemDelay returned a null ObservableSource"), 1).map(Functions.b(t)).defaultIfEmpty(t);
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class g<T, R> implements io.reactivex.b.g<T, io.reactivex.k<R>> {
        final io.reactivex.b.g<? super T, ? extends u<? extends R>> a;

        g(io.reactivex.b.g<? super T, ? extends u<? extends R>> gVar) {
            this.a = gVar;
        }

        /* renamed from: a */
        public io.reactivex.k<R> apply(T t) throws Exception {
            return io.reactivex.d.a.a((io.reactivex.k<T>) new io.reactivex.internal.operators.single.b<T>((u) io.reactivex.internal.functions.a.a(this.a.apply(t), "The mapper returned a null SingleSource")));
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class h<T> implements io.reactivex.b.a {
        final q<T> a;

        h(q<T> qVar) {
            this.a = qVar;
        }

        public void a() throws Exception {
            this.a.onComplete();
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class i<T> implements io.reactivex.b.f<Throwable> {
        final q<T> a;

        i(q<T> qVar) {
            this.a = qVar;
        }

        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.a.onError(th);
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class j<T> implements io.reactivex.b.f<T> {
        final q<T> a;

        j(q<T> qVar) {
            this.a = qVar;
        }

        public void accept(T t) throws Exception {
            this.a.onNext(t);
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class k<T> implements Callable<io.reactivex.c.a<T>> {
        private final io.reactivex.k<T> a;

        k(io.reactivex.k<T> kVar) {
            this.a = kVar;
        }

        /* renamed from: a */
        public io.reactivex.c.a<T> call() {
            return this.a.replay();
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class l<T, R> implements io.reactivex.b.g<io.reactivex.k<T>, io.reactivex.o<R>> {
        private final io.reactivex.b.g<? super io.reactivex.k<T>, ? extends io.reactivex.o<R>> a;
        private final r b;

        l(io.reactivex.b.g<? super io.reactivex.k<T>, ? extends io.reactivex.o<R>> gVar, r rVar) {
            this.a = gVar;
            this.b = rVar;
        }

        /* renamed from: a */
        public io.reactivex.o<R> apply(io.reactivex.k<T> kVar) throws Exception {
            return io.reactivex.k.wrap((io.reactivex.o) io.reactivex.internal.functions.a.a(this.a.apply(kVar), "The selector returned a null ObservableSource")).observeOn(this.b);
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class m<T, S> implements io.reactivex.b.c<S, io.reactivex.d<T>, S> {
        final io.reactivex.b.b<S, io.reactivex.d<T>> a;

        m(io.reactivex.b.b<S, io.reactivex.d<T>> bVar) {
            this.a = bVar;
        }

        public S a(S s, io.reactivex.d<T> dVar) throws Exception {
            this.a.a(s, dVar);
            return s;
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class n<T, S> implements io.reactivex.b.c<S, io.reactivex.d<T>, S> {
        final io.reactivex.b.f<io.reactivex.d<T>> a;

        n(io.reactivex.b.f<io.reactivex.d<T>> fVar) {
            this.a = fVar;
        }

        public S a(S s, io.reactivex.d<T> dVar) throws Exception {
            this.a.accept(dVar);
            return s;
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class o<T> implements Callable<io.reactivex.c.a<T>> {
        private final io.reactivex.k<T> a;
        private final long b;
        private final TimeUnit c;
        private final r d;

        o(io.reactivex.k<T> kVar, long j, TimeUnit timeUnit, r rVar) {
            this.a = kVar;
            this.b = j;
            this.c = timeUnit;
            this.d = rVar;
        }

        /* renamed from: a */
        public io.reactivex.c.a<T> call() {
            return this.a.replay(this.b, this.c, this.d);
        }
    }

    /* compiled from: ObservableInternalHelper */
    static final class p<T, R> implements io.reactivex.b.g<List<io.reactivex.o<? extends T>>, io.reactivex.o<? extends R>> {
        private final io.reactivex.b.g<? super Object[], ? extends R> a;

        p(io.reactivex.b.g<? super Object[], ? extends R> gVar) {
            this.a = gVar;
        }

        /* renamed from: a */
        public io.reactivex.o<? extends R> apply(List<io.reactivex.o<? extends T>> list) {
            return io.reactivex.k.zipIterable(list, this.a, false, io.reactivex.k.bufferSize());
        }
    }

    public static <T, S> io.reactivex.b.c<S, io.reactivex.d<T>, S> a(io.reactivex.b.f<io.reactivex.d<T>> fVar) {
        return new n(fVar);
    }

    public static <T, S> io.reactivex.b.c<S, io.reactivex.d<T>, S> a(io.reactivex.b.b<S, io.reactivex.d<T>> bVar) {
        return new m(bVar);
    }

    public static <T, U> io.reactivex.b.g<T, io.reactivex.o<T>> a(io.reactivex.b.g<? super T, ? extends io.reactivex.o<U>> gVar) {
        return new f(gVar);
    }

    public static <T> io.reactivex.b.f<T> a(q<T> qVar) {
        return new j(qVar);
    }

    public static <T> io.reactivex.b.f<Throwable> b(q<T> qVar) {
        return new i(qVar);
    }

    public static <T> io.reactivex.b.a c(q<T> qVar) {
        return new h(qVar);
    }

    public static <T, U, R> io.reactivex.b.g<T, io.reactivex.o<R>> a(io.reactivex.b.g<? super T, ? extends io.reactivex.o<? extends U>> gVar, io.reactivex.b.c<? super T, ? super U, ? extends R> cVar) {
        return new e(cVar, gVar);
    }

    public static <T, U> io.reactivex.b.g<T, io.reactivex.o<U>> b(io.reactivex.b.g<? super T, ? extends Iterable<? extends U>> gVar) {
        return new c(gVar);
    }

    public static <T> Callable<io.reactivex.c.a<T>> a(io.reactivex.k<T> kVar) {
        return new k(kVar);
    }

    public static <T> Callable<io.reactivex.c.a<T>> a(io.reactivex.k<T> kVar, int i2) {
        return new a(kVar, i2);
    }

    public static <T> Callable<io.reactivex.c.a<T>> a(io.reactivex.k<T> kVar, int i2, long j2, TimeUnit timeUnit, r rVar) {
        return new b(kVar, i2, j2, timeUnit, rVar);
    }

    public static <T> Callable<io.reactivex.c.a<T>> a(io.reactivex.k<T> kVar, long j2, TimeUnit timeUnit, r rVar) {
        return new o(kVar, j2, timeUnit, rVar);
    }

    public static <T, R> io.reactivex.b.g<io.reactivex.k<T>, io.reactivex.o<R>> a(io.reactivex.b.g<? super io.reactivex.k<T>, ? extends io.reactivex.o<R>> gVar, r rVar) {
        return new l(gVar, rVar);
    }

    public static <T, R> io.reactivex.b.g<List<io.reactivex.o<? extends T>>, io.reactivex.o<? extends R>> c(io.reactivex.b.g<? super Object[], ? extends R> gVar) {
        return new p(gVar);
    }

    public static <T, R> io.reactivex.k<R> a(io.reactivex.k<T> kVar, io.reactivex.b.g<? super T, ? extends u<? extends R>> gVar) {
        return kVar.switchMap(d(gVar), 1);
    }

    public static <T, R> io.reactivex.k<R> b(io.reactivex.k<T> kVar, io.reactivex.b.g<? super T, ? extends u<? extends R>> gVar) {
        return kVar.switchMapDelayError(d(gVar), 1);
    }

    private static <T, R> io.reactivex.b.g<T, io.reactivex.k<R>> d(io.reactivex.b.g<? super T, ? extends u<? extends R>> gVar) {
        io.reactivex.internal.functions.a.a(gVar, "mapper is null");
        return new g(gVar);
    }
}
