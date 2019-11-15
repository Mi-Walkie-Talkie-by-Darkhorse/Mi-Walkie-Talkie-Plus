package io.reactivex.observers;

import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;
import io.reactivex.q;

/* compiled from: SerializedObserver */
public final class e<T> implements b, q<T> {
    final q<? super T> a;
    final boolean b;
    b c;
    boolean d;
    a<Object> e;
    volatile boolean f;

    public e(@NonNull q<? super T> qVar) {
        this(qVar, false);
    }

    public e(@NonNull q<? super T> qVar, boolean z) {
        this.a = qVar;
        this.b = z;
    }

    public void onSubscribe(@NonNull b bVar) {
        if (DisposableHelper.a(this.c, bVar)) {
            this.c = bVar;
            this.a.onSubscribe(this);
        }
    }

    public void dispose() {
        this.c.dispose();
    }

    public boolean isDisposed() {
        return this.c.isDisposed();
    }

    public void onNext(@NonNull T t) {
        if (!this.f) {
            if (t == null) {
                this.c.dispose();
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            synchronized (this) {
                if (!this.f) {
                    if (this.d) {
                        a<Object> aVar = this.e;
                        if (aVar == null) {
                            aVar = new a<>(4);
                            this.e = aVar;
                        }
                        aVar.a(NotificationLite.a(t));
                        return;
                    }
                    this.d = true;
                    this.a.onNext(t);
                    a();
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0044, code lost:
        r3.a.onError(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x000f, code lost:
        if (r0 == false) goto L_0x0044;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0011, code lost:
        io.reactivex.d.a.a(r4);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onError(@io.reactivex.annotations.NonNull java.lang.Throwable r4) {
        /*
            r3 = this;
            r0 = 1
            boolean r1 = r3.f
            if (r1 == 0) goto L_0x0009
            io.reactivex.d.a.a(r4)
        L_0x0008:
            return
        L_0x0009:
            monitor-enter(r3)
            boolean r1 = r3.f     // Catch:{ all -> 0x0035 }
            if (r1 == 0) goto L_0x0015
        L_0x000e:
            monitor-exit(r3)     // Catch:{ all -> 0x0035 }
            if (r0 == 0) goto L_0x0044
            io.reactivex.d.a.a(r4)
            goto L_0x0008
        L_0x0015:
            boolean r0 = r3.d     // Catch:{ all -> 0x0035 }
            if (r0 == 0) goto L_0x003c
            r0 = 1
            r3.f = r0     // Catch:{ all -> 0x0035 }
            io.reactivex.internal.util.a<java.lang.Object> r0 = r3.e     // Catch:{ all -> 0x0035 }
            if (r0 != 0) goto L_0x0028
            io.reactivex.internal.util.a r0 = new io.reactivex.internal.util.a     // Catch:{ all -> 0x0035 }
            r1 = 4
            r0.<init>(r1)     // Catch:{ all -> 0x0035 }
            r3.e = r0     // Catch:{ all -> 0x0035 }
        L_0x0028:
            java.lang.Object r1 = io.reactivex.internal.util.NotificationLite.a(r4)     // Catch:{ all -> 0x0035 }
            boolean r2 = r3.b     // Catch:{ all -> 0x0035 }
            if (r2 == 0) goto L_0x0038
            r0.a(r1)     // Catch:{ all -> 0x0035 }
        L_0x0033:
            monitor-exit(r3)     // Catch:{ all -> 0x0035 }
            goto L_0x0008
        L_0x0035:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x0035 }
            throw r0
        L_0x0038:
            r0.b(r1)     // Catch:{ all -> 0x0035 }
            goto L_0x0033
        L_0x003c:
            r0 = 1
            r3.f = r0     // Catch:{ all -> 0x0035 }
            r0 = 1
            r3.d = r0     // Catch:{ all -> 0x0035 }
            r0 = 0
            goto L_0x000e
        L_0x0044:
            io.reactivex.q<? super T> r0 = r3.a
            r0.onError(r4)
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.observers.e.onError(java.lang.Throwable):void");
    }

    public void onComplete() {
        if (!this.f) {
            synchronized (this) {
                if (!this.f) {
                    if (this.d) {
                        a<Object> aVar = this.e;
                        if (aVar == null) {
                            aVar = new a<>(4);
                            this.e = aVar;
                        }
                        aVar.a(NotificationLite.a());
                        return;
                    }
                    this.f = true;
                    this.d = true;
                    this.a.onComplete();
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        a<Object> aVar;
        do {
            synchronized (this) {
                aVar = this.e;
                if (aVar == null) {
                    this.d = false;
                    return;
                }
                this.e = null;
            }
        } while (!aVar.a(this.a));
    }
}
