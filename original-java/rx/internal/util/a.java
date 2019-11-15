package rx.internal.util;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.e.e;
import rx.internal.util.a.d;
import rx.internal.util.a.y;

/* compiled from: ObjectPool */
public abstract class a<T> {
    /* access modifiers changed from: private */
    public Queue<T> a;
    /* access modifiers changed from: private */
    public final int b;
    /* access modifiers changed from: private */
    public final int c;
    private final long d;
    private final AtomicReference<rx.d.a> e;

    /* access modifiers changed from: protected */
    public abstract T b();

    public a() {
        this(0, 0, 67);
    }

    private a(int i, int i2, long j) {
        this.b = i;
        this.c = i2;
        this.d = j;
        this.e = new AtomicReference<>();
        a(i);
        a();
    }

    public void a(T t) {
        if (t != null) {
            this.a.offer(t);
        }
    }

    public void a() {
        rx.d.a a2 = e.a().a();
        if (this.e.compareAndSet(null, a2)) {
            a2.a(new rx.b.a() {
                public void a() {
                    int i = 0;
                    int size = a.this.a.size();
                    if (size < a.this.b) {
                        int c = a.this.c - size;
                        while (i < c) {
                            a.this.a.add(a.this.b());
                            i++;
                        }
                    } else if (size > a.this.c) {
                        int c2 = size - a.this.c;
                        while (i < c2) {
                            a.this.a.poll();
                            i++;
                        }
                    }
                }
            }, this.d, this.d, TimeUnit.SECONDS);
        } else {
            a2.unsubscribe();
        }
    }

    private void a(int i) {
        if (y.a()) {
            this.a = new d(Math.max(this.c, 1024));
        } else {
            this.a = new ConcurrentLinkedQueue();
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.a.add(b());
        }
    }
}
