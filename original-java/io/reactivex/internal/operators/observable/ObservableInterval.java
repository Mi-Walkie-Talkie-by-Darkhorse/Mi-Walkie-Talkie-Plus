package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.schedulers.i;
import io.reactivex.k;
import io.reactivex.q;
import io.reactivex.r;
import io.reactivex.r.c;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableInterval extends k<Long> {
    final r a;
    final long b;
    final long c;
    final TimeUnit d;

    static final class IntervalObserver extends AtomicReference<b> implements b, Runnable {
        private static final long serialVersionUID = 346773832286157679L;
        final q<? super Long> a;
        long b;

        IntervalObserver(q<? super Long> qVar) {
            this.a = qVar;
        }

        public void dispose() {
            DisposableHelper.a((AtomicReference<b>) this);
        }

        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        public void run() {
            if (get() != DisposableHelper.DISPOSED) {
                q<? super Long> qVar = this.a;
                long j = this.b;
                this.b = 1 + j;
                qVar.onNext(Long.valueOf(j));
            }
        }

        public void a(b bVar) {
            DisposableHelper.b(this, bVar);
        }
    }

    public ObservableInterval(long j, long j2, TimeUnit timeUnit, r rVar) {
        this.b = j;
        this.c = j2;
        this.d = timeUnit;
        this.a = rVar;
    }

    public void subscribeActual(q<? super Long> qVar) {
        IntervalObserver intervalObserver = new IntervalObserver(qVar);
        qVar.onSubscribe(intervalObserver);
        r rVar = this.a;
        if (rVar instanceof i) {
            c a2 = rVar.a();
            intervalObserver.a(a2);
            a2.a(intervalObserver, this.b, this.c, this.d);
            return;
        }
        intervalObserver.a(rVar.a(intervalObserver, this.b, this.c, this.d));
    }
}
