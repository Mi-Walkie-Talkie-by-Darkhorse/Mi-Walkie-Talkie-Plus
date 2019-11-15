package rx.internal.schedulers;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;
import rx.internal.util.RxThreadFactory;

/* compiled from: GenericScheduledExecutorService */
public final class b {
    public static final b a = new b();
    static final ScheduledExecutorService b = Executors.newScheduledThreadPool(0);
    private static final RxThreadFactory c = new RxThreadFactory("RxScheduledExecutorPool-");
    private final AtomicReference<ScheduledExecutorService> d = new AtomicReference<>(b);

    static {
        b.shutdownNow();
    }

    private b() {
        a();
    }

    public void a() {
        int i = 8;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        if (availableProcessors > 4) {
            availableProcessors /= 2;
        }
        if (availableProcessors <= 8) {
            i = availableProcessors;
        }
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(i, c);
        if (!this.d.compareAndSet(b, newScheduledThreadPool)) {
            newScheduledThreadPool.shutdownNow();
        } else if (!c.b(newScheduledThreadPool) && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            c.a((ScheduledThreadPoolExecutor) newScheduledThreadPool);
        }
    }

    public static ScheduledExecutorService b() {
        return (ScheduledExecutorService) a.d.get();
    }
}
