package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableDelaySubscriptionOther */
public final class u<T, U> extends k<T> {
    final o<? extends T> a;
    final o<U> b;

    /* compiled from: ObservableDelaySubscriptionOther */
    final class a implements q<U> {
        final SequentialDisposable a;
        final q<? super T> b;
        boolean c;

        /* renamed from: io.reactivex.internal.operators.observable.u$a$a reason: collision with other inner class name */
        /* compiled from: ObservableDelaySubscriptionOther */
        final class C0088a implements q<T> {
            C0088a() {
            }

            public void onSubscribe(b bVar) {
                a.this.a.a(bVar);
            }

            public void onNext(T t) {
                a.this.b.onNext(t);
            }

            public void onError(Throwable th) {
                a.this.b.onError(th);
            }

            public void onComplete() {
                a.this.b.onComplete();
            }
        }

        a(SequentialDisposable sequentialDisposable, q<? super T> qVar) {
            this.a = sequentialDisposable;
            this.b = qVar;
        }

        public void onSubscribe(b bVar) {
            this.a.a(bVar);
        }

        public void onNext(U u) {
            onComplete();
        }

        public void onError(Throwable th) {
            if (this.c) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.c = true;
            this.b.onError(th);
        }

        public void onComplete() {
            if (!this.c) {
                this.c = true;
                u.this.a.subscribe(new C0088a());
            }
        }
    }

    public u(o<? extends T> oVar, o<U> oVar2) {
        this.a = oVar;
        this.b = oVar2;
    }

    public void subscribeActual(q<? super T> qVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        qVar.onSubscribe(sequentialDisposable);
        this.b.subscribe(new a(sequentialDisposable, qVar));
    }
}
