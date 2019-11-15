package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.Callable;

/* compiled from: ObservableMapNotification */
public final class az<T, R> extends a<T, o<? extends R>> {
    final g<? super T, ? extends o<? extends R>> b;
    final g<? super Throwable, ? extends o<? extends R>> c;
    final Callable<? extends o<? extends R>> d;

    /* compiled from: ObservableMapNotification */
    static final class a<T, R> implements b, q<T> {
        final q<? super o<? extends R>> a;
        final g<? super T, ? extends o<? extends R>> b;
        final g<? super Throwable, ? extends o<? extends R>> c;
        final Callable<? extends o<? extends R>> d;
        b e;

        a(q<? super o<? extends R>> qVar, g<? super T, ? extends o<? extends R>> gVar, g<? super Throwable, ? extends o<? extends R>> gVar2, Callable<? extends o<? extends R>> callable) {
            this.a = qVar;
            this.b = gVar;
            this.c = gVar2;
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
            try {
                this.a.onNext((o) io.reactivex.internal.functions.a.a(this.b.apply(t), "The onNext ObservableSource returned is null"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.a.onError(th);
            }
        }

        public void onError(Throwable th) {
            try {
                this.a.onNext((o) io.reactivex.internal.functions.a.a(this.c.apply(th), "The onError ObservableSource returned is null"));
                this.a.onComplete();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.a.onError(new CompositeException(th, th2));
            }
        }

        public void onComplete() {
            try {
                this.a.onNext((o) io.reactivex.internal.functions.a.a(this.d.call(), "The onComplete ObservableSource returned is null"));
                this.a.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.a.onError(th);
            }
        }
    }

    public az(o<T> oVar, g<? super T, ? extends o<? extends R>> gVar, g<? super Throwable, ? extends o<? extends R>> gVar2, Callable<? extends o<? extends R>> callable) {
        super(oVar);
        this.b = gVar;
        this.c = gVar2;
        this.d = callable;
    }

    public void subscribeActual(q<? super o<? extends R>> qVar) {
        this.a.subscribe(new a(qVar, this.b, this.c, this.d));
    }
}
