package io.reactivex.internal.operators.observable;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.disposables.b;
import io.reactivex.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.k;
import io.reactivex.q;
import org.a.c;

/* compiled from: ObservableFromPublisher */
public final class an<T> extends k<T> {
    final org.a.a<? extends T> a;

    /* compiled from: ObservableFromPublisher */
    static final class a<T> implements b, f<T> {
        final q<? super T> a;
        c b;

        a(q<? super T> qVar) {
            this.a = qVar;
        }

        public void onComplete() {
            this.a.onComplete();
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }

        public void onNext(T t) {
            this.a.onNext(t);
        }

        public void a(c cVar) {
            if (SubscriptionHelper.a(this.b, cVar)) {
                this.b = cVar;
                this.a.onSubscribe(this);
                cVar.a(FileTracerConfig.FOREVER);
            }
        }

        public void dispose() {
            this.b.a();
            this.b = SubscriptionHelper.CANCELLED;
        }

        public boolean isDisposed() {
            return this.b == SubscriptionHelper.CANCELLED;
        }
    }

    public an(org.a.a<? extends T> aVar) {
        this.a = aVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.a.a(new a(qVar));
    }
}
