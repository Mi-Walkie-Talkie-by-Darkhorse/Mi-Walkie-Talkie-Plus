package io.reactivex.internal.operators.observable;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableRepeat<T> extends a<T, T> {
    final long b;

    static final class RepeatObserver<T> extends AtomicInteger implements q<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        final q<? super T> a;
        final SequentialDisposable b;
        final o<? extends T> c;
        long d;

        RepeatObserver(q<? super T> qVar, long j, SequentialDisposable sequentialDisposable, o<? extends T> oVar) {
            this.a = qVar;
            this.b = sequentialDisposable;
            this.c = oVar;
            this.d = j;
        }

        public void onSubscribe(b bVar) {
            this.b.b(bVar);
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            long j = this.d;
            if (j != FileTracerConfig.FOREVER) {
                this.d = j - 1;
            }
            if (j != 0) {
                a();
            } else {
                this.a.onComplete();
            }
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

    public ObservableRepeat(k<T> kVar, long j) {
        super(kVar);
        this.b = j;
    }

    public void subscribeActual(q<? super T> qVar) {
        long j = FileTracerConfig.FOREVER;
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        qVar.onSubscribe(sequentialDisposable);
        if (this.b != FileTracerConfig.FOREVER) {
            j = this.b - 1;
        }
        new RepeatObserver(qVar, j, sequentialDisposable, this.a).a();
    }
}
