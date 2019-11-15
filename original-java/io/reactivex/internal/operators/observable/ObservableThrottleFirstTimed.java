package io.reactivex.internal.operators.observable;

import io.reactivex.d.a;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import io.reactivex.r;
import io.reactivex.r.c;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableThrottleFirstTimed<T> extends a<T, T> {
    final long b;
    final TimeUnit c;
    final r d;

    static final class DebounceTimedObserver<T> extends AtomicReference<b> implements b, q<T>, Runnable {
        private static final long serialVersionUID = 786994795061867455L;
        final q<? super T> a;
        final long b;
        final TimeUnit c;
        final c d;
        b e;
        volatile boolean f;
        boolean g;

        DebounceTimedObserver(q<? super T> qVar, long j, TimeUnit timeUnit, c cVar) {
            this.a = qVar;
            this.b = j;
            this.c = timeUnit;
            this.d = cVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.e, bVar)) {
                this.e = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (!this.f && !this.g) {
                this.f = true;
                this.a.onNext(t);
                b bVar = (b) get();
                if (bVar != null) {
                    bVar.dispose();
                }
                DisposableHelper.c(this, this.d.a(this, this.b, this.c));
            }
        }

        public void run() {
            this.f = false;
        }

        public void onError(Throwable th) {
            if (this.g) {
                a.a(th);
                return;
            }
            this.g = true;
            this.a.onError(th);
            this.d.dispose();
        }

        public void onComplete() {
            if (!this.g) {
                this.g = true;
                this.a.onComplete();
                this.d.dispose();
            }
        }

        public void dispose() {
            this.e.dispose();
            this.d.dispose();
        }

        public boolean isDisposed() {
            return this.d.isDisposed();
        }
    }

    public ObservableThrottleFirstTimed(o<T> oVar, long j, TimeUnit timeUnit, r rVar) {
        super(oVar);
        this.b = j;
        this.c = timeUnit;
        this.d = rVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new DebounceTimedObserver(new e(qVar), this.b, this.c, this.d.a()));
    }
}
