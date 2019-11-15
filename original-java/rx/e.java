package rx;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import rx.internal.util.f;

/* compiled from: Subscriber */
public abstract class e<T> implements b<T>, f {
    private static final Long NOT_SET = Long.valueOf(Long.MIN_VALUE);
    private c producer;
    private long requested;
    private final e<?> subscriber;
    private final f subscriptions;

    protected e() {
        this(null, false);
    }

    protected e(e<?> eVar) {
        this(eVar, true);
    }

    protected e(e<?> eVar, boolean z) {
        this.requested = NOT_SET.longValue();
        this.subscriber = eVar;
        this.subscriptions = (!z || eVar == null) ? new f() : eVar.subscriptions;
    }

    public final void add(f fVar) {
        this.subscriptions.a(fVar);
    }

    public final void unsubscribe() {
        this.subscriptions.unsubscribe();
    }

    public final boolean isUnsubscribed() {
        return this.subscriptions.isUnsubscribed();
    }

    public void onStart() {
    }

    /* access modifiers changed from: protected */
    public final void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("number requested cannot be negative: " + j);
        }
        synchronized (this) {
            if (this.producer != null) {
                c cVar = this.producer;
                cVar.a(j);
                return;
            }
            addToRequested(j);
        }
    }

    private void addToRequested(long j) {
        if (this.requested == NOT_SET.longValue()) {
            this.requested = j;
            return;
        }
        long j2 = this.requested + j;
        if (j2 < 0) {
            this.requested = FileTracerConfig.FOREVER;
        } else {
            this.requested = j2;
        }
    }

    public void setProducer(c cVar) {
        long j;
        boolean z = false;
        synchronized (this) {
            j = this.requested;
            this.producer = cVar;
            if (this.subscriber != null && j == NOT_SET.longValue()) {
                z = true;
            }
        }
        if (z) {
            this.subscriber.setProducer(this.producer);
        } else if (j == NOT_SET.longValue()) {
            this.producer.a(FileTracerConfig.FOREVER);
        } else {
            this.producer.a(j);
        }
    }
}
