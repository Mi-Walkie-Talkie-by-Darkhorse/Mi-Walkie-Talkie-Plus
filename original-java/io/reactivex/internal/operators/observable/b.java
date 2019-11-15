package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.j;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.observers.c;
import io.reactivex.q;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: BlockingObservableLatest */
public final class b<T> implements Iterable<T> {
    final o<T> a;

    /* compiled from: BlockingObservableLatest */
    static final class a<T> extends c<j<T>> implements Iterator<T> {
        j<T> a;
        final Semaphore b = new Semaphore(0);
        final AtomicReference<j<T>> c = new AtomicReference<>();

        a() {
        }

        /* renamed from: a */
        public void onNext(j<T> jVar) {
            if (this.c.getAndSet(jVar) == null) {
                this.b.release();
            }
        }

        public void onError(Throwable th) {
            io.reactivex.d.a.a(th);
        }

        public void onComplete() {
        }

        public boolean hasNext() {
            if (this.a == null || !this.a.b()) {
                if (this.a == null) {
                    try {
                        io.reactivex.internal.util.c.a();
                        this.b.acquire();
                        j<T> jVar = (j) this.c.getAndSet(null);
                        this.a = jVar;
                        if (jVar.b()) {
                            throw ExceptionHelper.a(jVar.e());
                        }
                    } catch (InterruptedException e) {
                        dispose();
                        this.a = j.a((Throwable) e);
                        throw ExceptionHelper.a((Throwable) e);
                    }
                }
                return this.a.c();
            }
            throw ExceptionHelper.a(this.a.e());
        }

        public T next() {
            if (hasNext()) {
                T d = this.a.d();
                this.a = null;
                return d;
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public b(o<T> oVar) {
        this.a = oVar;
    }

    public Iterator<T> iterator() {
        a aVar = new a();
        k.wrap(this.a).materialize().subscribe((q<? super T>) aVar);
        return aVar;
    }
}
