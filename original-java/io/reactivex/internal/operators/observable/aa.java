package io.reactivex.internal.operators.observable;

import io.reactivex.b.f;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableDoOnEach */
public final class aa<T> extends a<T, T> {
    final f<? super T> b;
    final f<? super Throwable> c;
    final io.reactivex.b.a d;
    final io.reactivex.b.a e;

    /* compiled from: ObservableDoOnEach */
    static final class a<T> implements b, q<T> {
        final q<? super T> a;
        final f<? super T> b;
        final f<? super Throwable> c;
        final io.reactivex.b.a d;
        final io.reactivex.b.a e;
        b f;
        boolean g;

        a(q<? super T> qVar, f<? super T> fVar, f<? super Throwable> fVar2, io.reactivex.b.a aVar, io.reactivex.b.a aVar2) {
            this.a = qVar;
            this.b = fVar;
            this.c = fVar2;
            this.d = aVar;
            this.e = aVar2;
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
            if (!this.g) {
                try {
                    this.b.accept(t);
                    this.a.onNext(t);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f.dispose();
                    onError(th);
                }
            }
        }

        public void onError(Throwable th) {
            if (this.g) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.g = true;
            try {
                this.c.accept(th);
            } catch (Throwable th2) {
                Throwable th3 = th2;
                io.reactivex.exceptions.a.b(th3);
                th = new CompositeException(th, th3);
            }
            this.a.onError(th);
            try {
                this.e.a();
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                io.reactivex.d.a.a(th4);
            }
        }

        public void onComplete() {
            if (!this.g) {
                try {
                    this.d.a();
                    this.g = true;
                    this.a.onComplete();
                    try {
                        this.e.a();
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        io.reactivex.d.a.a(th);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    onError(th2);
                }
            }
        }
    }

    public aa(o<T> oVar, f<? super T> fVar, f<? super Throwable> fVar2, io.reactivex.b.a aVar, io.reactivex.b.a aVar2) {
        super(oVar);
        this.b = fVar;
        this.c = fVar2;
        this.d = aVar;
        this.e = aVar2;
    }

    public void subscribeActual(q<? super T> qVar) {
        this.a.subscribe(new a(qVar, this.b, this.c, this.d, this.e));
    }
}
