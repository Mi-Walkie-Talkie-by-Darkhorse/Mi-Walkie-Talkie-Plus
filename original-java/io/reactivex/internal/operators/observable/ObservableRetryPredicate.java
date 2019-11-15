package io.reactivex.internal.operators.observable;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.b.p;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableRetryPredicate<T> extends a<T, T> {
    final p<? super Throwable> b;
    final long c;

    static final class RepeatObserver<T> extends AtomicInteger implements q<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        final q<? super T> a;
        final SequentialDisposable b;
        final o<? extends T> c;
        final p<? super Throwable> d;
        long e;

        RepeatObserver(q<? super T> qVar, long j, p<? super Throwable> pVar, SequentialDisposable sequentialDisposable, o<? extends T> oVar) {
            this.a = qVar;
            this.b = sequentialDisposable;
            this.c = oVar;
            this.d = pVar;
            this.e = j;
        }

        public void onSubscribe(b bVar) {
            this.b.a(bVar);
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            long j = this.e;
            if (j != FileTracerConfig.FOREVER) {
                this.e = j - 1;
            }
            if (j == 0) {
                this.a.onError(th);
                return;
            }
            try {
                if (!this.d.test(th)) {
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

    public ObservableRetryPredicate(k<T> kVar, long j, p<? super Throwable> pVar) {
        super(kVar);
        this.b = pVar;
        this.c = j;
    }

    public void subscribeActual(q<? super T> qVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        qVar.onSubscribe(sequentialDisposable);
        new RepeatObserver(qVar, this.c, this.b, sequentialDisposable, this.a).a();
    }
}
