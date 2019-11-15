package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableCombineLatest<T, R> extends k<R> {
    final o<? extends T>[] a;
    final Iterable<? extends o<? extends T>> b;
    final g<? super Object[], ? extends R> c;
    final int d;
    final boolean e;

    static final class LatestCoordinator<T, R> extends AtomicInteger implements b {
        private static final long serialVersionUID = 8567835998786448817L;
        final q<? super R> a;
        final g<? super Object[], ? extends R> b;
        final a<T, R>[] c;
        final T[] d;
        final io.reactivex.internal.queue.a<Object> e;
        final boolean f;
        volatile boolean g;
        volatile boolean h;
        final AtomicThrowable i = new AtomicThrowable();
        int j;
        int k;

        LatestCoordinator(q<? super R> qVar, g<? super Object[], ? extends R> gVar, int i2, int i3, boolean z) {
            this.a = qVar;
            this.b = gVar;
            this.f = z;
            this.d = (Object[]) new Object[i2];
            this.c = new a[i2];
            this.e = new io.reactivex.internal.queue.a<>(i3);
        }

        public void a(o<? extends T>[] oVarArr) {
            a<T, R>[] aVarArr = this.c;
            int length = aVarArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                aVarArr[i2] = new a<>(this, i2);
            }
            lazySet(0);
            this.a.onSubscribe(this);
            for (int i3 = 0; i3 < length && !this.h && !this.g; i3++) {
                oVarArr[i3].subscribe(aVarArr[i3]);
            }
        }

        public void dispose() {
            if (!this.g) {
                this.g = true;
                a();
                if (getAndIncrement() == 0) {
                    b(this.e);
                }
            }
        }

        public boolean isDisposed() {
            return this.g;
        }

        /* access modifiers changed from: 0000 */
        public void a(io.reactivex.internal.queue.a<?> aVar) {
            b(aVar);
            a();
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            for (a<T, R> a2 : this.c) {
                a2.a();
            }
        }

        /* access modifiers changed from: 0000 */
        public void b(io.reactivex.internal.queue.a<?> aVar) {
            synchronized (this) {
                Arrays.fill(this.d, null);
            }
            aVar.c();
        }

        /* access modifiers changed from: 0000 */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x0042, code lost:
            if (r2 != false) goto L_0x0046;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0044, code lost:
            if (r9 != null) goto L_?;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x0046, code lost:
            b();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:40:?, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:41:?, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(T r9, int r10) {
            /*
                r8 = this;
                r0 = 0
                r1 = 1
                io.reactivex.internal.operators.observable.ObservableCombineLatest$a<T, R>[] r2 = r8.c
                r5 = r2[r10]
                monitor-enter(r8)
                boolean r2 = r8.g     // Catch:{ all -> 0x0060 }
                if (r2 == 0) goto L_0x000d
                monitor-exit(r8)     // Catch:{ all -> 0x0060 }
            L_0x000c:
                return
            L_0x000d:
                T[] r2 = r8.d     // Catch:{ all -> 0x0060 }
                int r6 = r2.length     // Catch:{ all -> 0x0060 }
                T[] r2 = r8.d     // Catch:{ all -> 0x0060 }
                r7 = r2[r10]     // Catch:{ all -> 0x0060 }
                int r2 = r8.j     // Catch:{ all -> 0x0060 }
                if (r7 != 0) goto L_0x001c
                int r2 = r2 + 1
                r8.j = r2     // Catch:{ all -> 0x0060 }
            L_0x001c:
                r4 = r2
                int r2 = r8.k     // Catch:{ all -> 0x0060 }
                if (r9 != 0) goto L_0x004a
                int r2 = r2 + 1
                r8.k = r2     // Catch:{ all -> 0x0060 }
                r3 = r2
            L_0x0026:
                if (r4 != r6) goto L_0x0050
                r2 = r1
            L_0x0029:
                if (r3 == r6) goto L_0x002f
                if (r9 != 0) goto L_0x0030
                if (r7 != 0) goto L_0x0030
            L_0x002f:
                r0 = r1
            L_0x0030:
                if (r0 != 0) goto L_0x0063
                if (r9 == 0) goto L_0x0052
                if (r2 == 0) goto L_0x0052
                io.reactivex.internal.queue.a<java.lang.Object> r0 = r8.e     // Catch:{ all -> 0x0060 }
                T[] r1 = r8.d     // Catch:{ all -> 0x0060 }
                java.lang.Object r1 = r1.clone()     // Catch:{ all -> 0x0060 }
                r0.a(r5, r1)     // Catch:{ all -> 0x0060 }
            L_0x0041:
                monitor-exit(r8)     // Catch:{ all -> 0x0060 }
                if (r2 != 0) goto L_0x0046
                if (r9 != 0) goto L_0x000c
            L_0x0046:
                r8.b()
                goto L_0x000c
            L_0x004a:
                T[] r3 = r8.d     // Catch:{ all -> 0x0060 }
                r3[r10] = r9     // Catch:{ all -> 0x0060 }
                r3 = r2
                goto L_0x0026
            L_0x0050:
                r2 = r0
                goto L_0x0029
            L_0x0052:
                if (r9 != 0) goto L_0x0041
                io.reactivex.internal.util.AtomicThrowable r0 = r8.i     // Catch:{ all -> 0x0060 }
                java.lang.Object r0 = r0.get()     // Catch:{ all -> 0x0060 }
                if (r0 == 0) goto L_0x0041
                r0 = 1
                r8.h = r0     // Catch:{ all -> 0x0060 }
                goto L_0x0041
            L_0x0060:
                r0 = move-exception
                monitor-exit(r8)     // Catch:{ all -> 0x0060 }
                throw r0
            L_0x0063:
                r0 = 1
                r8.h = r0     // Catch:{ all -> 0x0060 }
                goto L_0x0041
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableCombineLatest.LatestCoordinator.a(java.lang.Object, int):void");
        }

        /* access modifiers changed from: 0000 */
        /* JADX WARNING: Code restructure failed: missing block: B:11:0x0030, code lost:
            r0 = addAndGet(-r6);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0035, code lost:
            if (r0 == 0) goto L_0x0007;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:28:?, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void b() {
            /*
                r8 = this;
                r7 = 1
                int r0 = r8.getAndIncrement()
                if (r0 == 0) goto L_0x0008
            L_0x0007:
                return
            L_0x0008:
                io.reactivex.internal.queue.a<java.lang.Object> r4 = r8.e
                io.reactivex.q<? super R> r3 = r8.a
                boolean r5 = r8.f
                r6 = r7
            L_0x000f:
                boolean r1 = r8.h
                boolean r2 = r4.b()
                r0 = r8
                boolean r0 = r0.a(r1, r2, r3, r4, r5)
                if (r0 != 0) goto L_0x0007
            L_0x001c:
                boolean r1 = r8.h
                java.lang.Object r0 = r4.e_()
                io.reactivex.internal.operators.observable.ObservableCombineLatest$a r0 = (io.reactivex.internal.operators.observable.ObservableCombineLatest.a) r0
                if (r0 != 0) goto L_0x0039
                r2 = r7
            L_0x0027:
                r0 = r8
                boolean r0 = r0.a(r1, r2, r3, r4, r5)
                if (r0 != 0) goto L_0x0007
                if (r2 == 0) goto L_0x003b
                int r0 = -r6
                int r0 = r8.addAndGet(r0)
                if (r0 == 0) goto L_0x0007
                r6 = r0
                goto L_0x000f
            L_0x0039:
                r2 = 0
                goto L_0x0027
            L_0x003b:
                java.lang.Object r0 = r4.e_()
                java.lang.Object[] r0 = (java.lang.Object[]) r0
                java.lang.Object[] r0 = (java.lang.Object[]) r0
                io.reactivex.b.g<? super java.lang.Object[], ? extends R> r1 = r8.b     // Catch:{ Throwable -> 0x0053 }
                java.lang.Object r0 = r1.apply(r0)     // Catch:{ Throwable -> 0x0053 }
                java.lang.String r1 = "The combiner returned a null"
                java.lang.Object r0 = io.reactivex.internal.functions.a.a(r0, r1)     // Catch:{ Throwable -> 0x0053 }
                r3.onNext(r0)
                goto L_0x001c
            L_0x0053:
                r0 = move-exception
                io.reactivex.exceptions.a.b(r0)
                r8.g = r7
                r8.a(r4)
                r3.onError(r0)
                goto L_0x0007
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableCombineLatest.LatestCoordinator.b():void");
        }

        /* access modifiers changed from: 0000 */
        public boolean a(boolean z, boolean z2, q<?> qVar, io.reactivex.internal.queue.a<?> aVar, boolean z3) {
            if (this.g) {
                a(aVar);
                return true;
            }
            if (z) {
                if (z3) {
                    if (z2) {
                        a(aVar);
                        Throwable a2 = this.i.a();
                        if (a2 != null) {
                            qVar.onError(a2);
                        } else {
                            qVar.onComplete();
                        }
                        return true;
                    }
                } else if (((Throwable) this.i.get()) != null) {
                    a(aVar);
                    qVar.onError(this.i.a());
                    return true;
                } else if (z2) {
                    b(this.e);
                    qVar.onComplete();
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: 0000 */
        public void a(Throwable th) {
            if (!this.i.a(th)) {
                io.reactivex.d.a.a(th);
            }
        }
    }

    static final class a<T, R> implements q<T> {
        final LatestCoordinator<T, R> a;
        final int b;
        final AtomicReference<b> c = new AtomicReference<>();

        a(LatestCoordinator<T, R> latestCoordinator, int i) {
            this.a = latestCoordinator;
            this.b = i;
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this.c, bVar);
        }

        public void onNext(T t) {
            this.a.a(t, this.b);
        }

        public void onError(Throwable th) {
            this.a.a(th);
            this.a.a(null, this.b);
        }

        public void onComplete() {
            this.a.a(null, this.b);
        }

        public void a() {
            DisposableHelper.a(this.c);
        }
    }

    public ObservableCombineLatest(o<? extends T>[] oVarArr, Iterable<? extends o<? extends T>> iterable, g<? super Object[], ? extends R> gVar, int i, boolean z) {
        this.a = oVarArr;
        this.b = iterable;
        this.c = gVar;
        this.d = i;
        this.e = z;
    }

    public void subscribeActual(q<? super R> qVar) {
        int length;
        o<? extends T>[] oVarArr;
        o<? extends T>[] oVarArr2;
        o<? extends T>[] oVarArr3 = this.a;
        if (oVarArr3 == null) {
            o<? extends T>[] oVarArr4 = new k[8];
            length = 0;
            for (o<? extends T> oVar : this.b) {
                if (length == oVarArr4.length) {
                    oVarArr2 = new o[((length >> 2) + length)];
                    System.arraycopy(oVarArr4, 0, oVarArr2, 0, length);
                } else {
                    oVarArr2 = oVarArr4;
                }
                int i = length + 1;
                oVarArr2[length] = oVar;
                length = i;
                oVarArr4 = oVarArr2;
            }
            oVarArr = oVarArr4;
        } else {
            length = oVarArr3.length;
            oVarArr = oVarArr3;
        }
        if (length == 0) {
            EmptyDisposable.a(qVar);
            return;
        }
        new LatestCoordinator(qVar, this.c, length, this.d, this.e).a(oVarArr);
    }
}
