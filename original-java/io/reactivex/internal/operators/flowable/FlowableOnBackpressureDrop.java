package io.reactivex.internal.operators.flowable;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.b.f;
import io.reactivex.e;
import io.reactivex.exceptions.a;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import org.a.b;
import org.a.c;

public final class FlowableOnBackpressureDrop<T> extends a<T, T> implements f<T> {
    final f<? super T> c = this;

    static final class BackpressureDropSubscriber<T> extends AtomicLong implements io.reactivex.f<T>, c {
        private static final long serialVersionUID = -6246093802440953054L;
        final b<? super T> a;
        final f<? super T> b;
        c c;
        boolean d;

        BackpressureDropSubscriber(b<? super T> bVar, f<? super T> fVar) {
            this.a = bVar;
            this.b = fVar;
        }

        public void a(c cVar) {
            if (SubscriptionHelper.a(this.c, cVar)) {
                this.c = cVar;
                this.a.a(this);
                cVar.a(FileTracerConfig.FOREVER);
            }
        }

        public void onNext(T t) {
            if (!this.d) {
                if (get() != 0) {
                    this.a.onNext(t);
                    io.reactivex.internal.util.b.b(this, 1);
                    return;
                }
                try {
                    this.b.accept(t);
                } catch (Throwable th) {
                    a.b(th);
                    a();
                    onError(th);
                }
            }
        }

        public void onError(Throwable th) {
            if (this.d) {
                io.reactivex.d.a.a(th);
                return;
            }
            this.d = true;
            this.a.onError(th);
        }

        public void onComplete() {
            if (!this.d) {
                this.d = true;
                this.a.onComplete();
            }
        }

        public void a(long j) {
            if (SubscriptionHelper.b(j)) {
                io.reactivex.internal.util.b.a((AtomicLong) this, j);
            }
        }

        public void a() {
            this.c.a();
        }
    }

    public FlowableOnBackpressureDrop(e<T> eVar) {
        super(eVar);
    }

    public void accept(T t) {
    }

    /* access modifiers changed from: protected */
    public void b(b<? super T> bVar) {
        this.b.a((io.reactivex.f<? super T>) new BackpressureDropSubscriber<Object>(bVar, this.c));
    }
}
