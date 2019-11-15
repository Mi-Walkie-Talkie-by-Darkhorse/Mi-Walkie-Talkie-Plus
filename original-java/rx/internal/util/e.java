package rx.internal.util;

import rx.a.C0098a;
import rx.d;

/* compiled from: ScalarSynchronousObservable */
public final class e<T> extends rx.a<T> {
    private final T b;

    /* compiled from: ScalarSynchronousObservable */
    static final class a<T> implements C0098a<T> {
        private final rx.internal.schedulers.a a;
        private final T b;

        a(rx.internal.schedulers.a aVar, T t) {
            this.a = aVar;
            this.b = t;
        }

        /* renamed from: a */
        public void call(rx.e<? super T> eVar) {
            eVar.add(this.a.a(new c(eVar, this.b)));
        }
    }

    /* compiled from: ScalarSynchronousObservable */
    static final class b<T> implements C0098a<T> {
        private final d a;
        private final T b;

        b(d dVar, T t) {
            this.a = dVar;
            this.b = t;
        }

        /* renamed from: a */
        public void call(rx.e<? super T> eVar) {
            rx.d.a a2 = this.a.a();
            eVar.add(a2);
            a2.a(new c(eVar, this.b));
        }
    }

    /* compiled from: ScalarSynchronousObservable */
    static final class c<T> implements rx.b.a {
        private final rx.e<? super T> a;
        private final T b;

        private c(rx.e<? super T> eVar, T t) {
            this.a = eVar;
            this.b = t;
        }

        public void a() {
            try {
                this.a.onNext(this.b);
                this.a.onCompleted();
            } catch (Throwable th) {
                this.a.onError(th);
            }
        }
    }

    public static final <T> e<T> b(T t) {
        return new e<>(t);
    }

    protected e(final T t) {
        super(new C0098a<T>() {
            /* renamed from: a */
            public void call(rx.e<? super T> eVar) {
                eVar.onNext(t);
                eVar.onCompleted();
            }
        });
        this.b = t;
    }

    public rx.a<T> c(d dVar) {
        if (dVar instanceof rx.internal.schedulers.a) {
            return a((C0098a<T>) new a<T>((rx.internal.schedulers.a) dVar, this.b));
        }
        return a((C0098a<T>) new b<T>(dVar, this.b));
    }
}
