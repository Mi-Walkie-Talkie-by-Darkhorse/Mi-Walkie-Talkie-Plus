package io.reactivex.internal.operators.observable;

import io.reactivex.b.e;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.a;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableRepeatUntil<T> extends a<T, T> {
    final e b;

    static final class RepeatUntilObserver<T> extends AtomicInteger implements q<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        final q<? super T> a;
        final SequentialDisposable b;
        final o<? extends T> c;
        final e d;

        RepeatUntilObserver(q<? super T> qVar, e eVar, SequentialDisposable sequentialDisposable, o<? extends T> oVar) {
            this.a = qVar;
            this.b = sequentialDisposable;
            this.c = oVar;
            this.d = eVar;
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
            try {
                if (this.d.a()) {
                    this.a.onComplete();
                } else {
                    a();
                }
            } catch (Throwable th) {
                a.b(th);
                this.a.onError(th);
            }
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                do {
                    this.c.subscribe(this);
                    i = addAndGet(-i);
                } while (i != 0);
            }
        }
    }

    public ObservableRepeatUntil(k<T> kVar, e eVar) {
        super(kVar);
        this.b = eVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        qVar.onSubscribe(sequentialDisposable);
        new RepeatUntilObserver(qVar, this.b, sequentialDisposable, this.a).a();
    }
}
