package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableOnErrorNext */
public final class bc<T> extends a<T, T> {
    final g<? super Throwable, ? extends o<? extends T>> b;
    final boolean c;

    /* compiled from: ObservableOnErrorNext */
    static final class a<T> implements q<T> {
        final q<? super T> a;
        final g<? super Throwable, ? extends o<? extends T>> b;
        final boolean c;
        final SequentialDisposable d = new SequentialDisposable();
        boolean e;
        boolean f;

        a(q<? super T> qVar, g<? super Throwable, ? extends o<? extends T>> gVar, boolean z) {
            this.a = qVar;
            this.b = gVar;
            this.c = z;
        }

        public void onSubscribe(b bVar) {
            this.d.b(bVar);
        }

        public void onNext(T t) {
            if (!this.f) {
                this.a.onNext(t);
            }
        }

        public void onError(Throwable th) {
            if (!this.e) {
                this.e = true;
                if (!this.c || (th instanceof Exception)) {
                    try {
                        o oVar = (o) this.b.apply(th);
                        if (oVar == null) {
                            NullPointerException nullPointerException = new NullPointerException("Observable is null");
                            nullPointerException.initCause(th);
                            this.a.onError(nullPointerException);
                            return;
                        }
                        oVar.subscribe(this);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.a.onError(new CompositeException(th, th2));
                    }
                } else {
                    this.a.onError(th);
                }
            } else if (this.f) {
                io.reactivex.d.a.a(th);
            } else {
                this.a.onError(th);
            }
        }

        public void onComplete() {
            if (!this.f) {
                this.f = true;
                this.e = true;
                this.a.onComplete();
            }
        }
    }

    public bc(o<T> oVar, g<? super Throwable, ? extends o<? extends T>> gVar, boolean z) {
        super(oVar);
        this.b = gVar;
        this.c = z;
    }

    public void subscribeActual(q<? super T> qVar) {
        a aVar = new a(qVar, this.b, this.c);
        qVar.onSubscribe(aVar.d);
        this.a.subscribe(aVar);
    }
}
