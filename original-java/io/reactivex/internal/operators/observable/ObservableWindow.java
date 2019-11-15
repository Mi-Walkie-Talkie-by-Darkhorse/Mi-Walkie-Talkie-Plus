package io.reactivex.internal.operators.observable;

import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.subjects.UnicastSubject;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableWindow<T> extends a<T, k<T>> {
    final long b;
    final long c;
    final int d;

    static final class WindowExactObserver<T> extends AtomicInteger implements b, q<T>, Runnable {
        private static final long serialVersionUID = -7481782523886138128L;
        final q<? super k<T>> a;
        final long b;
        final int c;
        long d;
        b e;
        UnicastSubject<T> f;
        volatile boolean g;

        WindowExactObserver(q<? super k<T>> qVar, long j, int i) {
            this.a = qVar;
            this.b = j;
            this.c = i;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.e, bVar)) {
                this.e = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            UnicastSubject<T> unicastSubject = this.f;
            if (unicastSubject == null && !this.g) {
                unicastSubject = UnicastSubject.a(this.c, (Runnable) this);
                this.f = unicastSubject;
                this.a.onNext(unicastSubject);
            }
            if (unicastSubject != null) {
                unicastSubject.onNext(t);
                long j = this.d + 1;
                this.d = j;
                if (j >= this.b) {
                    this.d = 0;
                    this.f = null;
                    unicastSubject.onComplete();
                    if (this.g) {
                        this.e.dispose();
                    }
                }
            }
        }

        public void onError(Throwable th) {
            UnicastSubject<T> unicastSubject = this.f;
            if (unicastSubject != null) {
                this.f = null;
                unicastSubject.onError(th);
            }
            this.a.onError(th);
        }

        public void onComplete() {
            UnicastSubject<T> unicastSubject = this.f;
            if (unicastSubject != null) {
                this.f = null;
                unicastSubject.onComplete();
            }
            this.a.onComplete();
        }

        public void dispose() {
            this.g = true;
        }

        public boolean isDisposed() {
            return this.g;
        }

        public void run() {
            if (this.g) {
                this.e.dispose();
            }
        }
    }

    static final class WindowSkipObserver<T> extends AtomicBoolean implements b, q<T>, Runnable {
        private static final long serialVersionUID = 3366976432059579510L;
        final q<? super k<T>> a;
        final long b;
        final long c;
        final int d;
        final ArrayDeque<UnicastSubject<T>> e;
        long f;
        volatile boolean g;
        long h;
        b i;
        final AtomicInteger j = new AtomicInteger();

        WindowSkipObserver(q<? super k<T>> qVar, long j2, long j3, int i2) {
            this.a = qVar;
            this.b = j2;
            this.c = j3;
            this.d = i2;
            this.e = new ArrayDeque<>();
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.i, bVar)) {
                this.i = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            ArrayDeque<UnicastSubject<T>> arrayDeque = this.e;
            long j2 = this.f;
            long j3 = this.c;
            if (j2 % j3 == 0 && !this.g) {
                this.j.getAndIncrement();
                UnicastSubject a2 = UnicastSubject.a(this.d, (Runnable) this);
                arrayDeque.offer(a2);
                this.a.onNext(a2);
            }
            long j4 = this.h + 1;
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                ((UnicastSubject) it.next()).onNext(t);
            }
            if (j4 >= this.b) {
                ((UnicastSubject) arrayDeque.poll()).onComplete();
                if (!arrayDeque.isEmpty() || !this.g) {
                    this.h = j4 - j3;
                } else {
                    this.i.dispose();
                    return;
                }
            } else {
                this.h = j4;
            }
            this.f = j2 + 1;
        }

        public void onError(Throwable th) {
            ArrayDeque<UnicastSubject<T>> arrayDeque = this.e;
            while (!arrayDeque.isEmpty()) {
                ((UnicastSubject) arrayDeque.poll()).onError(th);
            }
            this.a.onError(th);
        }

        public void onComplete() {
            ArrayDeque<UnicastSubject<T>> arrayDeque = this.e;
            while (!arrayDeque.isEmpty()) {
                ((UnicastSubject) arrayDeque.poll()).onComplete();
            }
            this.a.onComplete();
        }

        public void dispose() {
            this.g = true;
        }

        public boolean isDisposed() {
            return this.g;
        }

        public void run() {
            if (this.j.decrementAndGet() == 0 && this.g) {
                this.i.dispose();
            }
        }
    }

    public ObservableWindow(o<T> oVar, long j, long j2, int i) {
        super(oVar);
        this.b = j;
        this.c = j2;
        this.d = i;
    }

    public void subscribeActual(q<? super k<T>> qVar) {
        if (this.b == this.c) {
            this.a.subscribe(new WindowExactObserver(qVar, this.b, this.d));
            return;
        }
        this.a.subscribe(new WindowSkipObserver(qVar, this.b, this.c, this.d));
    }
}
