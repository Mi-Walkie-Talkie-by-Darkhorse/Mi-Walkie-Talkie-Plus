package io.reactivex.internal.observers;

import io.reactivex.b.a;
import io.reactivex.b.f;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.q;

/* compiled from: DisposableLambdaObserver */
public final class g<T> implements b, q<T> {
    final q<? super T> a;
    final f<? super b> b;
    final a c;
    b d;

    public g(q<? super T> qVar, f<? super b> fVar, a aVar) {
        this.a = qVar;
        this.b = fVar;
        this.c = aVar;
    }

    public void onSubscribe(b bVar) {
        try {
            this.b.accept(bVar);
            if (DisposableHelper.a(this.d, bVar)) {
                this.d = bVar;
                this.a.onSubscribe(this);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            bVar.dispose();
            this.d = DisposableHelper.DISPOSED;
            EmptyDisposable.a(th, this.a);
        }
    }

    public void onNext(T t) {
        this.a.onNext(t);
    }

    public void onError(Throwable th) {
        if (this.d != DisposableHelper.DISPOSED) {
            this.a.onError(th);
        } else {
            io.reactivex.d.a.a(th);
        }
    }

    public void onComplete() {
        if (this.d != DisposableHelper.DISPOSED) {
            this.a.onComplete();
        }
    }

    public void dispose() {
        try {
            this.c.a();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.d.a.a(th);
        }
        this.d.dispose();
    }

    public boolean isDisposed() {
        return this.d.isDisposed();
    }
}
