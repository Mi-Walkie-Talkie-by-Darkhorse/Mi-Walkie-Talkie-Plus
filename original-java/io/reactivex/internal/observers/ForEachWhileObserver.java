package io.reactivex.internal.observers;

import io.reactivex.b.a;
import io.reactivex.b.f;
import io.reactivex.b.p;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicReference;

public final class ForEachWhileObserver<T> extends AtomicReference<b> implements b, q<T> {
    private static final long serialVersionUID = -4403180040475402120L;
    final p<? super T> a;
    final f<? super Throwable> b;
    final a c;
    boolean d;

    public ForEachWhileObserver(p<? super T> pVar, f<? super Throwable> fVar, a aVar) {
        this.a = pVar;
        this.b = fVar;
        this.c = aVar;
    }

    public void onSubscribe(b bVar) {
        DisposableHelper.b(this, bVar);
    }

    public void onNext(T t) {
        if (!this.d) {
            try {
                if (!this.a.test(t)) {
                    dispose();
                    onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                onError(th);
            }
        }
    }

    public void onError(Throwable th) {
        if (this.d) {
            io.reactivex.d.a.a(th);
            return;
        }
        this.d = true;
        try {
            this.b.accept(th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.d.a.a((Throwable) new CompositeException(th, th2));
        }
    }

    public void onComplete() {
        if (!this.d) {
            this.d = true;
            try {
                this.c.a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.d.a.a(th);
            }
        }
    }

    public void dispose() {
        DisposableHelper.a((AtomicReference<b>) this);
    }

    public boolean isDisposed() {
        return DisposableHelper.a((b) get());
    }
}
