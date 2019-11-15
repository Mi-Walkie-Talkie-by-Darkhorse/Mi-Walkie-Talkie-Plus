package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.subjects.PublishSubject;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservablePublishSelector<T, R> extends a<T, R> {
    final g<? super k<T>, ? extends o<R>> b;

    static final class TargetObserver<T, R> extends AtomicReference<b> implements b, q<R> {
        private static final long serialVersionUID = 854110278590336484L;
        final q<? super R> a;
        b b;

        TargetObserver(q<? super R> qVar) {
            this.a = qVar;
        }

        public void onSubscribe(b bVar) {
            if (DisposableHelper.a(this.b, bVar)) {
                this.b = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(R r) {
            this.a.onNext(r);
        }

        public void onError(Throwable th) {
            DisposableHelper.a((AtomicReference<b>) this);
            this.a.onError(th);
        }

        public void onComplete() {
            DisposableHelper.a((AtomicReference<b>) this);
            this.a.onComplete();
        }

        public void dispose() {
            this.b.dispose();
            DisposableHelper.a((AtomicReference<b>) this);
        }

        public boolean isDisposed() {
            return this.b.isDisposed();
        }
    }

    static final class a<T, R> implements q<T> {
        final PublishSubject<T> a;
        final AtomicReference<b> b;

        a(PublishSubject<T> publishSubject, AtomicReference<b> atomicReference) {
            this.a = publishSubject;
            this.b = atomicReference;
        }

        public void onSubscribe(b bVar) {
            DisposableHelper.b(this.b, bVar);
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onComplete() {
            this.a.onComplete();
        }
    }

    public ObservablePublishSelector(o<T> oVar, g<? super k<T>, ? extends o<R>> gVar) {
        super(oVar);
        this.b = gVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super R> qVar) {
        PublishSubject a2 = PublishSubject.a();
        try {
            o oVar = (o) io.reactivex.internal.functions.a.a(this.b.apply(a2), "The selector returned a null ObservableSource");
            TargetObserver targetObserver = new TargetObserver(qVar);
            oVar.subscribe(targetObserver);
            this.a.subscribe(new a(a2, targetObserver));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.a(th, qVar);
        }
    }
}
