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

public final class ObservableIntervalRange extends k<Long> {
    final r a;
    final long b;
    final long c;
    final long d;
    final long e;
    final TimeUnit f;

    static final class IntervalRangeObserver extends AtomicReference<b> implements b, Runnable {
        private static final long serialVersionUID = 1891866368734007884L;
        final q<? super Long> a;
        final long b;
        long c;

        IntervalRangeObserver(q<? super Long> qVar, long j, long j2) {
            this.a = qVar;
            this.c = j;
            this.b = j2;
        }

        public void dispose() {
            DisposableHelper.a((AtomicReference<b>) this);
        }

        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        public void run() {
            if (!isDisposed()) {
                long j = this.c;
                this.a.onNext(Long.valueOf(j));
                if (j == this.b) {
                    DisposableHelper.a((AtomicReference<b>) this);
                    this.a.onComplete();
                    return;
                }
                this.c = j + 1;
            }
        }

        public void a(b bVar) {
            DisposableHelper.b(this, bVar);
        }
    }

    public ObservableIntervalRange(long j, long j2, long j3, long j4, TimeUnit timeUnit, r rVar) {
        this.d = j3;
        this.e = j4;
        this.f = timeUnit;
        this.a = rVar;
        this.b = j;
        this.c = j2;
    }

    public void subscribeActual(q<? super Long> qVar) {
        IntervalRangeObserver intervalRangeObserver = new IntervalRangeObserver(qVar, this.b, this.c);
        qVar.onSubscribe(intervalRangeObserver);
        r rVar = this.a;
        if (rVar instanceof i) {
            c a2 = rVar.a();
            intervalRangeObserver.a(a2);
            a2.a(intervalRangeObserver, this.d, this.e, this.f);
            return;
        }
        intervalRangeObserver.a(rVar.a(intervalRangeObserver, this.d, this.e, this.f));
    }
}
