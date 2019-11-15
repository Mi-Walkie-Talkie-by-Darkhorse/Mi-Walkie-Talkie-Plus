package io.reactivex.internal.operators.flowable;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.d.a;
import io.reactivex.e;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import org.a.b;
import org.a.c;

public final class FlowableOnBackpressureError<T> extends a<T, T> {

    static final class BackpressureErrorSubscriber<T> extends AtomicLong implements f<T>, c {
        private static final long serialVersionUID = -3176480756392482682L;
        final b<? super T> a;
        c b;
        boolean c;

        BackpressureErrorSubscriber(b<? super T> bVar) {
            this.a = bVar;
        }

        public void a(c cVar) {
            if (SubscriptionHelper.a(this.b, cVar)) {
                this.b = cVar;
                this.a.a(this);
                cVar.a(FileTracerConfig.FOREVER);
            }
        }

        public void onNext(T t) {
            if (!this.c) {
                if (get() != 0) {
                    this.a.onNext(t);
                    io.reactivex.internal.util.b.b(this, 1);
                    return;
                }
                onError(new MissingBackpressureException("could not emit value due to lack of requests"));
            }
        }

        public void onError(Throwable th) {
            if (this.c) {
                a.a(th);
                return;
            }
            this.c = true;
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.c) {
                this.c = true;
                this.a.onComplete();
            }
        }

        public void a(long j) {
            if (SubscriptionHelper.b(j)) {
                io.reactivex.internal.util.b.a((AtomicLong) this, j);
            }
        }

        public void a() {
            this.b.a();
        }
    }

    public FlowableOnBackpressureError(e<T> eVar) {
        super(eVar);
    }

    /* access modifiers changed from: protected */
    public void b(b<? super T> bVar) {
        this.b.a((f<? super T>) new BackpressureErrorSubscriber<Object>(bVar));
    }
}
