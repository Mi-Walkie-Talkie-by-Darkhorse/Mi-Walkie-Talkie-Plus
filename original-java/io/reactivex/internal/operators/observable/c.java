package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.o;
import io.reactivex.observers.b;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: BlockingObservableMostRecent */
public final class c<T> implements Iterable<T> {
    final o<T> a;
    final T b;

    /* compiled from: BlockingObservableMostRecent */
    static final class a<T> extends b<T> {
        volatile Object a;

        /* renamed from: io.reactivex.internal.operators.observable.c$a$a reason: collision with other inner class name */
        /* compiled from: BlockingObservableMostRecent */
        final class C0084a implements Iterator<T> {
            private Object b;

            C0084a() {
            }

            public boolean hasNext() {
                this.b = a.this.a;
                return !NotificationLite.b(this.b);
            }

            public T next() {
                Object obj = null;
                try {
                    if (this.b == null) {
                        obj = a.this.a;
                    }
                    if (NotificationLite.b(this.b)) {
                        throw new NoSuchElementException();
                    } else if (NotificationLite.c(this.b)) {
                        throw ExceptionHelper.a(NotificationLite.f(this.b));
                    } else {
                        T e = NotificationLite.e(this.b);
                        this.b = obj;
                        return e;
                    }
                } finally {
                    this.b = obj;
                }
            }

            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        a(T t) {
            this.a = NotificationLite.a(t);
        }

        public void onComplete() {
            this.a = NotificationLite.a();
        }

        public void onError(Throwable th) {
            this.a = NotificationLite.a(th);
        }

        public void onNext(T t) {
            this.a = NotificationLite.a(t);
        }

        public C0084a a() {
            return new C0084a<>();
        }
    }

    public c(o<T> oVar, T t) {
        this.a = oVar;
        this.b = t;
    }

    public Iterator<T> iterator() {
        a aVar = new a(this.b);
        this.a.subscribe(aVar);
        return aVar.a();
    }
}
