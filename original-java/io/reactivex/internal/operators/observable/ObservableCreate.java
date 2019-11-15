package io.reactivex.internal.operators.observable;

import io.reactivex.d.a;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.k;
import io.reactivex.l;
import io.reactivex.m;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableCreate<T> extends k<T> {
    final m<T> a;

    static final class CreateEmitter<T> extends AtomicReference<b> implements b, l<T> {
        private static final long serialVersionUID = -3434801548987643227L;
        final q<? super T> a;

        CreateEmitter(q<? super T> qVar) {
            this.a = qVar;
        }

        public void a(T t) {
            if (t == null) {
                a((Throwable) new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (!isDisposed()) {
                this.a.onNext(t);
            }
        }

        public void a(Throwable th) {
            if (!b(th)) {
                a.a(th);
            }
        }

        /* JADX INFO: finally extract failed */
        public boolean b(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isDisposed()) {
                return false;
            }
            try {
                this.a.onError(th);
                dispose();
                return true;
            } catch (Throwable th2) {
                dispose();
                throw th2;
            }
        }

        public void a() {
            if (!isDisposed()) {
                try {
                    this.a.onComplete();
                } finally {
                    dispose();
                }
            }
        }

        public void dispose() {
            DisposableHelper.a((AtomicReference<b>) this);
        }

        public boolean isDisposed() {
            return DisposableHelper.a((b) get());
        }
    }

    public ObservableCreate(m<T> mVar) {
        this.a = mVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        CreateEmitter createEmitter = new CreateEmitter(qVar);
        qVar.onSubscribe(createEmitter);
        try {
            this.a.a(createEmitter);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            createEmitter.a(th);
        }
    }
}
