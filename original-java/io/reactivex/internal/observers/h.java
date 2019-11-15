package io.reactivex.internal.observers;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.f;
import io.reactivex.q;

/* compiled from: FullArbiterObserver */
public final class h<T> implements q<T> {
    final f<T> a;
    b b;

    public h(f<T> fVar) {
        this.a = fVar;
    }

    public void onSubscribe(b bVar) {
        if (DisposableHelper.a(this.b, bVar)) {
            this.b = bVar;
            this.a.a(bVar);
        }
    }

    public void onNext(T t) {
        this.a.a(t, this.b);
    }

    public void onError(Throwable th) {
        this.a.a(th, this.b);
    }

    public void onComplete() {
        this.a.b(this.b);
    }
}
