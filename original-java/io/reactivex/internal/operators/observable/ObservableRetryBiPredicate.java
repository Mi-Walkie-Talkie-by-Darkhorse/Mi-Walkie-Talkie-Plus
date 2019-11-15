package io.reactivex.internal.operators.observable;

import io.reactivex.b.d;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableRetryBiPredicate<T> extends a<T, T> {
    final d<? super Integer, ? super Throwable> b;

    static final class RetryBiObserver<T> extends AtomicInteger implements q<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        final q<? super T> a;
        final SequentialDisposable b;
        final o<? extends T> c;
        final d<? super Integer, ? super Throwable> d;
        int e;

        RetryBiObserver(q<? super T> qVar, d<? super Integer, ? super Throwable> dVar, SequentialDisposable sequentialDisposable, o<? extends T> oVar) {
            this.a = qVar;
            this.b = sequentialDisposable;
            this.c = oVar;
            this.d = dVar;
        }

        public void onSubscribe(b bVar) {
            this.b.a(bVar);
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            try {
                d<? super Integer, ? super Throwable> dVar = this.d;
                int i = this.e + 1;
                this.e = i;
                if (!dVar.a(Integer.valueOf(i), th)) {
                    this.a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                a.b(th2);
                this.a.onError(new CompositeException(th, th2));
            }
        }

        public void onComplete() {
            this.a.onComplete();
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.b.isDisposed()) {
                    this.c.subscribe(this);
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
        }
    }

    public ObservableRetryBiPredicate(k<T> kVar, d<? super Integer, ? super Throwable> dVar) {
        super(kVar);
        this.b = dVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        qVar.onSubscribe(sequentialDisposable);
        new RetryBiObserver(qVar, this.b, sequentialDisposable, this.a).a();
    }
}
