package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.observers.e;
import io.reactivex.q;
import io.reactivex.r;
import io.reactivex.r.c;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableDebounceTimed<T> extends a<T, T> {
    final long b;
    final TimeUnit c;
    final r d;

    static final class DebounceEmitter<T> extends AtomicReference<b> implements b, Runnable {
        private static final long serialVersionUID = 6812032969491025141L;
        final T a;
        final long b;
        final a<T> c;
        final AtomicBoolean d = new AtomicBoolean();

        DebounceEmitter(T t, long j, a<T> aVar) {
            this.a = t;
            this.b = j;
            this.c = aVar;
        }

        public void run() {
            if (this.d.compareAndSet(false, true)) {
                this.c.a(this.b, this.a, this);
            }
        }

        public void dispose() {
            DisposableHelper.a((AtomicReference<b>) this);
        }

        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        public void a(b bVar) {
            DisposableHelper.c(this, bVar);
        }
    }

    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        final long b;
        final TimeUnit c;
        final c d;
        b e;
        final AtomicReference<b> f = new AtomicReference<>();
        volatile long g;
        boolean h;

        a(q<? super T> qVar, long j, TimeUnit timeUnit, c cVar) {
            this.a = qVar;
            this.b = j;
            this.c = timeUnit;
            this.d = cVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.e, bVar)) {
                this.e = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (!this.h) {
                long j = 1 + this.g;
                this.g = j;
                b bVar = (b) this.f.get();
                if (bVar != null) {
                    bVar.dispose();
                }
                DebounceEmitter debounceEmitter = new DebounceEmitter(t, j, this);
                if (this.f.compareAndSet(bVar, debounceEmitter)) {
                    debounceEmitter.a(this.d.a(debounceEmitter, this.b, this.c));
                }
            }
        }

        public void onError(Throwable th) {
            if (this.h) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.h = true;
            this.a.onError(th);
            this.d.dispose();
        }

        public void onComplete() {
            if (!this.h) {
                this.h = true;
                b bVar = (b) this.f.get();
                if (bVar != DisposableHelper.DISPOSED) {
                    DebounceEmitter debounceEmitter = (DebounceEmitter) bVar;
                    if (debounceEmitter != null) {
                        debounceEmitter.run();
                    }
                    this.a.onComplete();
                    this.d.dispose();
                }
            }
        }

        public void dispose() {
            this.e.dispose();
            this.d.dispose();
        }

        public boolean isDisposed() {
            return this.d.isDisposed();
        }

        /* access modifiers changed from: 0000 */
        public void a(long j, T t, DebounceEmitter<T> debounceEmitter) {
            if (j == this.g) {
                this.a.onNext(t);
                debounceEmitter.dispose();
            }
        }
    }

    public ObservableDebounceTimed(o<T> oVar, long j, TimeUnit timeUnit, r rVar) {
        super(oVar);
        this.b = j;
        this.c = timeUnit;
        this.d = rVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(new e(qVar), this.b, this.c, this.d.a()));
    }
}
