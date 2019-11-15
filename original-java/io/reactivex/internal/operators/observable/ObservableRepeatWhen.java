package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.a;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.f;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.subjects.PublishSubject;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableRepeatWhen<T> extends a<T, T> {
    final g<? super k<Object>, ? extends o<?>> b;

    static final class RepeatWhenObserver<T> extends AtomicInteger implements b, q<T> {
        private static final long serialVersionUID = 802743776666017014L;
        final q<? super T> a;
        final AtomicInteger b = new AtomicInteger();
        final AtomicThrowable c = new AtomicThrowable();
        final io.reactivex.subjects.b<Object> d;
        final InnerRepeatObserver e = new InnerRepeatObserver<>();
        final AtomicReference<b> f = new AtomicReference<>();
        final o<T> g;
        volatile boolean h;

        final class InnerRepeatObserver extends AtomicReference<b> implements q<Object> {
            private static final long serialVersionUID = 3254781284376480842L;

            InnerRepeatObserver() {
            }

            public void onSubscribe(b bVar) {
                DisposableHelper.b(this, bVar);
            }

            public void onNext(Object obj) {
                RepeatWhenObserver.this.a();
            }

            public void onError(Throwable th) {
                RepeatWhenObserver.this.a(th);
            }

            public void onComplete() {
                RepeatWhenObserver.this.b();
            }
        }

        RepeatWhenObserver(q<? super T> qVar, io.reactivex.subjects.b<Object> bVar, o<T> oVar) {
            this.a = qVar;
            this.d = bVar;
            this.g = oVar;
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.c(this.f, bVar);
        }

        public void onNext(T t) {
            f.a(this.a, t, (AtomicInteger) this, this.c);
        }

        public void onError(Throwable th) {
            DisposableHelper.a((AtomicReference<b>) this.e);
            f.a(this.a, th, (AtomicInteger) this, this.c);
        }

        public void onComplete() {
            this.h = false;
            this.d.onNext(Integer.valueOf(0));
        }

        public boolean isDisposed() {
            return DisposableHelper.a((b) this.f.get());
        }

        public void dispose() {
            DisposableHelper.a(this.f);
            DisposableHelper.a((AtomicReference<b>) this.e);
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            c();
        }

        /* access modifiers changed from: 0000 */
        public void a(Throwable th) {
            DisposableHelper.a(this.f);
            f.a(this.a, th, (AtomicInteger) this, this.c);
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            DisposableHelper.a(this.f);
            f.a(this.a, (AtomicInteger) this, this.c);
        }

        /* access modifiers changed from: 0000 */
        public void c() {
            if (this.b.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.h) {
                        this.h = true;
                        this.g.subscribe(this);
                    }
                    if (this.b.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }
    }

    public ObservableRepeatWhen(o<T> oVar, g<? super k<Object>, ? extends o<?>> gVar) {
        super(oVar);
        this.b = gVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        io.reactivex.subjects.b b2 = PublishSubject.a().b();
        try {
            o oVar = (o) a.a(this.b.apply(b2), "The handler returned a null ObservableSource");
            RepeatWhenObserver repeatWhenObserver = new RepeatWhenObserver(qVar, b2, this.a);
            qVar.onSubscribe(repeatWhenObserver);
            oVar.subscribe(repeatWhenObserver.e);
            repeatWhenObserver.c();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.a(th, qVar);
        }
    }
}
