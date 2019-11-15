package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.d.a;
import io.reactivex.disposables.b;
import io.reactivex.internal.a.f;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.o;
import io.reactivex.q;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableFlatMap<T, U> extends a<T, U> {
    final g<? super T, ? extends o<? extends U>> b;
    final boolean c;
    final int d;
    final int e;

    static final class InnerObserver<T, U> extends AtomicReference<b> implements q<U> {
        private static final long serialVersionUID = -4606175640614850599L;
        final long a;
        final MergeObserver<T, U> b;
        volatile boolean c;
        volatile io.reactivex.internal.a.g<U> d;
        int e;

        InnerObserver(MergeObserver<T, U> mergeObserver, long j) {
            this.a = j;
            this.b = mergeObserver;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.b(this, bVar) && (bVar instanceof io.reactivex.internal.a.b)) {
                io.reactivex.internal.a.b bVar2 = (io.reactivex.internal.a.b) bVar;
                int a2 = bVar2.a(7);
                if (a2 == 1) {
                    this.e = a2;
                    this.d = bVar2;
                    this.c = true;
                    this.b.a();
                } else if (a2 == 2) {
                    this.e = a2;
                    this.d = bVar2;
                }
            }
        }

        public void onNext(U u) {
            if (this.e == 0) {
                this.b.a(u, this);
            } else {
                this.b.a();
            }
        }

        public void onError(Throwable th) {
            if (this.b.h.a(th)) {
                if (!this.b.c) {
                    this.b.d();
                }
                this.c = true;
                this.b.a();
                return;
            }
            a.a(th);
        }

        public void onComplete() {
            this.c = true;
            this.b.a();
        }

        public void a() {
            DisposableHelper.a((AtomicReference<b>) this);
        }
    }

    static final class MergeObserver<T, U> extends AtomicInteger implements b, q<T> {
        static final InnerObserver<?, ?>[] k = new InnerObserver[0];
        static final InnerObserver<?, ?>[] l = new InnerObserver[0];
        private static final long serialVersionUID = -2117620485640801370L;
        final q<? super U> a;
        final g<? super T, ? extends o<? extends U>> b;
        final boolean c;
        final int d;
        final int e;
        volatile f<U> f;
        volatile boolean g;
        final AtomicThrowable h = new AtomicThrowable();
        volatile boolean i;
        final AtomicReference<InnerObserver<?, ?>[]> j;
        b m;
        long n;
        long o;
        int p;
        Queue<o<? extends U>> q;
        int r;

        MergeObserver(q<? super U> qVar, g<? super T, ? extends o<? extends U>> gVar, boolean z, int i2, int i3) {
            this.a = qVar;
            this.b = gVar;
            this.c = z;
            this.d = i2;
            this.e = i3;
            if (i2 != Integer.MAX_VALUE) {
                this.q = new ArrayDeque(i2);
            }
            this.j = new AtomicReference<>(k);
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.m, bVar)) {
                this.m = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (!this.g) {
                try {
                    o oVar = (o) io.reactivex.internal.functions.a.a(this.b.apply(t), "The mapper returned a null ObservableSource");
                    if (this.d != Integer.MAX_VALUE) {
                        synchronized (this) {
                            if (this.r == this.d) {
                                this.q.offer(oVar);
                                return;
                            }
                            this.r++;
                        }
                    }
                    a(oVar);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.m.dispose();
                    onError(th);
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(o<? extends U> oVar) {
            o<? extends U> oVar2 = oVar;
            while (oVar2 instanceof Callable) {
                a((Callable) oVar2);
                if (this.d != Integer.MAX_VALUE) {
                    synchronized (this) {
                        oVar2 = (o) this.q.poll();
                        if (oVar2 == null) {
                            this.r--;
                            return;
                        }
                    }
                } else {
                    return;
                }
            }
            long j2 = this.n;
            this.n = 1 + j2;
            InnerObserver innerObserver = new InnerObserver(this, j2);
            if (a(innerObserver)) {
                oVar2.subscribe(innerObserver);
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean a(InnerObserver<T, U> innerObserver) {
            InnerObserver<?, ?>[] innerObserverArr;
            InnerObserver[] innerObserverArr2;
            do {
                innerObserverArr = (InnerObserver[]) this.j.get();
                if (innerObserverArr == l) {
                    innerObserver.a();
                    return false;
                }
                int length = innerObserverArr.length;
                innerObserverArr2 = new InnerObserver[(length + 1)];
                System.arraycopy(innerObserverArr, 0, innerObserverArr2, 0, length);
                innerObserverArr2[length] = innerObserver;
            } while (!this.j.compareAndSet(innerObserverArr, innerObserverArr2));
            return true;
        }

        /* access modifiers changed from: 0000 */
        public void b(InnerObserver<T, U> innerObserver) {
            InnerObserver<T, U>[] innerObserverArr;
            InnerObserver<?, ?>[] innerObserverArr2;
            do {
                innerObserverArr = (InnerObserver[]) this.j.get();
                int length = innerObserverArr.length;
                if (length != 0) {
                    int i2 = -1;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length) {
                            break;
                        } else if (innerObserverArr[i3] == innerObserver) {
                            i2 = i3;
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (i2 < 0) {
                        return;
                    }
                    if (length == 1) {
                        innerObserverArr2 = k;
                    } else {
                        innerObserverArr2 = new InnerObserver[(length - 1)];
                        System.arraycopy(innerObserverArr, 0, innerObserverArr2, 0, i2);
                        System.arraycopy(innerObserverArr, i2 + 1, innerObserverArr2, i2, (length - i2) - 1);
                    }
                } else {
                    return;
                }
            } while (!this.j.compareAndSet(innerObserverArr, innerObserverArr2));
        }

        /* access modifiers changed from: 0000 */
        public void a(Callable<? extends U> callable) {
            try {
                Object call = callable.call();
                if (call != null) {
                    if (get() != 0 || !compareAndSet(0, 1)) {
                        f<U> fVar = this.f;
                        if (fVar == null) {
                            if (this.d == Integer.MAX_VALUE) {
                                fVar = new io.reactivex.internal.queue.a<>(this.e);
                            } else {
                                fVar = new SpscArrayQueue<>(this.d);
                            }
                            this.f = fVar;
                        }
                        if (!fVar.a(call)) {
                            onError(new IllegalStateException("Scalar queue full?!"));
                            return;
                        } else if (getAndIncrement() != 0) {
                            return;
                        }
                    } else {
                        this.a.onNext(call);
                        if (decrementAndGet() == 0) {
                            return;
                        }
                    }
                    b();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.h.a(th);
                a();
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(U u, InnerObserver<T, U> innerObserver) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                io.reactivex.internal.a.g gVar = innerObserver.d;
                if (gVar == null) {
                    gVar = new io.reactivex.internal.queue.a(this.e);
                    innerObserver.d = gVar;
                }
                gVar.a(u);
                if (getAndIncrement() != 0) {
                    return;
                }
            } else {
                this.a.onNext(u);
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            b();
        }

        public void onError(Throwable th) {
            if (this.g) {
                a.a(th);
            } else if (this.h.a(th)) {
                this.g = true;
                a();
            } else {
                a.a(th);
            }
        }

        public void onComplete() {
            if (!this.g) {
                this.g = true;
                a();
            }
        }

        public void dispose() {
            if (!this.i) {
                this.i = true;
                if (d()) {
                    Throwable a2 = this.h.a();
                    if (a2 != null && a2 != ExceptionHelper.a) {
                        a.a(a2);
                    }
                }
            }
        }

        public boolean isDisposed() {
            return this.i;
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        /* access modifiers changed from: 0000 */
        /* JADX WARNING: Code restructure failed: missing block: B:62:0x00ba, code lost:
            if (r11 != null) goto L_0x0082;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void b() {
            /*
                r14 = this;
                r2 = 1
                r4 = 0
                io.reactivex.q<? super U> r7 = r14.a
                r1 = r2
            L_0x0005:
                boolean r0 = r14.c()
                if (r0 == 0) goto L_0x000c
            L_0x000b:
                return
            L_0x000c:
                io.reactivex.internal.a.f<U> r0 = r14.f
                if (r0 == 0) goto L_0x001e
            L_0x0010:
                boolean r3 = r14.c()
                if (r3 != 0) goto L_0x000b
                java.lang.Object r3 = r0.e_()
                if (r3 != 0) goto L_0x0047
                if (r3 != 0) goto L_0x0010
            L_0x001e:
                boolean r3 = r14.g
                io.reactivex.internal.a.f<U> r5 = r14.f
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.observable.ObservableFlatMap$InnerObserver<?, ?>[]> r0 = r14.j
                java.lang.Object r0 = r0.get()
                io.reactivex.internal.operators.observable.ObservableFlatMap$InnerObserver[] r0 = (io.reactivex.internal.operators.observable.ObservableFlatMap.InnerObserver[]) r0
                int r8 = r0.length
                if (r3 == 0) goto L_0x004f
                if (r5 == 0) goto L_0x0035
                boolean r3 = r5.b()
                if (r3 == 0) goto L_0x004f
            L_0x0035:
                if (r8 != 0) goto L_0x004f
                io.reactivex.internal.util.AtomicThrowable r0 = r14.h
                java.lang.Throwable r0 = r0.a()
                java.lang.Throwable r1 = io.reactivex.internal.util.ExceptionHelper.a
                if (r0 == r1) goto L_0x000b
                if (r0 != 0) goto L_0x004b
                r7.onComplete()
                goto L_0x000b
            L_0x0047:
                r7.onNext(r3)
                goto L_0x0010
            L_0x004b:
                r7.onError(r0)
                goto L_0x000b
            L_0x004f:
                if (r8 == 0) goto L_0x011a
                long r10 = r14.o
                int r3 = r14.p
                if (r8 <= r3) goto L_0x005f
                r5 = r0[r3]
                long r12 = r5.a
                int r5 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1))
                if (r5 == 0) goto L_0x0075
            L_0x005f:
                if (r8 > r3) goto L_0x0062
                r3 = r4
            L_0x0062:
                r5 = r4
            L_0x0063:
                if (r5 >= r8) goto L_0x006d
                r6 = r0[r3]
                long r12 = r6.a
                int r6 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1))
                if (r6 != 0) goto L_0x00ac
            L_0x006d:
                r14.p = r3
                r5 = r0[r3]
                long r10 = r5.a
                r14.o = r10
            L_0x0075:
                r5 = r3
                r6 = r4
                r3 = r4
            L_0x0078:
                if (r3 >= r8) goto L_0x00e1
                boolean r9 = r14.c()
                if (r9 != 0) goto L_0x000b
                r9 = r0[r5]
            L_0x0082:
                boolean r10 = r14.c()
                if (r10 != 0) goto L_0x000b
                io.reactivex.internal.a.g<U> r10 = r9.d
                if (r10 != 0) goto L_0x00b4
            L_0x008c:
                boolean r10 = r9.c
                io.reactivex.internal.a.g<U> r11 = r9.d
                if (r10 == 0) goto L_0x00a4
                if (r11 == 0) goto L_0x009a
                boolean r10 = r11.b()
                if (r10 == 0) goto L_0x00a4
            L_0x009a:
                r14.b(r9)
                boolean r6 = r14.c()
                if (r6 != 0) goto L_0x000b
                r6 = r2
            L_0x00a4:
                int r5 = r5 + 1
                if (r5 != r8) goto L_0x00a9
                r5 = r4
            L_0x00a9:
                int r3 = r3 + 1
                goto L_0x0078
            L_0x00ac:
                int r3 = r3 + 1
                if (r3 != r8) goto L_0x00b1
                r3 = r4
            L_0x00b1:
                int r5 = r5 + 1
                goto L_0x0063
            L_0x00b4:
                java.lang.Object r11 = r10.e_()     // Catch:{ Throwable -> 0x00bd }
                if (r11 != 0) goto L_0x00d6
                if (r11 != 0) goto L_0x0082
                goto L_0x008c
            L_0x00bd:
                r6 = move-exception
                io.reactivex.exceptions.a.b(r6)
                r9.a()
                io.reactivex.internal.util.AtomicThrowable r10 = r14.h
                r10.a(r6)
                boolean r6 = r14.c()
                if (r6 != 0) goto L_0x000b
                r14.b(r9)
                int r3 = r3 + 1
                r6 = r2
                goto L_0x00a9
            L_0x00d6:
                r7.onNext(r11)
                boolean r11 = r14.c()
                if (r11 == 0) goto L_0x00b4
                goto L_0x000b
            L_0x00e1:
                r14.p = r5
                r0 = r0[r5]
                long r8 = r0.a
                r14.o = r8
                r0 = r6
            L_0x00ea:
                if (r0 == 0) goto L_0x0110
                int r0 = r14.d
                r3 = 2147483647(0x7fffffff, float:NaN)
                if (r0 == r3) goto L_0x0005
                monitor-enter(r14)
                java.util.Queue<io.reactivex.o<? extends U>> r0 = r14.q     // Catch:{ all -> 0x0107 }
                java.lang.Object r0 = r0.poll()     // Catch:{ all -> 0x0107 }
                io.reactivex.o r0 = (io.reactivex.o) r0     // Catch:{ all -> 0x0107 }
                if (r0 != 0) goto L_0x010a
                int r0 = r14.r     // Catch:{ all -> 0x0107 }
                int r0 = r0 + -1
                r14.r = r0     // Catch:{ all -> 0x0107 }
                monitor-exit(r14)     // Catch:{ all -> 0x0107 }
                goto L_0x0005
            L_0x0107:
                r0 = move-exception
                monitor-exit(r14)     // Catch:{ all -> 0x0107 }
                throw r0
            L_0x010a:
                monitor-exit(r14)     // Catch:{ all -> 0x0107 }
                r14.a(r0)
                goto L_0x0005
            L_0x0110:
                int r0 = -r1
                int r0 = r14.addAndGet(r0)
                if (r0 == 0) goto L_0x000b
                r1 = r0
                goto L_0x0005
            L_0x011a:
                r0 = r4
                goto L_0x00ea
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableFlatMap.MergeObserver.b():void");
        }

        /* access modifiers changed from: 0000 */
        public boolean c() {
            if (this.i) {
                return true;
            }
            Throwable th = (Throwable) this.h.get();
            if (this.c || th == null) {
                return false;
            }
            d();
            Throwable a2 = this.h.a();
            if (a2 != ExceptionHelper.a) {
                this.a.onError(a2);
            }
            return true;
        }

        /* access modifiers changed from: 0000 */
        public boolean d() {
            this.m.dispose();
            if (((InnerObserver[]) this.j.get()) != l) {
                InnerObserver<?, ?>[] innerObserverArr = (InnerObserver[]) this.j.getAndSet(l);
                if (innerObserverArr != l) {
                    for (InnerObserver<?, ?> a2 : innerObserverArr) {
                        a2.a();
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public ObservableFlatMap(o<T> oVar, g<? super T, ? extends o<? extends U>> gVar, boolean z, int i, int i2) {
        super(oVar);
        this.b = gVar;
        this.c = z;
        this.d = i;
        this.e = i2;
    }

    public void subscribeActual(q<? super U> qVar) {
        if (!ObservableScalarXMap.a(this.a, qVar, this.b)) {
            this.a.subscribe(new MergeObserver(qVar, this.b, this.c, this.d, this.e));
        }
    }
}
