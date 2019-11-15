package io.reactivex.internal.observers;

import io.reactivex.disposables.b;
import io.reactivex.internal.a.f;
import io.reactivex.internal.util.h;
import io.reactivex.q;

/* compiled from: QueueDrainObserver */
public abstract class k<T, U, V> extends m implements h<U, V>, q<T> {
    protected final q<? super V> a;
    /* access modifiers changed from: protected */
    public final f<U> b;
    /* access modifiers changed from: protected */
    public volatile boolean c;
    protected volatile boolean d;
    protected Throwable e;

    public k(q<? super V> qVar, f<U> fVar) {
        this.a = qVar;
        this.b = fVar;
    }

    public final boolean a() {
        return this.c;
    }

    public final boolean b() {
        return this.d;
    }

    public final boolean c() {
        return this.f.getAndIncrement() == 0;
    }

    public final boolean d() {
        return this.f.get() == 0 && this.f.compareAndSet(0, 1);
    }

    /* access modifiers changed from: protected */
    public final void a(U u, boolean z, b bVar) {
        q<? super V> qVar = this.a;
        f<U> fVar = this.b;
        if (this.f.get() != 0 || !this.f.compareAndSet(0, 1)) {
            fVar.a(u);
            if (!c()) {
                return;
            }
        } else {
            a(qVar, u);
            if (a(-1) == 0) {
                return;
            }
        }
        io.reactivex.internal.util.k.a(fVar, qVar, z, bVar, this);
    }

    /* access modifiers changed from: protected */
    public final void b(U u, boolean z, b bVar) {
        q<? super V> qVar = this.a;
        f<U> fVar = this.b;
        if (this.f.get() != 0 || !this.f.compareAndSet(0, 1)) {
            fVar.a(u);
            if (!c()) {
                return;
            }
        } else if (fVar.b()) {
            a(qVar, u);
            if (a(-1) == 0) {
                return;
            }
        } else {
            fVar.a(u);
        }
        io.reactivex.internal.util.k.a(fVar, qVar, z, bVar, this);
    }

    public final Throwable e() {
        return this.e;
    }

    public final int a(int i) {
        return this.f.addAndGet(i);
    }

    public void a(q<? super V> qVar, U u) {
    }
}
