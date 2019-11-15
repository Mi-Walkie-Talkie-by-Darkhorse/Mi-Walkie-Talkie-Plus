package io.reactivex.internal.observers;

import io.reactivex.annotations.Nullable;
import io.reactivex.q;

public class DeferredScalarDisposable<T> extends BasicIntQueueDisposable<T> {
    private static final long serialVersionUID = -5502432239815349361L;
    protected final q<? super T> a;
    protected T b;

    public DeferredScalarDisposable(q<? super T> qVar) {
        this.a = qVar;
    }

    public final int a(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final void b(T t) {
        int i = get();
        if ((i & 54) == 0) {
            if (i == 8) {
                this.b = t;
                lazySet(16);
            } else {
                lazySet(2);
            }
            q<? super T> qVar = this.a;
            qVar.onNext(t);
            if (get() != 4) {
                qVar.onComplete();
            }
        }
    }

    @Nullable
    public final T e_() throws Exception {
        if (get() != 16) {
            return null;
        }
        T t = this.b;
        this.b = null;
        lazySet(32);
        return t;
    }

    public final boolean b() {
        return get() != 16;
    }

    public final void c() {
        lazySet(32);
        this.b = null;
    }

    public void dispose() {
        set(4);
        this.b = null;
    }

    public final boolean isDisposed() {
        return get() == 4;
    }
}
