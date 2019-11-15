package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ObservableTakeUntil<T, U> extends a<T, T> {
    final o<? extends U> b;

    static final class TakeUntilObserver<T> extends AtomicBoolean implements q<T> {
        private static final long serialVersionUID = 3451719290311127173L;
        final q<? super T> a;
        final ArrayCompositeDisposable b;
        b c;

        TakeUntilObserver(q<? super T> qVar, ArrayCompositeDisposable arrayCompositeDisposable) {
            this.a = qVar;
            this.b = arrayCompositeDisposable;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                this.b.a(0, bVar);
            }
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            this.b.dispose();
            this.a.onError(th);
        }

        public void onComplete() {
            this.b.dispose();
            this.a.onComplete();
        }
    }

    final class a implements q<U> {
        private final ArrayCompositeDisposable b;
        private final e<T> c;

        a(ArrayCompositeDisposable arrayCompositeDisposable, e<T> eVar) {
            this.b = arrayCompositeDisposable;
            this.c = eVar;
        }

        public void onSubscribe(b bVar) {
            this.b.a(1, bVar);
        }

        public void onNext(U u) {
            this.b.dispose();
            this.c.onComplete();
        }

        public void onError(Throwable th) {
            this.b.dispose();
            this.c.onError(th);
        }

        public void onComplete() {
            this.b.dispose();
            this.c.onComplete();
        }
    }

    public ObservableTakeUntil(o<T> oVar, o<? extends U> oVar2) {
        super(oVar);
        this.b = oVar2;
    }

    public void subscribeActual(q<? super T> qVar) {
        e eVar = new e(qVar);
        ArrayCompositeDisposable arrayCompositeDisposable = new ArrayCompositeDisposable(2);
        TakeUntilObserver takeUntilObserver = new TakeUntilObserver(eVar, arrayCompositeDisposable);
        qVar.onSubscribe(arrayCompositeDisposable);
        this.b.subscribe(new a(arrayCompositeDisposable, eVar));
        this.a.subscribe(takeUntilObserver);
    }
}
