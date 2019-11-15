package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.observers.c;
import io.reactivex.observers.e;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableDebounce */
public final class r<T, U> extends a<T, T> {
    final g<? super T, ? extends o<U>> b;

    /* compiled from: ObservableDebounce */
    static final class a<T, U> implements b, q<T> {
        final q<? super T> a;
        final g<? super T, ? extends o<U>> b;
        b c;
        final AtomicReference<b> d = new AtomicReference<>();
        volatile long e;
        boolean f;

        /* renamed from: io.reactivex.internal.operators.observable.r$a$a reason: collision with other inner class name */
        /* compiled from: ObservableDebounce */
        static final class C0086a<T, U> extends c<U> {
            final a<T, U> a;
            final long b;
            final T c;
            boolean d;
            final AtomicBoolean e = new AtomicBoolean();

            C0086a(a<T, U> aVar, long j, T t) {
                this.a = aVar;
                this.b = j;
                this.c = t;
            }

            public void onNext(U u) {
                if (!this.d) {
                    this.d = true;
                    dispose();
                    a();
                }
            }

            /* access modifiers changed from: 0000 */
            public void a() {
                if (this.e.compareAndSet(false, true)) {
                    this.a.a(this.b, this.c);
                }
            }

            public void onError(Throwable th) {
                if (this.d) {
                    io.reactivex.d.a.a(th);
                    return;
                }
                this.d = true;
                this.a.onError(th);
            }

            public void onComplete() {
                if (!this.d) {
                    this.d = true;
                    a();
                }
            }
        }

        a(q<? super T> qVar, g<? super T, ? extends o<U>> gVar) {
            this.a = qVar;
            this.b = gVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (!this.f) {
                long j = 1 + this.e;
                this.e = j;
                b bVar = (b) this.d.get();
                if (bVar != null) {
                    bVar.dispose();
                }
                try {
                    o oVar = (o) io.reactivex.internal.functions.a.a(this.b.apply(t), "The ObservableSource supplied is null");
                    C0086a aVar = new C0086a(this, j, t);
                    if (this.d.compareAndSet(bVar, aVar)) {
                        oVar.subscribe(aVar);
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    dispose();
                    this.a.onError(th);
                }
            }
        }

        public void onError(Throwable th) {
            DisposableHelper.a(this.d);
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.f) {
                this.f = true;
                b bVar = (b) this.d.get();
                if (bVar != DisposableHelper.DISPOSED) {
                    ((C0086a) bVar).a();
                    DisposableHelper.a(this.d);
                    this.a.onComplete();
                }
            }
        }

        public void dispose() {
            this.c.dispose();
            DisposableHelper.a(this.d);
        }

        public boolean isDisposed() {
            return this.c.isDisposed();
        }

        /* access modifiers changed from: 0000 */
        public void a(long j, T t) {
            if (j == this.e) {
                this.a.onNext(t);
            }
        }
    }

    public r(o<T> oVar, g<? super T, ? extends o<U>> gVar) {
        super(oVar);
        this.b = gVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(new e(qVar), this.b));
    }
}
