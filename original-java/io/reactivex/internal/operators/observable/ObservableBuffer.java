package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.o;
import io.reactivex.q;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ObservableBuffer<T, U extends Collection<? super T>> extends a<T, U> {
    final int b;
    final int c;
    final Callable<U> d;

    static final class BufferSkipObserver<T, U extends Collection<? super T>> extends AtomicBoolean implements b, q<T> {
        private static final long serialVersionUID = -8223395059921494546L;
        final q<? super U> a;
        final int b;
        final int c;
        final Callable<U> d;
        b e;
        final ArrayDeque<U> f = new ArrayDeque<>();
        long g;

        BufferSkipObserver(q<? super U> qVar, int i, int i2, Callable<U> callable) {
            this.a = qVar;
            this.b = i;
            this.c = i2;
            this.d = callable;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.e, bVar)) {
                this.e = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void dispose() {
            this.e.dispose();
        }

        public boolean isDisposed() {
            return this.e.isDisposed();
        }

        public void onNext(T t) {
            long j = this.g;
            this.g = 1 + j;
            if (j % ((long) this.c) == 0) {
                try {
                    this.f.offer((Collection) io.reactivex.internal.functions.a.a(this.d.call(), "The bufferSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."));
                } catch (Throwable th) {
                    this.f.clear();
                    this.e.dispose();
                    this.a.onError(th);
                    return;
                }
            }
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                Collection collection = (Collection) it.next();
                collection.add(t);
                if (this.b <= collection.size()) {
                    it.remove();
                    this.a.onNext(collection);
                }
            }
        }

        public void onError(Throwable th) {
            this.f.clear();
            this.a.onError(th);
        }

        public void onComplete() {
            while (!this.f.isEmpty()) {
                this.a.onNext(this.f.poll());
            }
            this.a.onComplete();
        }
    }

    static final class a<T, U extends Collection<? super T>> implements b, q<T> {
        final q<? super U> a;
        final int b;
        final Callable<U> c;
        U d;
        int e;
        b f;

        a(q<? super U> qVar, int i, Callable<U> callable) {
            this.a = qVar;
            this.b = i;
            this.c = callable;
        }

        /* access modifiers changed from: 0000 */
        public boolean a() {
            try {
                this.d = (Collection) io.reactivex.internal.functions.a.a(this.c.call(), "Empty buffer supplied");
                return true;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.d = null;
                if (this.f == null) {
                    EmptyDisposable.a(th, this.a);
                } else {
                    this.f.dispose();
                    this.a.onError(th);
                }
                return false;
            }
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.f, bVar)) {
                this.f = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void dispose() {
            this.f.dispose();
        }

        public boolean isDisposed() {
            return this.f.isDisposed();
        }

        public void onNext(T t) {
            U u = this.d;
            if (u != null) {
                u.add(t);
                int i = this.e + 1;
                this.e = i;
                if (i >= this.b) {
                    this.a.onNext(u);
                    this.e = 0;
                    a();
                }
            }
        }

        public void onError(Throwable th) {
            this.d = null;
            this.a.onError(th);
        }

        public void onComplete() {
            U u = this.d;
            this.d = null;
            if (u != null && !u.isEmpty()) {
                this.a.onNext(u);
            }
            this.a.onComplete();
        }
    }

    public ObservableBuffer(o<T> oVar, int i, int i2, Callable<U> callable) {
        super(oVar);
        this.b = i;
        this.c = i2;
        this.d = callable;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super U> qVar) {
        if (this.c == this.b) {
            a aVar = new a(qVar, this.b, this.d);
            if (aVar.a()) {
                this.a.subscribe(aVar);
                return;
            }
            return;
        }
        this.a.subscribe(new BufferSkipObserver(qVar, this.b, this.c, this.d));
    }
}
