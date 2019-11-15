package io.reactivex.internal.subscribers;

import io.reactivex.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.a.b;
import org.a.c;

public class StrictSubscriber<T> extends AtomicInteger implements f<T>, c {
    private static final long serialVersionUID = -4945028590049415624L;
    final b<? super T> a;
    final AtomicThrowable b = new AtomicThrowable();
    final AtomicLong c = new AtomicLong();
    final AtomicReference<c> d = new AtomicReference<>();
    final AtomicBoolean e = new AtomicBoolean();
    volatile boolean f;

    public StrictSubscriber(b<? super T> bVar) {
        this.a = bVar;
    }

    public void a(long j) {
        if (j <= 0) {
            a();
            onError(new IllegalArgumentException("§3.9 violated: positive request amount required but it was " + j));
            return;
        }
        SubscriptionHelper.a(this.d, this.c, j);
    }

    public void a() {
        if (!this.f) {
            SubscriptionHelper.a(this.d);
        }
    }

    public void a(c cVar) {
        if (this.e.compareAndSet(false, true)) {
            this.a.a(this);
            SubscriptionHelper.a(this.d, this.c, cVar);
            return;
        }
        cVar.a();
        a();
        onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
    }

    public void onNext(T t) {
        io.reactivex.internal.util.f.a(this.a, t, (AtomicInteger) this, this.b);
    }

    public void onError(Throwable th) {
        this.f = true;
        io.reactivex.internal.util.f.a(this.a, th, (AtomicInteger) this, this.b);
    }

    public void onComplete() {
        this.f = true;
        io.reactivex.internal.util.f.a(this.a, (AtomicInteger) this, this.b);
    }
}
