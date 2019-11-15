package rx.internal.util;

import java.util.Queue;
import rx.f;
import rx.internal.operators.b;
import rx.internal.util.a.j;
import rx.internal.util.a.r;

/* compiled from: RxRingBuffer */
public class d implements f {
    static int a;
    public static final int b = a;
    public static a<Queue<Object>> c = new a<Queue<Object>>() {
        /* access modifiers changed from: protected */
        /* renamed from: c */
        public r<Object> b() {
            return new r<>(d.b);
        }
    };
    public static a<Queue<Object>> d = new a<Queue<Object>>() {
        /* access modifiers changed from: protected */
        /* renamed from: c */
        public j<Object> b() {
            return new j<>(d.b);
        }
    };
    private static final b<Object> e = b.a();
    private Queue<Object> f;
    private final a<Queue<Object>> g;

    static {
        a = 128;
        if (b.a()) {
            a = 16;
        }
        String property = System.getProperty("rx.ring-buffer.size");
        if (property != null) {
            try {
                a = Integer.parseInt(property);
            } catch (Exception e2) {
                System.err.println("Failed to set 'rx.buffer.size' with value " + property + " => " + e2.getMessage());
            }
        }
    }

    public synchronized void a() {
        Queue<Object> queue = this.f;
        a<Queue<Object>> aVar = this.g;
        if (!(aVar == null || queue == null)) {
            queue.clear();
            this.f = null;
            aVar.a(queue);
        }
    }

    public void unsubscribe() {
        a();
    }

    public boolean isUnsubscribed() {
        return this.f == null;
    }
}
