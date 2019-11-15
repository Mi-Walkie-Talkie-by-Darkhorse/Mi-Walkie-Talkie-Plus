package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.observers.b;
import io.reactivex.k;
import io.reactivex.q;

/* compiled from: ObservableFromArray */
public final class aj<T> extends k<T> {
    final T[] a;

    /* compiled from: ObservableFromArray */
    static final class a<T> extends b<T> {
        final q<? super T> a;
        final T[] b;
        int c;
        boolean d;
        volatile boolean e;

        a(q<? super T> qVar, T[] tArr) {
            this.a = qVar;
            this.b = tArr;
        }

        public int a(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.d = true;
            return 1;
        }

        @Nullable
        public T e_() {
            int i = this.c;
            T[] tArr = this.b;
            if (i == tArr.length) {
                return null;
            }
            this.c = i + 1;
            return io.reactivex.internal.functions.a.a(tArr[i], "The array element is null");
        }

        public boolean b() {
            return this.c == this.b.length;
        }

        public void c() {
            this.c = this.b.length;
        }

        public void dispose() {
            this.e = true;
        }

        public boolean isDisposed() {
            return this.e;
        }

        /* access modifiers changed from: 0000 */
        public void d() {
            T[] tArr = this.b;
            int length = tArr.length;
            int i = 0;
            while (i < length && !isDisposed()) {
                T t = tArr[i];
                if (t == null) {
                    this.a.onError(new NullPointerException("The " + i + "th element is null"));
                    return;
                } else {
                    this.a.onNext(t);
                    i++;
                }
            }
            if (!isDisposed()) {
                this.a.onComplete();
            }
        }
    }

    public aj(T[] tArr) {
        this.a = tArr;
    }

    public void subscribeActual(q<? super T> qVar) {
        a aVar = new a(qVar, this.a);
        qVar.onSubscribe(aVar);
        if (!aVar.d) {
            aVar.d();
        }
    }
}
