package io.reactivex.internal.operators.observable;

import io.reactivex.e.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.r;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableTimeInterval */
public final class bu<T> extends a<T, b<T>> {
    final r b;
    final TimeUnit c;

    /* compiled from: ObservableTimeInterval */
    static final class a<T> implements io.reactivex.disposables.b, q<T> {
        final q<? super b<T>> a;
        final TimeUnit b;
        final r c;
        long d;
        io.reactivex.disposables.b e;

        a(q<? super b<T>> qVar, TimeUnit timeUnit, r rVar) {
            this.a = qVar;
            this.c = rVar;
            this.b = timeUnit;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.e, bVar)) {
                this.e = bVar;
                this.d = this.c.a(this.b);
                this.a.onSubscribe(this);
            }
        }

        public void dispose() {
            this.e.dispose();
        }

        public boolean isDisposed() {
            return this.e.isDisposed();
        }

        public void onNext(T t) {
            long a2 = this.c.a(this.b);
            long j = this.d;
            this.d = a2;
            this.a.onNext(new b(t, a2 - j, this.b));
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            this.a.onComplete();
        }
    }

    public bu(o<T> oVar, TimeUnit timeUnit, r rVar) {
        super(oVar);
        this.b = rVar;
        this.c = timeUnit;
    }

    public void subscribeActual(q<? super b<T>> qVar) {
        this.a.subscribe(new a(qVar, this.c, this.b));
    }
}
