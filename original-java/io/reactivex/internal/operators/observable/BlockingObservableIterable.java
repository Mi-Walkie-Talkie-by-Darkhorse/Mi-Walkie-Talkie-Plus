package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.a;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.c;
import io.reactivex.o;
import io.reactivex.q;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class BlockingObservableIterable<T> implements Iterable<T> {
    final o<? extends T> a;
    final int b;

    static final class BlockingObservableIterator<T> extends AtomicReference<b> implements b, q<T>, Iterator<T> {
        private static final long serialVersionUID = 6695226475494099826L;
        final a<T> a;
        final Lock b = new ReentrantLock();
        final Condition c = this.b.newCondition();
        volatile boolean d;
        Throwable e;

        BlockingObservableIterator(int i) {
            this.a = new a<>(i);
        }

        public boolean hasNext() {
            while (true) {
                boolean z = this.d;
                boolean b2 = this.a.b();
                if (z) {
                    Throwable th = this.e;
                    if (th != null) {
                        throw ExceptionHelper.a(th);
                    } else if (b2) {
                        return false;
                    }
                }
                if (!b2) {
                    return true;
                }
                try {
                    c.a();
                    this.b.lock();
                    while (!this.d && this.a.b()) {
                        this.c.await();
                    }
                    this.b.unlock();
                } catch (InterruptedException e2) {
                    DisposableHelper.a((AtomicReference<b>) this);
                    a();
                    throw ExceptionHelper.a((Throwable) e2);
                } catch (Throwable th2) {
                    this.b.unlock();
                    throw th2;
                }
            }
        }

        public T next() {
            if (hasNext()) {
                return this.a.e_();
            }
            throw new NoSuchElementException();
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this, bVar);
        }

        public void onNext(T t) {
            this.a.a(t);
            a();
        }

        public void onError(Throwable th) {
            this.e = th;
            this.d = true;
            a();
        }

        public void onComplete() {
            this.d = true;
            a();
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            this.b.lock();
            try {
                this.c.signalAll();
            } finally {
                this.b.unlock();
            }
        }

        public void remove() {
            throw new UnsupportedOperationException("remove");
        }

        public void dispose() {
            DisposableHelper.a((AtomicReference<b>) this);
        }

        public boolean isDisposed() {
            return DisposableHelper.a((b) get());
        }
    }

    public BlockingObservableIterable(o<? extends T> oVar, int i) {
        this.a = oVar;
        this.b = i;
    }

    public Iterator<T> iterator() {
        BlockingObservableIterator blockingObservableIterator = new BlockingObservableIterator(this.b);
        this.a.subscribe(blockingObservableIterator);
        return blockingObservableIterator;
    }
}
