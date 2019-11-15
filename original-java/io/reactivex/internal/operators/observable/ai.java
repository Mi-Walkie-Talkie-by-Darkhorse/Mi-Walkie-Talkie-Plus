package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;

/* compiled from: ObservableFlattenIterable */
public final class ai<T, R> extends a<T, R> {
    final g<? super T, ? extends Iterable<? extends R>> b;

    /* compiled from: ObservableFlattenIterable */
    static final class a<T, R> implements b, q<T> {
        final q<? super R> a;
        final g<? super T, ? extends Iterable<? extends R>> b;
        b c;

        a(q<? super R> qVar, g<? super T, ? extends Iterable<? extends R>> gVar) {
            this.a = qVar;
            this.b = gVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.c, bVar)) {
                this.c = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            if (this.c != DisposableHelper.DISPOSED) {
                try {
                    q<? super R> qVar = this.a;
                    for (Object a2 : (Iterable) this.b.apply(t)) {
                        try {
                            try {
                                qVar.onNext(io.reactivex.internal.functions.a.a(a2, "The iterator returned a null value"));
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                this.c.dispose();
                                onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.c.dispose();
                            onError(th2);
                            return;
                        }
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    this.c.dispose();
                    onError(th3);
                }
            }
        }

        public void onError(Throwable th) {
            if (this.c == DisposableHelper.DISPOSED) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.c = DisposableHelper.DISPOSED;
            this.a.onError(th);
        }

        public void onComplete() {
            if (this.c != DisposableHelper.DISPOSED) {
                this.c = DisposableHelper.DISPOSED;
                this.a.onComplete();
            }
        }

        public boolean isDisposed() {
            return this.c.isDisposed();
        }

        public void dispose() {
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }
    }

    public ai(o<T> oVar, g<? super T, ? extends Iterable<? extends R>> gVar) {
        super(oVar);
        this.b = gVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super R> qVar) {
        this.a.subscribe(new a(qVar, this.b));
    }
}
