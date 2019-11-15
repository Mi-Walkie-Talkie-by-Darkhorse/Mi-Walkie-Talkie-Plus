package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.k;
import io.reactivex.q;
import io.reactivex.r;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableTimer extends k<Long> {
    final r a;
    final long b;
    final TimeUnit c;

    static final class TimerObserver extends AtomicReference<b> implements b, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;
        final q<? super Long> a;

        TimerObserver(q<? super Long> qVar) {
            this.a = qVar;
        }

        public void dispose() {
            DisposableHelper.a((AtomicReference<b>) this);
        }

        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        public void run() {
            if (!isDisposed()) {
                this.a.onNext(Long.valueOf(0));
                lazySet(EmptyDisposable.INSTANCE);
                this.a.onComplete();
            }
        }

        public void a(b bVar) {
            DisposableHelper.d(this, bVar);
        }
    }

    public ObservableTimer(long j, TimeUnit timeUnit, r rVar) {
        this.b = j;
        this.c = timeUnit;
        this.a = rVar;
    }

    public void subscribeActual(q<? super Long> qVar) {
        TimerObserver timerObserver = new TimerObserver(qVar);
        qVar.onSubscribe(timerObserver);
        timerObserver.a(this.a.a(timerObserver, this.b, this.c));
    }
}
