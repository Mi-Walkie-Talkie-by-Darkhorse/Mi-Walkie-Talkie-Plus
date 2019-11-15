package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import io.reactivex.observers.c;
import io.reactivex.q;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: BlockingObservableNext */
public final class d<T> implements Iterable<T> {
    final o<T> a;

    /* compiled from: BlockingObservableNext */
    static final class a<T> implements Iterator<T> {
        private final b<T> a;
        private final o<T> b;
        private T c;
        private boolean d = true;
        private boolean e = true;
        private Throwable f;
        private boolean g;

        a(o<T> oVar, b<T> bVar) {
            this.b = oVar;
            this.a = bVar;
        }

        public boolean hasNext() {
            if (this.f != null) {
                throw ExceptionHelper.a(this.f);
            } else if (!this.d) {
                return false;
            } else {
                if (!this.e || a()) {
                    return true;
                }
                return false;
            }
        }

        private boolean a() {
            if (!this.g) {
                this.g = true;
                this.a.b();
                new ba(this.b).subscribe((q<? super T>) this.a);
            }
            try {
                j a2 = this.a.a();
                if (a2.c()) {
                    this.e = false;
                    this.c = a2.d();
                    return true;
                }
                this.d = false;
                if (a2.a()) {
                    return false;
                }
                this.f = a2.e();
                throw ExceptionHelper.a(this.f);
            } catch (InterruptedException e2) {
                this.a.dispose();
                this.f = e2;
                throw ExceptionHelper.a((Throwable) e2);
            }
        }

        public T next() {
            if (this.f != null) {
                throw ExceptionHelper.a(this.f);
            } else if (hasNext()) {
                this.e = true;
                return this.c;
            } else {
                throw new NoSuchElementException("No more elements");
            }
        }

        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    /* compiled from: BlockingObservableNext */
    static final class b<T> extends c<j<T>> {
        final AtomicInteger a = new AtomicInteger();
        private final BlockingQueue<j<T>> b = new ArrayBlockingQueue(1);

        b() {
        }

        public void onComplete() {
        }

        public void onError(Throwable th) {
            io.reactivex.d.a.a(th);
        }

        /* renamed from: a */
        public void onNext(j<T> jVar) {
            if (this.a.getAndSet(0) == 1 || !jVar.c()) {
                while (!this.b.offer(jVar)) {
                    j<T> jVar2 = (j) this.b.poll();
                    if (jVar2 != null && !jVar2.c()) {
                        jVar = jVar2;
                    }
                }
            }
        }

        public j<T> a() throws InterruptedException {
            b();
            io.reactivex.internal.util.c.a();
            return (j) this.b.take();
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            this.a.set(1);
        }
    }

    public d(o<T> oVar) {
        this.a = oVar;
    }

    public Iterator<T> iterator() {
        return new a(this.a, new b());
    }
}
