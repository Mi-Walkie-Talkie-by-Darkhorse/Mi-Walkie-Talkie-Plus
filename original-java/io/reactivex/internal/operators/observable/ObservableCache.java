package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.g;
import io.reactivex.k;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableCache<T> extends a<T, T> {
    final a<T> b;
    final AtomicBoolean c = new AtomicBoolean();

    static final class ReplayDisposable<T> extends AtomicInteger implements b {
        private static final long serialVersionUID = 7058506693698832024L;
        final q<? super T> a;
        final a<T> b;
        Object[] c;
        int d;
        int e;
        volatile boolean f;

        ReplayDisposable(q<? super T> qVar, a<T> aVar) {
            this.a = qVar;
            this.b = aVar;
        }

        public boolean isDisposed() {
            return this.f;
        }

        public void dispose() {
            if (!this.f) {
                this.f = true;
                this.b.b(this);
            }
        }

        public void a() {
            if (getAndIncrement() == 0) {
                q<? super T> qVar = this.a;
                int i = 1;
                while (true) {
                    int i2 = i;
                    if (!this.f) {
                        int c2 = this.b.c();
                        if (c2 != 0) {
                            Object[] objArr = this.c;
                            if (objArr == null) {
                                objArr = this.b.b();
                                this.c = objArr;
                            }
                            int length = objArr.length - 1;
                            int i3 = this.e;
                            Object[] objArr2 = objArr;
                            int i4 = this.d;
                            while (i3 < c2) {
                                if (!this.f) {
                                    if (i4 == length) {
                                        objArr2 = (Object[]) objArr2[length];
                                        i4 = 0;
                                    }
                                    if (!NotificationLite.a(objArr2[i4], qVar)) {
                                        i4++;
                                        i3++;
                                    } else {
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            }
                            if (!this.f) {
                                this.e = i3;
                                this.d = i4;
                                this.c = objArr2;
                            } else {
                                return;
                            }
                        }
                        i = addAndGet(-i2);
                        if (i == 0) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }
    }

    static final class a<T> extends g implements q<T> {
        static final ReplayDisposable[] d = new ReplayDisposable[0];
        static final ReplayDisposable[] e = new ReplayDisposable[0];
        final k<? extends T> a;
        final SequentialDisposable b = new SequentialDisposable();
        final AtomicReference<ReplayDisposable<T>[]> c = new AtomicReference<>(d);
        volatile boolean f;
        boolean g;

        a(k<? extends T> kVar, int i) {
            super(i);
            this.a = kVar;
        }

        public boolean a(ReplayDisposable<T> replayDisposable) {
            ReplayDisposable[] replayDisposableArr;
            ReplayDisposable[] replayDisposableArr2;
            do {
                replayDisposableArr = (ReplayDisposable[]) this.c.get();
                if (replayDisposableArr == e) {
                    return false;
                }
                int length = replayDisposableArr.length;
                replayDisposableArr2 = new ReplayDisposable[(length + 1)];
                System.arraycopy(replayDisposableArr, 0, replayDisposableArr2, 0, length);
                replayDisposableArr2[length] = replayDisposable;
            } while (!this.c.compareAndSet(replayDisposableArr, replayDisposableArr2));
            return true;
        }

        public void b(ReplayDisposable<T> replayDisposable) {
            ReplayDisposable[] replayDisposableArr;
            ReplayDisposable[] replayDisposableArr2;
            do {
                replayDisposableArr = (ReplayDisposable[]) this.c.get();
                int length = replayDisposableArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (replayDisposableArr[i2].equals(replayDisposable)) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i < 0) {
                        return;
                    }
                    if (length == 1) {
                        replayDisposableArr2 = d;
                    } else {
                        replayDisposableArr2 = new ReplayDisposable[(length - 1)];
                        System.arraycopy(replayDisposableArr, 0, replayDisposableArr2, 0, i);
                        System.arraycopy(replayDisposableArr, i + 1, replayDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } while (!this.c.compareAndSet(replayDisposableArr, replayDisposableArr2));
        }

        public void onSubscribe(b bVar) {
            this.b.a(bVar);
        }

        public void a() {
            this.a.subscribe((q<? super T>) this);
            this.f = true;
        }

        public void onNext(T t) {
            if (!this.g) {
                a(NotificationLite.a(t));
                for (ReplayDisposable a2 : (ReplayDisposable[]) this.c.get()) {
                    a2.a();
                }
            }
        }

        public void onError(Throwable th) {
            if (!this.g) {
                this.g = true;
                a(NotificationLite.a(th));
                this.b.dispose();
                for (ReplayDisposable a2 : (ReplayDisposable[]) this.c.getAndSet(e)) {
                    a2.a();
                }
            }
        }

        public void onComplete() {
            if (!this.g) {
                this.g = true;
                a(NotificationLite.a());
                this.b.dispose();
                for (ReplayDisposable a2 : (ReplayDisposable[]) this.c.getAndSet(e)) {
                    a2.a();
                }
            }
        }
    }

    public static <T> k<T> a(k<T> kVar) {
        return a(kVar, 16);
    }

    public static <T> k<T> a(k<T> kVar, int i) {
        io.reactivex.internal.functions.a.a(i, "capacityHint");
        return io.reactivex.d.a.a((k<T>) new ObservableCache<T>(kVar, new a(kVar, i)));
    }

    private ObservableCache(k<T> kVar, a<T> aVar) {
        super(kVar);
        this.b = aVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        ReplayDisposable replayDisposable = new ReplayDisposable(qVar, this.b);
        qVar.onSubscribe(replayDisposable);
        this.b.a(replayDisposable);
        if (!this.c.get() && this.c.compareAndSet(false, true)) {
            this.b.a();
        }
        replayDisposable.a();
    }
}
