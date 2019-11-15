package io.reactivex.internal.observers;

import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;

/* compiled from: BasicFuseableObserver */
public abstract class a<T, R> implements b<R>, q<T> {
    protected final q<? super R> a;
    protected io.reactivex.disposables.b b;
    protected b<T> c;
    protected boolean d;
    protected int e;

    public a(q<? super R> qVar) {
        this.a = qVar;
    }

    public final void onSubscribe(io.reactivex.disposables.b bVar) {
        if (DisposableHelper.a(this.b, bVar)) {
            this.b = bVar;
            if (bVar instanceof b) {
                this.c = (b) bVar;
            }
            if (d()) {
                this.a.onSubscribe(this);
                e();
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean d() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void e() {
    }

    public void onError(Throwable th) {
        if (this.d) {
            io.reactivex.d.a.a(th);
            return;
        }
        this.d = true;
        this.a.onError(th);
    }

    /* access modifiers changed from: protected */
    public final void a(Throwable th) {
        io.reactivex.exceptions.a.b(th);
        this.b.dispose();
        onError(th);
    }

    public void onComplete() {
        if (!this.d) {
            this.d = true;
            this.a.onComplete();
        }
    }

    /* access modifiers changed from: protected */
    public final int b(int i) {
        b<T> bVar = this.c;
        if (bVar == null || (i & 4) != 0) {
            return 0;
        }
        int a2 = bVar.a(i);
        if (a2 == 0) {
            return a2;
        }
        this.e = a2;
        return a2;
    }

    public void dispose() {
        this.b.dispose();
    }

    public boolean isDisposed() {
        return this.b.isDisposed();
    }

    public boolean b() {
        return this.c.b();
    }

    public void c() {
        this.c.c();
    }

    public final boolean a(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
