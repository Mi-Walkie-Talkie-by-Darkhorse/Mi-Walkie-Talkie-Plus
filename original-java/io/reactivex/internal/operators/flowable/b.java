package io.reactivex.internal.operators.flowable;

import io.reactivex.e;
import io.reactivex.k;
import io.reactivex.q;
import org.a.c;

/* compiled from: FlowableFromObservable */
public final class b<T> extends e<T> {
    private final k<T> b;

    /* compiled from: FlowableFromObservable */
    static class a<T> implements q<T>, c {
        private final org.a.b<? super T> a;
        private io.reactivex.disposables.b b;

        a(org.a.b<? super T> bVar) {
            this.a = bVar;
        }

        public void onComplete() {
            this.a.onComplete();
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            this.b = bVar;
            this.a.a(this);
        }

        public void a() {
            this.b.dispose();
        }

        public void a(long j) {
        }
    }

    public b(k<T> kVar) {
        this.b = kVar;
    }

    /* access modifiers changed from: protected */
    public void b(org.a.b<? super T> bVar) {
        this.b.subscribe((q<? super T>) new a<Object>(bVar));
    }
}
