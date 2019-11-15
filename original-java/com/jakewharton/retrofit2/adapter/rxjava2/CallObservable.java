package com.jakewharton.retrofit2.adapter.rxjava2;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.k;
import io.reactivex.q;
import retrofit2.b;

final class CallObservable<T> extends k<retrofit2.k<T>> {
    private final b<T> originalCall;

    private static final class CallDisposable implements io.reactivex.disposables.b {
        private final b<?> call;

        CallDisposable(b<?> bVar) {
            this.call = bVar;
        }

        public void dispose() {
            this.call.b();
        }

        public boolean isDisposed() {
            return this.call.c();
        }
    }

    CallObservable(b<T> bVar) {
        this.originalCall = bVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super retrofit2.k<T>> qVar) {
        boolean z;
        b d = this.originalCall.d();
        qVar.onSubscribe(new CallDisposable(d));
        try {
            retrofit2.k a = d.a();
            if (!d.c()) {
                qVar.onNext(a);
            }
            if (!d.c()) {
                try {
                    qVar.onComplete();
                } catch (Throwable th) {
                    th = th;
                    z = true;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
            a.b(th);
            if (z) {
                io.reactivex.d.a.a(th);
            } else if (!d.c()) {
                try {
                    qVar.onError(th);
                } catch (Throwable th3) {
                    a.b(th3);
                    io.reactivex.d.a.a((Throwable) new CompositeException(th, th3));
                }
            }
        }
    }
}
