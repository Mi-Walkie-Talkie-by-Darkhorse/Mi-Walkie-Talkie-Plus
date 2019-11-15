package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EmptyComponent;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableDetach */
public final class w<T> extends a<T, T> {

    /* compiled from: ObservableDetach */
    static final class a<T> implements b, q<T> {
        q<? super T> a;
        b b;

        a(q<? super T> qVar) {
            this.a = qVar;
        }

        public void dispose() {
            b bVar = this.b;
            this.b = EmptyComponent.INSTANCE;
            this.a = EmptyComponent.b();
            bVar.dispose();
        }

        public boolean isDisposed() {
            return this.b.isDisposed();
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.b, bVar)) {
                this.b = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            q<? super T> qVar = this.a;
            this.b = EmptyComponent.INSTANCE;
            this.a = EmptyComponent.b();
            qVar.onError(th);
        }

        public void onComplete() {
            q<? super T> qVar = this.a;
            this.b = EmptyComponent.INSTANCE;
            this.a = EmptyComponent.b();
            qVar.onComplete();
        }
    }

    public w(o<T> oVar) {
        super(oVar);
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar));
    }
}
