package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import io.reactivex.r;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableDelay */
public final class t<T> extends a<T, T> {
    final long b;
    final TimeUnit c;
    final r d;
    final boolean e;

    /* compiled from: ObservableDelay */
    static final class a<T> implements io.reactivex.disposables.b, q<T> {
        final q<? super T> a;
        final long b;
        final TimeUnit c;
        final io.reactivex.r.c d;
        final boolean e;
        io.reactivex.disposables.b f;

        /* renamed from: io.reactivex.internal.operators.observable.t$a$a reason: collision with other inner class name */
        /* compiled from: ObservableDelay */
        final class C0087a implements Runnable {
            C0087a() {
            }

            public void run() {
                try {
                    a.this.a.onComplete();
                } finally {
                    a.this.d.dispose();
                }
            }
        }

        /* compiled from: ObservableDelay */
        final class b implements Runnable {
            private final Throwable b;

            b(Throwable th) {
                this.b = th;
            }

            public void run() {
                try {
                    a.this.a.onError(this.b);
                } finally {
                    a.this.d.dispose();
                }
            }
        }

        /* compiled from: ObservableDelay */
        final class c implements Runnable {
            private final T b;

            c(T t) {
                this.b = t;
            }

            public void run() {
                a.this.a.onNext(this.b);
            }
        }

        a(q<? super T> qVar, long j, TimeUnit timeUnit, io.reactivex.r.c cVar, boolean z) {
            this.a = qVar;
            this.b = j;
            this.c = timeUnit;
            this.d = cVar;
            this.e = z;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.f, bVar)) {
                this.f = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            this.d.a(new c(t), this.b, this.c);
        }

        public void onError(Throwable th) {
            this.d.a(new b(th), this.e ? this.b : 0, this.c);
        }

        public void onComplete() {
            this.d.a(new C0087a(), this.b, this.c);
        }

        public void dispose() {
            this.f.dispose();
            this.d.dispose();
        }

        public boolean isDisposed() {
            return this.d.isDisposed();
        }
    }

    public t(o<T> oVar, long j, TimeUnit timeUnit, r rVar, boolean z) {
        super(oVar);
        this.b = j;
        this.c = timeUnit;
        this.d = rVar;
        this.e = z;
    }

    public void subscribeActual(q<? super T> qVar) {
        q<? super T> eVar;
        if (this.e) {
            eVar = qVar;
        } else {
            eVar = new e<>(qVar);
        }
        this.a.subscribe(new a(eVar, this.b, this.c, this.d.a(), this.e));
    }
}
