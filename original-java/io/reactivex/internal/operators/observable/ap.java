package io.reactivex.internal.operators.observable;

import io.reactivex.b.c;
import io.reactivex.b.f;
import io.reactivex.d;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.k;
import io.reactivex.q;
import java.util.concurrent.Callable;

/* compiled from: ObservableGenerate */
public final class ap<T, S> extends k<T> {
    final Callable<S> a;
    final c<S, d<T>, S> b;
    final f<? super S> c;

    /* compiled from: ObservableGenerate */
    static final class a<T, S> implements d<T>, b {
        final q<? super T> a;
        final c<S, ? super d<T>, S> b;
        final f<? super S> c;
        S d;
        volatile boolean e;
        boolean f;
        boolean g;

        a(q<? super T> qVar, c<S, ? super d<T>, S> cVar, f<? super S> fVar, S s) {
            this.a = qVar;
            this.b = cVar;
            this.c = fVar;
            this.d = s;
        }

        public void b() {
            S s = this.d;
            if (this.e) {
                this.d = null;
                b(s);
                return;
            }
            c<S, ? super d<T>, S> cVar = this.b;
            while (!this.e) {
                this.g = false;
                try {
                    s = cVar.a(s, this);
                    if (this.f) {
                        this.e = true;
                        this.d = null;
                        b(s);
                        return;
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.d = null;
                    this.e = true;
                    a(th);
                    b(s);
                    return;
                }
            }
            this.d = null;
            b(s);
        }

        private void b(S s) {
            try {
                this.c.accept(s);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.d.a.a(th);
            }
        }

        public void dispose() {
            this.e = true;
        }

        public boolean isDisposed() {
            return this.e;
        }

        public void a(T t) {
            if (this.f) {
                return;
            }
            if (this.g) {
                a((Throwable) new IllegalStateException("onNext already called in this generate turn"));
            } else if (t == null) {
                a((Throwable) new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.g = true;
                this.a.onNext(t);
            }
        }

        public void a(Throwable th) {
            if (this.f) {
                io.reactivex.d.a.a(th);
                return;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f = true;
            this.a.onError(th);
        }

        public void a() {
            if (!this.f) {
                this.f = true;
                this.a.onComplete();
            }
        }
    }

    public ap(Callable<S> callable, c<S, d<T>, S> cVar, f<? super S> fVar) {
        this.a = callable;
        this.b = cVar;
        this.c = fVar;
    }

    public void subscribeActual(q<? super T> qVar) {
        try {
            a aVar = new a(qVar, this.b, this.c, this.a.call());
            qVar.onSubscribe(aVar);
            aVar.b();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.a(th, qVar);
        }
    }
}
