package io.reactivex.internal.operators.observable;

import io.reactivex.b.f;
import io.reactivex.disposables.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;

public final class ObservableRefCount<T> extends a<T, T> {
    final io.reactivex.c.a<? extends T> b;
    volatile io.reactivex.disposables.a c = new io.reactivex.disposables.a();
    final AtomicInteger d = new AtomicInteger();
    final ReentrantLock e = new ReentrantLock();

    final class ConnectionObserver extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b, q<T> {
        private static final long serialVersionUID = 3813126992133394324L;
        final q<? super T> a;
        final io.reactivex.disposables.a b;
        final io.reactivex.disposables.b c;

        ConnectionObserver(q<? super T> qVar, io.reactivex.disposables.a aVar, io.reactivex.disposables.b bVar) {
            this.a = qVar;
            this.b = aVar;
            this.c = bVar;
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            DisposableHelper.b(this, bVar);
        }

        public void onError(Throwable th) {
            a();
            this.a.onError(th);
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onComplete() {
            a();
            this.a.onComplete();
        }

        public void dispose() {
            DisposableHelper.a((AtomicReference<io.reactivex.disposables.b>) this);
            this.c.dispose();
        }

        public boolean isDisposed() {
            return DisposableHelper.a((io.reactivex.disposables.b) get());
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            ObservableRefCount.this.e.lock();
            try {
                if (ObservableRefCount.this.c == this.b) {
                    if (ObservableRefCount.this.b instanceof io.reactivex.disposables.b) {
                        ((io.reactivex.disposables.b) ObservableRefCount.this.b).dispose();
                    }
                    ObservableRefCount.this.c.dispose();
                    ObservableRefCount.this.c = new io.reactivex.disposables.a();
                    ObservableRefCount.this.d.set(0);
                }
            } finally {
                ObservableRefCount.this.e.unlock();
            }
        }
    }

    final class a implements f<io.reactivex.disposables.b> {
        private final q<? super T> b;
        private final AtomicBoolean c;

        a(q<? super T> qVar, AtomicBoolean atomicBoolean) {
            this.b = qVar;
            this.c = atomicBoolean;
        }

        /* renamed from: a */
        public void accept(io.reactivex.disposables.b bVar) {
            try {
                ObservableRefCount.this.c.a(bVar);
                ObservableRefCount.this.a(this.b, ObservableRefCount.this.c);
            } finally {
                ObservableRefCount.this.e.unlock();
                this.c.set(false);
            }
        }
    }

    final class b implements Runnable {
        private final io.reactivex.disposables.a b;

        b(io.reactivex.disposables.a aVar) {
            this.b = aVar;
        }

        public void run() {
            ObservableRefCount.this.e.lock();
            try {
                if (ObservableRefCount.this.c == this.b && ObservableRefCount.this.d.decrementAndGet() == 0) {
                    if (ObservableRefCount.this.b instanceof io.reactivex.disposables.b) {
                        ((io.reactivex.disposables.b) ObservableRefCount.this.b).dispose();
                    }
                    ObservableRefCount.this.c.dispose();
                    ObservableRefCount.this.c = new io.reactivex.disposables.a();
                }
            } finally {
                ObservableRefCount.this.e.unlock();
            }
        }
    }

    public ObservableRefCount(io.reactivex.c.a<T> aVar) {
        super(aVar);
        this.b = aVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.e.lock();
        if (this.d.incrementAndGet() == 1) {
            AtomicBoolean atomicBoolean = new AtomicBoolean(true);
            try {
                this.b.a(a(qVar, atomicBoolean));
            } finally {
                if (atomicBoolean.get()) {
                    this.e.unlock();
                }
            }
        } else {
            try {
                a(qVar, this.c);
            } finally {
                this.e.unlock();
            }
        }
    }

    private f<io.reactivex.disposables.b> a(q<? super T> qVar, AtomicBoolean atomicBoolean) {
        return new a(qVar, atomicBoolean);
    }

    /* access modifiers changed from: 0000 */
    public void a(q<? super T> qVar, io.reactivex.disposables.a aVar) {
        ConnectionObserver connectionObserver = new ConnectionObserver(qVar, aVar, a(aVar));
        qVar.onSubscribe(connectionObserver);
        this.b.subscribe((q<? super T>) connectionObserver);
    }

    private io.reactivex.disposables.b a(io.reactivex.disposables.a aVar) {
        return c.a(new b(aVar));
    }
}
