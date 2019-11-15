package io.reactivex.internal.operators.observable;

import io.reactivex.b.c;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableWithLatestFrom<T, U, R> extends a<T, R> {
    final c<? super T, ? super U, ? extends R> b;
    final o<? extends U> c;

    static final class WithLatestFromObserver<T, U, R> extends AtomicReference<U> implements b, q<T> {
        private static final long serialVersionUID = -312246233408980075L;
        final q<? super R> a;
        final c<? super T, ? super U, ? extends R> b;
        final AtomicReference<b> c = new AtomicReference<>();
        final AtomicReference<b> d = new AtomicReference<>();

        WithLatestFromObserver(q<? super R> qVar, c<? super T, ? super U, ? extends R> cVar) {
            this.a = qVar;
            this.b = cVar;
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this.c, bVar);
        }

        public void onNext(T t) {
            Object obj = get();
            if (obj != null) {
                try {
                    this.a.onNext(io.reactivex.internal.functions.a.a(this.b.a(t, obj), "The combiner returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    dispose();
                    this.a.onError(th);
                }
            }
        }

        public void onError(Throwable th) {
            DisposableHelper.a(this.d);
            this.a.onError(th);
        }

        public void onComplete() {
            DisposableHelper.a(this.d);
            this.a.onComplete();
        }

        public void dispose() {
            DisposableHelper.a(this.c);
            DisposableHelper.a(this.d);
        }

        public boolean isDisposed() {
            return DisposableHelper.a((b) this.c.get());
        }

        public boolean a(b bVar) {
            return DisposableHelper.b(this.d, bVar);
        }

        public void a(Throwable th) {
            DisposableHelper.a(this.c);
            this.a.onError(th);
        }
    }

    final class a implements q<U> {
        private final WithLatestFromObserver<T, U, R> b;

        a(WithLatestFromObserver<T, U, R> withLatestFromObserver) {
            this.b = withLatestFromObserver;
        }

        public void onSubscribe(b bVar) {
            this.b.a(bVar);
        }

        public void onNext(U u) {
            this.b.lazySet(u);
        }

        public void onError(Throwable th) {
            this.b.a(th);
        }

        public void onComplete() {
        }
    }

    public ObservableWithLatestFrom(o<T> oVar, c<? super T, ? super U, ? extends R> cVar, o<? extends U> oVar2) {
        super(oVar);
        this.b = cVar;
        this.c = oVar2;
    }

    public void subscribeActual(q<? super R> qVar) {
        e eVar = new e(qVar);
        WithLatestFromObserver withLatestFromObserver = new WithLatestFromObserver(eVar, this.b);
        eVar.onSubscribe(withLatestFromObserver);
        this.c.subscribe(new a(withLatestFromObserver));
        this.a.subscribe(withLatestFromObserver);
    }
}
