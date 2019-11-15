package rx.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.d.d;
import rx.exceptions.OnErrorNotImplementedException;
import rx.f;
import rx.f.b;

public final class ScheduledAction extends AtomicReference<Thread> implements Runnable, f {
    private static final long serialVersionUID = -3962399486978279857L;
    final rx.internal.util.f a;
    final rx.b.a b;

    private static final class Remover extends AtomicBoolean implements f {
        private static final long serialVersionUID = 247232374289553518L;
        final ScheduledAction a;
        final b b;

        public Remover(ScheduledAction scheduledAction, b bVar) {
            this.a = scheduledAction;
            this.b = bVar;
        }

        public boolean isUnsubscribed() {
            return this.a.isUnsubscribed();
        }

        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.b.b(this.a);
            }
        }
    }

    private static final class Remover2 extends AtomicBoolean implements f {
        private static final long serialVersionUID = 247232374289553518L;
        final ScheduledAction a;
        final rx.internal.util.f b;

        public Remover2(ScheduledAction scheduledAction, rx.internal.util.f fVar) {
            this.a = scheduledAction;
            this.b = fVar;
        }

        public boolean isUnsubscribed() {
            return this.a.isUnsubscribed();
        }

        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.b.b(this.a);
            }
        }
    }

    private final class a implements f {
        private final Future<?> b;

        private a(Future<?> future) {
            this.b = future;
        }

        public void unsubscribe() {
            if (ScheduledAction.this.get() != Thread.currentThread()) {
                this.b.cancel(true);
            } else {
                this.b.cancel(false);
            }
        }

        public boolean isUnsubscribed() {
            return this.b.isCancelled();
        }
    }

    public ScheduledAction(rx.b.a aVar) {
        this.b = aVar;
        this.a = new rx.internal.util.f();
    }

    public ScheduledAction(rx.b.a aVar, b bVar) {
        this.b = aVar;
        this.a = new rx.internal.util.f((f) new Remover(this, bVar));
    }

    public ScheduledAction(rx.b.a aVar, rx.internal.util.f fVar) {
        this.b = aVar;
        this.a = new rx.internal.util.f((f) new Remover2(this, fVar));
    }

    public void run() {
        IllegalStateException illegalStateException;
        try {
            lazySet(Thread.currentThread());
            this.b.a();
        } catch (Throwable th) {
            if (th instanceof OnErrorNotImplementedException) {
                illegalStateException = new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", th);
            } else {
                illegalStateException = new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", th);
            }
            d.a().b().a(illegalStateException);
            Thread currentThread = Thread.currentThread();
            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, illegalStateException);
        } finally {
            unsubscribe();
        }
    }

    public boolean isUnsubscribed() {
        return this.a.isUnsubscribed();
    }

    public void unsubscribe() {
        if (!this.a.isUnsubscribed()) {
            this.a.unsubscribe();
        }
    }

    public void a(f fVar) {
        this.a.a(fVar);
    }

    public void a(Future<?> future) {
        this.a.a((f) new a(future));
    }

    public void a(b bVar) {
        this.a.a((f) new Remover(this, bVar));
    }
}
