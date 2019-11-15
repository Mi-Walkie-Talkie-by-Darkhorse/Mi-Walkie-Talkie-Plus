package io.reactivex.internal.operators.observable;

import io.reactivex.annotations.Experimental;
import io.reactivex.annotations.Nullable;
import io.reactivex.b.a;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.o;
import io.reactivex.q;

@Experimental
public final class ObservableDoFinally<T> extends a<T, T> {
    final a b;

    static final class DoFinallyObserver<T> extends BasicIntQueueDisposable<T> implements q<T> {
        private static final long serialVersionUID = 4109457741734051389L;
        final q<? super T> a;
        final a b;
        b c;
        io.reactivex.internal.a.b<T> d;
        boolean e;

        DoFinallyObserver(q<? super T> qVar, a aVar) {
            this.a = qVar;
            this.b = aVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                if (bVar instanceof io.reactivex.internal.a.b) {
                    this.d = (io.reactivex.internal.a.b) bVar;
                }
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            this.a.onError(th);
            d();
        }

        public void onComplete() {
            this.a.onComplete();
            d();
        }

        public void dispose() {
            this.c.dispose();
            d();
        }

        public boolean isDisposed() {
            return this.c.isDisposed();
        }

        public int a(int i) {
            boolean z = true;
            io.reactivex.internal.a.b<T> bVar = this.d;
            if (bVar == null || (i & 4) != 0) {
                return 0;
            }
            int a2 = bVar.a(i);
            if (a2 != 0) {
                if (a2 != 1) {
                    z = false;
                }
                this.e = z;
            }
            return a2;
        }

        public void c() {
            this.d.c();
        }

        public boolean b() {
            return this.d.b();
        }

        @Nullable
        public T e_() throws Exception {
            T e_ = this.d.e_();
            if (e_ == null && this.e) {
                d();
            }
            return e_;
        }

        /* access modifiers changed from: 0000 */
        public void d() {
            if (compareAndSet(0, 1)) {
                try {
                    this.b.a();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.d.a.a(th);
                }
            }
        }
    }

    public ObservableDoFinally(o<T> oVar, a aVar) {
        super(oVar);
        this.b = aVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new DoFinallyObserver(qVar, this.b));
    }
}
