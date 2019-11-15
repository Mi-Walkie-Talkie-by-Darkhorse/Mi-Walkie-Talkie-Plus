package io.reactivex.internal.operators.observable;

import io.reactivex.b.f;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservablePublish<T> extends io.reactivex.c.a<T> {
    final o<T> a;
    final AtomicReference<a<T>> b;
    final o<T> c;

    static final class InnerDisposable<T> extends AtomicReference<Object> implements io.reactivex.disposables.b {
        private static final long serialVersionUID = -1100270633763673112L;
        final q<? super T> a;

        InnerDisposable(q<? super T> qVar) {
            this.a = qVar;
        }

        public boolean isDisposed() {
            return get() == this;
        }

        public void dispose() {
            Object andSet = getAndSet(this);
            if (andSet != null && andSet != this) {
                ((a) andSet).b(this);
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(a<T> aVar) {
            if (!compareAndSet(null, aVar)) {
                aVar.b(this);
            }
        }
    }

    static final class a<T> implements io.reactivex.disposables.b, q<T> {
        static final InnerDisposable[] b = new InnerDisposable[0];
        static final InnerDisposable[] c = new InnerDisposable[0];
        final AtomicReference<a<T>> a;
        final AtomicReference<InnerDisposable<T>[]> d = new AtomicReference<>(b);
        final AtomicBoolean e;
        final AtomicReference<io.reactivex.disposables.b> f = new AtomicReference<>();

        a(AtomicReference<a<T>> atomicReference) {
            this.a = atomicReference;
            this.e = new AtomicBoolean();
        }

        public void dispose() {
            if (this.d.get() != c && ((InnerDisposable[]) this.d.getAndSet(c)) != c) {
                this.a.compareAndSet(this, null);
                DisposableHelper.a(this.f);
            }
        }

        public boolean isDisposed() {
            return this.d.get() == c;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.b(this.f, bVar);
        }

        public void onNext(T t) {
            for (InnerDisposable innerDisposable : (InnerDisposable[]) this.d.get()) {
                innerDisposable.a.onNext(t);
            }
        }

        public void onError(Throwable th) {
            this.a.compareAndSet(this, null);
            InnerDisposable[] innerDisposableArr = (InnerDisposable[]) this.d.getAndSet(c);
            if (innerDisposableArr.length != 0) {
                for (InnerDisposable innerDisposable : innerDisposableArr) {
                    innerDisposable.a.onError(th);
                }
                return;
            }
            io.reactivex.d.a.a(th);
        }

        public void onComplete() {
            this.a.compareAndSet(this, null);
            for (InnerDisposable innerDisposable : (InnerDisposable[]) this.d.getAndSet(c)) {
                innerDisposable.a.onComplete();
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean a(InnerDisposable<T> innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = (InnerDisposable[]) this.d.get();
                if (innerDisposableArr == c) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[(length + 1)];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
            } while (!this.d.compareAndSet(innerDisposableArr, innerDisposableArr2));
            return true;
        }

        /* access modifiers changed from: 0000 */
        public void b(InnerDisposable<T> innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = (InnerDisposable[]) this.d.get();
                int length = innerDisposableArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerDisposableArr[i2].equals(innerDisposable)) {
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
                        innerDisposableArr2 = b;
                    } else {
                        innerDisposableArr2 = new InnerDisposable[(length - 1)];
                        System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, i);
                        System.arraycopy(innerDisposableArr, i + 1, innerDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } while (!this.d.compareAndSet(innerDisposableArr, innerDisposableArr2));
        }
    }

    static final class b<T> implements o<T> {
        private final AtomicReference<a<T>> a;

        b(AtomicReference<a<T>> atomicReference) {
            this.a = atomicReference;
        }

        public void subscribe(q<? super T> qVar) {
            InnerDisposable innerDisposable = new InnerDisposable(qVar);
            qVar.onSubscribe(innerDisposable);
            while (true) {
                a aVar = (a) this.a.get();
                if (aVar == null || aVar.isDisposed()) {
                    a aVar2 = new a(this.a);
                    if (this.a.compareAndSet(aVar, aVar2)) {
                        aVar = aVar2;
                    } else {
                        continue;
                    }
                }
                if (aVar.a(innerDisposable)) {
                    innerDisposable.a(aVar);
                    return;
                }
            }
        }
    }

    public static <T> io.reactivex.c.a<T> a(o<T> oVar) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.d.a.a((io.reactivex.c.a<T>) new ObservablePublish<T>(new b(atomicReference), oVar, atomicReference));
    }

    private ObservablePublish(o<T> oVar, o<T> oVar2, AtomicReference<a<T>> atomicReference) {
        this.c = oVar;
        this.a = oVar2;
        this.b = atomicReference;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.c.subscribe(qVar);
    }

    public void a(f<? super io.reactivex.disposables.b> fVar) {
        a aVar;
        boolean z;
        while (true) {
            aVar = (a) this.b.get();
            if (aVar != null && !aVar.isDisposed()) {
                break;
            }
            a aVar2 = new a(this.b);
            if (this.b.compareAndSet(aVar, aVar2)) {
                aVar = aVar2;
                break;
            }
        }
        if (aVar.e.get() || !aVar.e.compareAndSet(false, true)) {
            z = false;
        } else {
            z = true;
        }
        try {
            fVar.accept(aVar);
            if (z) {
                this.a.subscribe(aVar);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.a(th);
        }
    }
}
