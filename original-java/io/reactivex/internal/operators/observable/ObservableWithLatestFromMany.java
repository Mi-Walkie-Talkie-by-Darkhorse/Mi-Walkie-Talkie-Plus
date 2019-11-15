package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.f;
import io.reactivex.o;
import io.reactivex.q;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class ObservableWithLatestFromMany<T, R> extends a<T, R> {
    @Nullable
    final o<?>[] b;
    @Nullable
    final Iterable<? extends o<?>> c;
    @NonNull
    final g<? super Object[], R> d;

    static final class WithLatestFromObserver<T, R> extends AtomicInteger implements b, q<T> {
        private static final long serialVersionUID = 1577321883966341961L;
        final q<? super R> a;
        final g<? super Object[], R> b;
        final WithLatestInnerObserver[] c;
        final AtomicReferenceArray<Object> d;
        final AtomicReference<b> e;
        final AtomicThrowable f;
        volatile boolean g;

        WithLatestFromObserver(q<? super R> qVar, g<? super Object[], R> gVar, int i) {
            this.a = qVar;
            this.b = gVar;
            WithLatestInnerObserver[] withLatestInnerObserverArr = new WithLatestInnerObserver[i];
            for (int i2 = 0; i2 < i; i2++) {
                withLatestInnerObserverArr[i2] = new WithLatestInnerObserver(this, i2);
            }
            this.c = withLatestInnerObserverArr;
            this.d = new AtomicReferenceArray<>(i);
            this.e = new AtomicReference<>();
            this.f = new AtomicThrowable();
        }

        /* access modifiers changed from: 0000 */
        public void a(o<?>[] oVarArr, int i) {
            WithLatestInnerObserver[] withLatestInnerObserverArr = this.c;
            AtomicReference<b> atomicReference = this.e;
            for (int i2 = 0; i2 < i && !DisposableHelper.a((b) atomicReference.get()) && !this.g; i2++) {
                oVarArr[i2].subscribe(withLatestInnerObserverArr[i2]);
            }
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this.e, bVar);
        }

        public void onNext(T t) {
            int i = 0;
            if (!this.g) {
                AtomicReferenceArray<Object> atomicReferenceArray = this.d;
                int length = atomicReferenceArray.length();
                Object[] objArr = new Object[(length + 1)];
                objArr[0] = t;
                while (i < length) {
                    Object obj = atomicReferenceArray.get(i);
                    if (obj != null) {
                        objArr[i + 1] = obj;
                        i++;
                    } else {
                        return;
                    }
                }
                try {
                    f.a(this.a, io.reactivex.internal.functions.a.a(this.b.apply(objArr), "combiner returned a null value"), (AtomicInteger) this, this.f);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    dispose();
                    onError(th);
                }
            }
        }

        public void onError(Throwable th) {
            if (this.g) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.g = true;
            a(-1);
            f.a(this.a, th, (AtomicInteger) this, this.f);
        }

        public void onComplete() {
            if (!this.g) {
                this.g = true;
                a(-1);
                f.a(this.a, (AtomicInteger) this, this.f);
            }
        }

        public boolean isDisposed() {
            return DisposableHelper.a((b) this.e.get());
        }

        public void dispose() {
            DisposableHelper.a(this.e);
            for (WithLatestInnerObserver a2 : this.c) {
                a2.a();
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(int i, Object obj) {
            this.d.set(i, obj);
        }

        /* access modifiers changed from: 0000 */
        public void a(int i, Throwable th) {
            this.g = true;
            DisposableHelper.a(this.e);
            a(i);
            f.a(this.a, th, (AtomicInteger) this, this.f);
        }

        /* access modifiers changed from: 0000 */
        public void a(int i, boolean z) {
            if (!z) {
                this.g = true;
                a(i);
                f.a(this.a, (AtomicInteger) this, this.f);
            }
        }

        /* access modifiers changed from: 0000 */
        public void a(int i) {
            WithLatestInnerObserver[] withLatestInnerObserverArr = this.c;
            for (int i2 = 0; i2 < withLatestInnerObserverArr.length; i2++) {
                if (i2 != i) {
                    withLatestInnerObserverArr[i2].a();
                }
            }
        }
    }

    static final class WithLatestInnerObserver extends AtomicReference<b> implements q<Object> {
        private static final long serialVersionUID = 3256684027868224024L;
        final WithLatestFromObserver<?, ?> a;
        final int b;
        boolean c;

        WithLatestInnerObserver(WithLatestFromObserver<?, ?> withLatestFromObserver, int i) {
            this.a = withLatestFromObserver;
            this.b = i;
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this, bVar);
        }

        public void onNext(Object obj) {
            if (!this.c) {
                this.c = true;
            }
            this.a.a(this.b, obj);
        }

        public void onError(Throwable th) {
            this.a.a(this.b, th);
        }

        public void onComplete() {
            this.a.a(this.b, this.c);
        }

        public void a() {
            DisposableHelper.a((AtomicReference<b>) this);
        }
    }

    final class a implements g<T, R> {
        a() {
        }

        public R apply(T t) throws Exception {
            return io.reactivex.internal.functions.a.a(ObservableWithLatestFromMany.this.d.apply(new Object[]{t}), "The combiner returned a null value");
        }
    }

    public ObservableWithLatestFromMany(@NonNull o<T> oVar, @NonNull o<?>[] oVarArr, @NonNull g<? super Object[], R> gVar) {
        super(oVar);
        this.b = oVarArr;
        this.c = null;
        this.d = gVar;
    }

    public ObservableWithLatestFromMany(@NonNull o<T> oVar, @NonNull Iterable<? extends o<?>> iterable, @NonNull g<? super Object[], R> gVar) {
        super(oVar);
        this.b = null;
        this.c = iterable;
        this.d = gVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super R> qVar) {
        int length;
        o<?>[] oVarArr = this.b;
        int i = 0;
        if (oVarArr == null) {
            oVarArr = new o[8];
            try {
                for (o<?> oVar : this.c) {
                    if (i == oVarArr.length) {
                        oVarArr = (o[]) Arrays.copyOf(oVarArr, (i >> 1) + i);
                    }
                    int i2 = i + 1;
                    oVarArr[i] = oVar;
                    i = i2;
                }
                length = i;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.a(th, qVar);
                return;
            }
        } else {
            length = oVarArr.length;
        }
        if (length == 0) {
            new ay(this.a, new a()).subscribeActual(qVar);
            return;
        }
        WithLatestFromObserver withLatestFromObserver = new WithLatestFromObserver(qVar, this.d, length);
        qVar.onSubscribe(withLatestFromObserver);
        withLatestFromObserver.a(oVarArr, length);
        this.a.subscribe(withLatestFromObserver);
    }
}
