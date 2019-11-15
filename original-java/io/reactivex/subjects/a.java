package io.reactivex.subjects;

import io.reactivex.disposables.b;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a.C0092a;
import io.reactivex.q;

/* compiled from: SerializedSubject */
final class a<T> extends b<T> implements C0092a<Object> {
    final b<T> a;
    boolean b;
    io.reactivex.internal.util.a<Object> c;
    volatile boolean d;

    a(b<T> bVar) {
        this.a = bVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(qVar);
    }

    public void onSubscribe(b bVar) {
        boolean z = true;
        if (!this.d) {
            synchronized (this) {
                if (!this.d) {
                    if (this.b) {
                        io.reactivex.internal.util.a<Object> aVar = this.c;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.c = aVar;
                        }
                        aVar.a(NotificationLite.a(bVar));
                        return;
                    }
                    this.b = true;
                    z = false;
                }
            }
        }
        if (z) {
            bVar.dispose();
            return;
        }
        this.a.onSubscribe(bVar);
        a();
    }

    public void onNext(T t) {
        if (!this.d) {
            synchronized (this) {
                if (!this.d) {
                    if (this.b) {
                        io.reactivex.internal.util.a<Object> aVar = this.c;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.c = aVar;
                        }
                        aVar.a(NotificationLite.a(t));
                        return;
                    }
                    this.b = true;
                    this.a.onNext(t);
                    a();
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0039, code lost:
        r2.a.onError(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x000f, code lost:
        if (r0 == false) goto L_0x0039;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0011, code lost:
        io.reactivex.d.a.a(r3);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onError(java.lang.Throwable r3) {
        /*
            r2 = this;
            r0 = 1
            boolean r1 = r2.d
            if (r1 == 0) goto L_0x0009
            io.reactivex.d.a.a(r3)
        L_0x0008:
            return
        L_0x0009:
            monitor-enter(r2)
            boolean r1 = r2.d     // Catch:{ all -> 0x0031 }
            if (r1 == 0) goto L_0x0015
        L_0x000e:
            monitor-exit(r2)     // Catch:{ all -> 0x0031 }
            if (r0 == 0) goto L_0x0039
            io.reactivex.d.a.a(r3)
            goto L_0x0008
        L_0x0015:
            r0 = 1
            r2.d = r0     // Catch:{ all -> 0x0031 }
            boolean r0 = r2.b     // Catch:{ all -> 0x0031 }
            if (r0 == 0) goto L_0x0034
            io.reactivex.internal.util.a<java.lang.Object> r0 = r2.c     // Catch:{ all -> 0x0031 }
            if (r0 != 0) goto L_0x0028
            io.reactivex.internal.util.a r0 = new io.reactivex.internal.util.a     // Catch:{ all -> 0x0031 }
            r1 = 4
            r0.<init>(r1)     // Catch:{ all -> 0x0031 }
            r2.c = r0     // Catch:{ all -> 0x0031 }
        L_0x0028:
            java.lang.Object r1 = io.reactivex.internal.util.NotificationLite.a(r3)     // Catch:{ all -> 0x0031 }
            r0.b(r1)     // Catch:{ all -> 0x0031 }
            monitor-exit(r2)     // Catch:{ all -> 0x0031 }
            goto L_0x0008
        L_0x0031:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0031 }
            throw r0
        L_0x0034:
            r0 = 0
            r1 = 1
            r2.b = r1     // Catch:{ all -> 0x0031 }
            goto L_0x000e
        L_0x0039:
            io.reactivex.subjects.b<T> r0 = r2.a
            r0.onError(r3)
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.subjects.a.onError(java.lang.Throwable):void");
    }

    public void onComplete() {
        if (!this.d) {
            synchronized (this) {
                if (!this.d) {
                    this.d = true;
                    if (this.b) {
                        io.reactivex.internal.util.a<Object> aVar = this.c;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.c = aVar;
                        }
                        aVar.a(NotificationLite.a());
                        return;
                    }
                    this.b = true;
                    this.a.onComplete();
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        io.reactivex.internal.util.a<Object> aVar;
        while (true) {
            synchronized (this) {
                aVar = this.c;
                if (aVar == null) {
                    this.b = false;
                    return;
                }
                this.c = null;
            }
            aVar.a((C0092a<? super T>) this);
        }
        while (true) {
        }
    }

    public boolean test(Object obj) {
        return NotificationLite.b(obj, this.a);
    }
}
