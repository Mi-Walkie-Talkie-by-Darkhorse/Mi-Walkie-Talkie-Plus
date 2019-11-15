package io.reactivex.internal.observers;

import io.reactivex.disposables.b;
import io.reactivex.internal.a.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.k;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicReference;

public final class InnerQueuedObserver<T> extends AtomicReference<b> implements b, q<T> {
    private static final long serialVersionUID = -5417183359794346637L;
    final j<T> a;
    final int b;
    g<T> c;
    volatile boolean d;
    int e;

    public InnerQueuedObserver(j<T> jVar, int i) {
        this.a = jVar;
        this.b = i;
    }

    public void onSubscribe(b bVar) {
        if (DisposableHelper.b(this, bVar)) {
            if (bVar instanceof io.reactivex.internal.a.b) {
                io.reactivex.internal.a.b bVar2 = (io.reactivex.internal.a.b) bVar;
                int a2 = bVar2.a(3);
                if (a2 == 1) {
                    this.e = a2;
                    this.c = bVar2;
                    this.d = true;
                    this.a.a(this);
                    return;
                } else if (a2 == 2) {
                    this.e = a2;
                    this.c = bVar2;
                    return;
                }
            }
            this.c = k.a(-this.b);
        }
    }

    public void onNext(T t) {
        if (this.e == 0) {
            this.a.a(this, t);
        } else {
            this.a.a();
        }
    }

    public void onError(Throwable th) {
        this.a.a(this, th);
    }

    public void onComplete() {
        this.a.a(this);
    }

    public void dispose() {
        DisposableHelper.a((AtomicReference<b>) this);
    }

    public boolean isDisposed() {
        return DisposableHelper.a((b) get());
    }

    public boolean a() {
        return this.d;
    }

    public void b() {
        this.d = true;
    }

    public g<T> c() {
        return this.c;
    }
}
