package rx.e;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.d;
import rx.f;
import rx.f.c;
import rx.internal.schedulers.ScheduledAction;

/* compiled from: ExecutorScheduler */
final class b extends d {
    final Executor a;

    /* compiled from: ExecutorScheduler */
    static final class a extends rx.d.a implements Runnable {
        final Executor a;
        final rx.f.b b = new rx.f.b();
        final ConcurrentLinkedQueue<ScheduledAction> c = new ConcurrentLinkedQueue<>();
        final AtomicInteger d = new AtomicInteger();

        public a(Executor executor) {
            this.a = executor;
        }

        public f a(rx.b.a aVar) {
            if (isUnsubscribed()) {
                return rx.f.d.b();
            }
            ScheduledAction scheduledAction = new ScheduledAction(aVar, this.b);
            this.b.a((f) scheduledAction);
            this.c.offer(scheduledAction);
            if (this.d.getAndIncrement() != 0) {
                return scheduledAction;
            }
            try {
                this.a.execute(this);
                return scheduledAction;
            } catch (RejectedExecutionException e) {
                this.b.b(scheduledAction);
                this.d.decrementAndGet();
                rx.d.d.a().b().a(e);
                throw e;
            }
        }

        public void run() {
            do {
                ScheduledAction scheduledAction = (ScheduledAction) this.c.poll();
                if (!scheduledAction.isUnsubscribed()) {
                    scheduledAction.run();
                }
            } while (this.d.decrementAndGet() > 0);
        }

        public f a(final rx.b.a aVar, long j, TimeUnit timeUnit) {
            ScheduledExecutorService b2;
            if (j <= 0) {
                return a(aVar);
            }
            if (isUnsubscribed()) {
                return rx.f.d.b();
            }
            if (this.a instanceof ScheduledExecutorService) {
                b2 = (ScheduledExecutorService) this.a;
            } else {
                b2 = rx.internal.schedulers.b.b();
            }
            c cVar = new c();
            final c cVar2 = new c();
            cVar2.a(cVar);
            this.b.a((f) cVar2);
            final f a2 = rx.f.d.a(new rx.b.a() {
                public void a() {
                    a.this.b.b(cVar2);
                }
            });
            ScheduledAction scheduledAction = new ScheduledAction(new rx.b.a() {
                public void a() {
                    if (!cVar2.isUnsubscribed()) {
                        f a2 = a.this.a(aVar);
                        cVar2.a(a2);
                        if (a2.getClass() == ScheduledAction.class) {
                            ((ScheduledAction) a2).a(a2);
                        }
                    }
                }
            });
            cVar.a(scheduledAction);
            try {
                scheduledAction.a((Future<?>) b2.schedule(scheduledAction, j, timeUnit));
                return a2;
            } catch (RejectedExecutionException e) {
                rx.d.d.a().b().a(e);
                throw e;
            }
        }

        public boolean isUnsubscribed() {
            return this.b.isUnsubscribed();
        }

        public void unsubscribe() {
            this.b.unsubscribe();
        }
    }

    public b(Executor executor) {
        this.a = executor;
    }

    public rx.d.a a() {
        return new a(this.a);
    }
}
