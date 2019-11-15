package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableZip<T, R> extends k<R> {
    final o<? extends T>[] a;
    final Iterable<? extends o<? extends T>> b;
    final g<? super Object[], ? extends R> c;
    final int d;
    final boolean e;

    static final class ZipCoordinator<T, R> extends AtomicInteger implements b {
        private static final long serialVersionUID = 2983708048395377667L;
        final q<? super R> a;
        final g<? super Object[], ? extends R> b;
        final a<T, R>[] c;
        final T[] d;
        final boolean e;
        volatile boolean f;

        ZipCoordinator(q<? super R> qVar, g<? super Object[], ? extends R> gVar, int i, boolean z) {
            this.a = qVar;
            this.b = gVar;
            this.c = new a[i];
            this.d = (Object[]) new Object[i];
            this.e = z;
        }

        public void a(o<? extends T>[] oVarArr, int i) {
            a<T, R>[] aVarArr = this.c;
            int length = aVarArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                aVarArr[i2] = new a<>(this, i);
            }
            lazySet(0);
            this.a.onSubscribe(this);
            for (int i3 = 0; i3 < length && !this.f; i3++) {
                oVarArr[i3].subscribe(aVarArr[i3]);
            }
        }

        public void dispose() {
            if (!this.f) {
                this.f = true;
                b();
                if (getAndIncrement() == 0) {
                    c();
                }
            }
        }

        public boolean isDisposed() {
            return this.f;
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            c();
            b();
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            for (a<T, R> a2 : this.c) {
                a2.a();
            }
        }

        /* access modifiers changed from: 0000 */
        public void c() {
            for (a<T, R> aVar : this.c) {
                aVar.b.c();
            }
        }

        public void d() {
            int i;
            if (getAndIncrement() == 0) {
                a<T, R>[] aVarArr = this.c;
                q<? super R> qVar = this.a;
                T[] tArr = this.d;
                boolean z = this.e;
                int i2 = 1;
                while (true) {
                    int i3 = 0;
                    int length = aVarArr.length;
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < length) {
                        a<T, R> aVar = aVarArr[i4];
                        if (tArr[i5] == null) {
                            boolean z2 = aVar.c;
                            T e_ = aVar.b.e_();
                            boolean z3 = e_ == null;
                            if (!a(z2, z3, qVar, z, aVar)) {
                                if (!z3) {
                                    tArr[i5] = e_;
                                    i = i3;
                                } else {
                                    i = i3 + 1;
                                }
                                i3 = i;
                            } else {
                                return;
                            }
                        } else if (aVar.c && !z) {
                            Throwable th = aVar.d;
                            if (th != null) {
                                a();
                                qVar.onError(th);
                                return;
                            }
                        }
                        i4++;
                        i5++;
                    }
                    if (i3 != 0) {
                        int addAndGet = addAndGet(-i2);
                        if (addAndGet != 0) {
                            i2 = addAndGet;
                        } else {
                            return;
                        }
                    } else {
                        try {
                            qVar.onNext(io.reactivex.internal.functions.a.a(this.b.apply(tArr.clone()), "The zipper returned a null value"));
                            Arrays.fill(tArr, null);
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            a();
                            qVar.onError(th2);
                            return;
                        }
                    }
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean a(boolean z, boolean z2, q<? super R> qVar, boolean z3, a<?, ?> aVar) {
            if (this.f) {
                a();
                return true;
            }
            if (z) {
                if (!z3) {
                    Throwable th = aVar.d;
                    if (th != null) {
                        a();
                        qVar.onError(th);
                        return true;
                    } else if (z2) {
                        a();
                        qVar.onComplete();
                        return true;
                    }
                } else if (z2) {
                    Throwable th2 = aVar.d;
                    a();
                    if (th2 != null) {
                        qVar.onError(th2);
                        return true;
                    }
                    qVar.onComplete();
                    return true;
                }
            }
            return false;
        }
    }

    static final class a<T, R> implements q<T> {
        final ZipCoordinator<T, R> a;
        final io.reactivex.internal.queue.a<T> b;
        volatile boolean c;
        Throwable d;
        final AtomicReference<b> e = new AtomicReference<>();

        a(ZipCoordinator<T, R> zipCoordinator, int i) {
            this.a = zipCoordinator;
            this.b = new io.reactivex.internal.queue.a<>(i);
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this.e, bVar);
        }

        public void onNext(T t) {
            this.b.a(t);
            this.a.d();
        }

        public void onError(Throwable th) {
            this.d = th;
            this.c = true;
            this.a.d();
        }

        public void onComplete() {
            this.c = true;
            this.a.d();
        }

        public void a() {
            DisposableHelper.a(this.e);
        }
    }

    public ObservableZip(o<? extends T>[] oVarArr, Iterable<? extends o<? extends T>> iterable, g<? super Object[], ? extends R> gVar, int i, boolean z) {
        this.a = oVarArr;
        this.b = iterable;
        this.c = gVar;
        this.d = i;
        this.e = z;
    }

    public void subscribeActual(q<? super R> qVar) {
        int i;
        o<? extends T>[] oVarArr;
        o<? extends T>[] oVarArr2 = this.a;
        if (oVarArr2 == null) {
            oVarArr2 = new k[8];
            i = 0;
            for (o<? extends T> oVar : this.b) {
                if (i == oVarArr2.length) {
                    oVarArr = new o[((i >> 2) + i)];
                    System.arraycopy(oVarArr2, 0, oVarArr, 0, i);
                } else {
                    oVarArr = oVarArr2;
                }
                int i2 = i + 1;
                oVarArr[i] = oVar;
                i = i2;
                oVarArr2 = oVarArr;
            }
        } else {
            i = oVarArr2.length;
        }
        if (i == 0) {
            EmptyDisposable.a(qVar);
        } else {
            new ZipCoordinator(qVar, this.c, i, this.e).a(oVarArr2, this.d);
        }
    }
}
