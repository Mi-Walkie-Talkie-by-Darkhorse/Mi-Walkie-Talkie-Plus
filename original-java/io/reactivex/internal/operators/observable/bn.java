package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;

/* compiled from: ObservableSkipUntil */
public final class bn<T, U> extends a<T, T> {
    final o<U> b;

    /* compiled from: ObservableSkipUntil */
    final class a implements q<U> {
        io.reactivex.disposables.b a;
        private final ArrayCompositeDisposable c;
        private final b<T> d;
        private final e<T> e;

        a(ArrayCompositeDisposable arrayCompositeDisposable, b<T> bVar, e<T> eVar) {
            this.c = arrayCompositeDisposable;
            this.d = bVar;
            this.e = eVar;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.a, bVar)) {
                this.a = bVar;
                this.c.a(1, bVar);
            }
        }

        public void onNext(U u) {
            this.a.dispose();
            this.d.d = true;
        }

        public void onError(Throwable th) {
            this.c.dispose();
            this.e.onError(th);
        }

        public void onComplete() {
            this.d.d = true;
        }
    }

    /* compiled from: ObservableSkipUntil */
    static final class b<T> implements q<T> {
        final q<? super T> a;
        final ArrayCompositeDisposable b;
        io.reactivex.disposables.b c;
        volatile boolean d;
        boolean e;

        b(q<? super T> qVar, ArrayCompositeDisposable arrayCompositeDisposable) {
            this.a = qVar;
            this.b = arrayCompositeDisposable;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                this.b.a(0, bVar);
            }
        }

        public void onNext(T t) {
            if (this.e) {
                this.a.onNext(t);
            } else if (this.d) {
                this.e = true;
                this.a.onNext(t);
            }
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

    public bn(o<T> oVar, o<U> oVar2) {
        super(oVar);
        this.b = oVar2;
    }

    public void subscribeActual(q<? super T> qVar) {
        e eVar = new e(qVar);
        ArrayCompositeDisposable arrayCompositeDisposable = new ArrayCompositeDisposable(2);
        eVar.onSubscribe(arrayCompositeDisposable);
        b bVar = new b(eVar, arrayCompositeDisposable);
        this.b.subscribe(new a(arrayCompositeDisposable, bVar, eVar));
        this.a.subscribe(bVar);
    }
}
