package io.reactivex.internal.operators.observable;

import io.reactivex.a;
import io.reactivex.b.g;
import io.reactivex.c;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableFlatMapCompletableCompletable<T> extends a implements io.reactivex.internal.a.a<T> {
    final o<T> a;
    final g<? super T, ? extends c> b;
    final boolean c;

    static final class FlatMapCompletableMainObserver<T> extends AtomicInteger implements b, q<T> {
        private static final long serialVersionUID = 8443155186132538303L;
        final io.reactivex.b a;
        final AtomicThrowable b = new AtomicThrowable();
        final g<? super T, ? extends c> c;
        final boolean d;
        final io.reactivex.disposables.a e = new io.reactivex.disposables.a();
        b f;
        volatile boolean g;

        final class InnerObserver extends AtomicReference<b> implements io.reactivex.b, b {
            private static final long serialVersionUID = 8606673141535671828L;

            InnerObserver() {
            }

            public void onSubscribe(b bVar) {
                DisposableHelper.b(this, bVar);
            }

            public void onComplete() {
                FlatMapCompletableMainObserver.this.a(this);
            }

            public void onError(Throwable th) {
                FlatMapCompletableMainObserver.this.a(this, th);
            }

            public void dispose() {
                DisposableHelper.a((AtomicReference<b>) this);
            }

            public boolean isDisposed() {
                return DisposableHelper.a((b) get());
            }
        }

        FlatMapCompletableMainObserver(io.reactivex.b bVar, g<? super T, ? extends c> gVar, boolean z) {
            this.a = bVar;
            this.c = gVar;
            this.d = z;
            lazySet(1);
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.f, bVar)) {
                this.f = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            try {
                c cVar = (c) io.reactivex.internal.functions.a.a(this.c.apply(t), "The mapper returned a null CompletableSource");
                getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (!this.g && this.e.a((b) innerObserver)) {
                    cVar.a(innerObserver);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f.dispose();
                onError(th);
            }
        }

        public void onError(Throwable th) {
            if (!this.b.a(th)) {
                io.reactivex.d.a.a(th);
            } else if (!this.d) {
                dispose();
                if (getAndSet(0) > 0) {
                    this.a.onError(this.b.a());
                }
            } else if (decrementAndGet() == 0) {
                this.a.onError(this.b.a());
            }
        }

        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable a2 = this.b.a();
                if (a2 != null) {
                    this.a.onError(a2);
                } else {
                    this.a.onComplete();
                }
            }
        }

        public void dispose() {
            this.g = true;
            this.f.dispose();
            this.e.dispose();
        }

        public boolean isDisposed() {
            return this.f.isDisposed();
        }

        /* access modifiers changed from: 0000 */
        public void a(InnerObserver innerObserver) {
            this.e.c(innerObserver);
            onComplete();
        }

        /* access modifiers changed from: 0000 */
        public void a(InnerObserver innerObserver, Throwable th) {
            this.e.c(innerObserver);
            onError(th);
        }
    }

    public ObservableFlatMapCompletableCompletable(o<T> oVar, g<? super T, ? extends c> gVar, boolean z) {
        this.a = oVar;
        this.b = gVar;
        this.c = z;
    }

    /* access modifiers changed from: protected */
    public void b(io.reactivex.b bVar) {
        this.a.subscribe(new FlatMapCompletableMainObserver(bVar, this.b, this.c));
    }

    public k<T> f_() {
        return io.reactivex.d.a.a((k<T>) new ObservableFlatMapCompletable<T>(this.a, this.b, this.c));
    }
}
