package rx.e;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.d;
import rx.f;

/* compiled from: TrampolineScheduler */
public final class g extends d {
    private static final g a = new g();

    /* compiled from: TrampolineScheduler */
    private static class a extends rx.d.a implements f {
        final AtomicInteger a;
        /* access modifiers changed from: private */
        public final PriorityBlockingQueue<b> b;
        private final rx.f.a c;
        private final AtomicInteger d;

        private a() {
            this.a = new AtomicInteger();
            this.b = new PriorityBlockingQueue<>();
            this.c = new rx.f.a();
            this.d = new AtomicInteger();
        }

        public f a(rx.b.a aVar) {
            return a(aVar, a());
        }

        public f a(rx.b.a aVar, long j, TimeUnit timeUnit) {
            long a2 = a() + timeUnit.toMillis(j);
            return a(new f(aVar, this, a2), a2);
        }

        private f a(rx.b.a aVar, long j) {
            if (this.c.isUnsubscribed()) {
                return rx.f.d.b();
            }
            final b bVar = new b(aVar, Long.valueOf(j), this.a.incrementAndGet());
            this.b.add(bVar);
            if (this.d.getAndIncrement() != 0) {
                return rx.f.d.a(new rx.b.a() {
                    public void a() {
                        a.this.b.remove(bVar);
                    }
                });
            }
            do {
                b bVar2 = (b) this.b.poll();
                if (bVar2 != null) {
                    bVar2.a.a();
                }
            } while (this.d.decrementAndGet() > 0);
            return rx.f.d.b();
        }

        public void unsubscribe() {
            this.c.unsubscribe();
        }

        public boolean isUnsubscribed() {
            return this.c.isUnsubscribed();
        }
    }

    /* compiled from: TrampolineScheduler */
    private static final class b implements Comparable<b> {
        final rx.b.a a;
        final Long b;
        final int c;

        private b(rx.b.a aVar, Long l, int i) {
            this.a = aVar;
            this.b = l;
            this.c = i;
        }

        /* renamed from: a */
        public int compareTo(b bVar) {
            int compareTo = this.b.compareTo(bVar.b);
            if (compareTo == 0) {
                return g.b(this.c, bVar.c);
            }
            return compareTo;
        }
    }

    public rx.d.a a() {
        return new a();
    }

    g() {
    }

    /* access modifiers changed from: private */
    public static int b(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }
}
