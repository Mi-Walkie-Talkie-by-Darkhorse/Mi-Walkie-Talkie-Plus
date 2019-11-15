package io.reactivex.internal.operators.observable;

import io.reactivex.b.d;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.s;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableSequenceEqualSingle<T> extends s<Boolean> implements io.reactivex.internal.a.a<Boolean> {
    final o<? extends T> a;
    final o<? extends T> b;
    final d<? super T, ? super T> c;
    final int d;

    static final class EqualCoordinator<T> extends AtomicInteger implements b {
        private static final long serialVersionUID = -6178010334400373240L;
        final t<? super Boolean> a;
        final d<? super T, ? super T> b;
        final ArrayCompositeDisposable c = new ArrayCompositeDisposable(2);
        final o<? extends T> d;
        final o<? extends T> e;
        final a<T>[] f;
        volatile boolean g;
        T h;
        T i;

        EqualCoordinator(t<? super Boolean> tVar, int i2, o<? extends T> oVar, o<? extends T> oVar2, d<? super T, ? super T> dVar) {
            this.a = tVar;
            this.d = oVar;
            this.e = oVar2;
            this.b = dVar;
            a<T>[] aVarArr = new a[2];
            this.f = aVarArr;
            aVarArr[0] = new a<>(this, 0, i2);
            aVarArr[1] = new a<>(this, 1, i2);
        }

        /* access modifiers changed from: 0000 */
        public boolean a(b bVar, int i2) {
            return this.c.a(i2, bVar);
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            a<T>[] aVarArr = this.f;
            this.d.subscribe(aVarArr[0]);
            this.e.subscribe(aVarArr[1]);
        }

        public void dispose() {
            if (!this.g) {
                this.g = true;
                this.c.dispose();
                if (getAndIncrement() == 0) {
                    a<T>[] aVarArr = this.f;
                    aVarArr[0].b.c();
                    aVarArr[1].b.c();
                }
            }
        }

        public boolean isDisposed() {
            return this.g;
        }

        /* access modifiers changed from: 0000 */
        public void a(io.reactivex.internal.queue.a<T> aVar, io.reactivex.internal.queue.a<T> aVar2) {
            this.g = true;
            aVar.c();
            aVar2.c();
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            boolean z;
            if (getAndIncrement() == 0) {
                a<T>[] aVarArr = this.f;
                a<T> aVar = aVarArr[0];
                io.reactivex.internal.queue.a<T> aVar2 = aVar.b;
                a<T> aVar3 = aVarArr[1];
                io.reactivex.internal.queue.a<T> aVar4 = aVar3.b;
                int i2 = 1;
                while (!this.g) {
                    boolean z2 = aVar.d;
                    if (z2) {
                        Throwable th = aVar.e;
                        if (th != null) {
                            a(aVar2, aVar4);
                            this.a.onError(th);
                            return;
                        }
                    }
                    boolean z3 = aVar3.d;
                    if (z3) {
                        Throwable th2 = aVar3.e;
                        if (th2 != null) {
                            a(aVar2, aVar4);
                            this.a.onError(th2);
                            return;
                        }
                    }
                    if (this.h == null) {
                        this.h = aVar2.e_();
                    }
                    boolean z4 = this.h == null;
                    if (this.i == null) {
                        this.i = aVar4.e_();
                    }
                    if (this.i == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z2 && z3 && z4 && z) {
                        this.a.a(Boolean.valueOf(true));
                        return;
                    } else if (!z2 || !z3 || z4 == z) {
                        if (!z4 && !z) {
                            try {
                                if (!this.b.a(this.h, this.i)) {
                                    a(aVar2, aVar4);
                                    this.a.a(Boolean.valueOf(false));
                                    return;
                                }
                                this.h = null;
                                this.i = null;
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                a(aVar2, aVar4);
                                this.a.onError(th3);
                                return;
                            }
                        }
                        if (z4 || z) {
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        }
                    } else {
                        a(aVar2, aVar4);
                        this.a.a(Boolean.valueOf(false));
                        return;
                    }
                }
                aVar2.c();
                aVar4.c();
            }
        }
    }

    static final class a<T> implements q<T> {
        final EqualCoordinator<T> a;
        final io.reactivex.internal.queue.a<T> b;
        final int c;
        volatile boolean d;
        Throwable e;

        a(EqualCoordinator<T> equalCoordinator, int i, int i2) {
            this.a = equalCoordinator;
            this.c = i;
            this.b = new io.reactivex.internal.queue.a<>(i2);
        }

        public void onSubscribe(b bVar) {
            this.a.a(bVar, this.c);
        }

        public void onNext(T t) {
            this.b.a(t);
            this.a.b();
        }

        public void onError(Throwable th) {
            this.e = th;
            this.d = true;
            this.a.b();
        }

        public void onComplete() {
            this.d = true;
            this.a.b();
        }
    }

    public ObservableSequenceEqualSingle(o<? extends T> oVar, o<? extends T> oVar2, d<? super T, ? super T> dVar, int i) {
        this.a = oVar;
        this.b = oVar2;
        this.c = dVar;
        this.d = i;
    }

    public void b(t<? super Boolean> tVar) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(tVar, this.d, this.a, this.b, this.c);
        tVar.onSubscribe(equalCoordinator);
        equalCoordinator.a();
    }

    public k<Boolean> f_() {
        return io.reactivex.d.a.a((k<T>) new ObservableSequenceEqual<T>(this.a, this.b, this.c, this.d));
    }
}
