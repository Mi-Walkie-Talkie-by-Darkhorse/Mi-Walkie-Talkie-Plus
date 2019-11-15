package rx.internal.schedulers;

import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.d.a;
import rx.d.d;
import rx.d.e;
import rx.f;
import rx.internal.util.RxThreadFactory;
import rx.internal.util.b;

/* compiled from: NewThreadWorker */
public class c extends a implements f {
    public static final int b = Integer.getInteger("rx.scheduler.jdk6.purge-frequency-millis", 1000).intValue();
    private static final boolean e;
    private static final ConcurrentHashMap<ScheduledThreadPoolExecutor, ScheduledThreadPoolExecutor> f = new ConcurrentHashMap<>();
    private static final AtomicReference<ScheduledExecutorService> g = new AtomicReference<>();
    private static volatile Object h;
    private static final Object i = new Object();
    volatile boolean a;
    private final ScheduledExecutorService c;
    private final e d;

    static {
        boolean z;
        boolean z2 = Boolean.getBoolean("rx.scheduler.jdk6.purge-force");
        int b2 = b.b();
        if (z2 || (b2 != 0 && b2 < 21)) {
            z = false;
        } else {
            z = true;
        }
        e = z;
    }

    public static void a(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        while (true) {
            if (((ScheduledExecutorService) g.get()) != null) {
                break;
            }
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge-"));
            if (g.compareAndSet(null, newScheduledThreadPool)) {
                newScheduledThreadPool.scheduleAtFixedRate(new Runnable() {
                    public void run() {
                        c.b();
                    }
                }, (long) b, (long) b, TimeUnit.MILLISECONDS);
                break;
            }
            newScheduledThreadPool.shutdownNow();
        }
        f.putIfAbsent(scheduledThreadPoolExecutor, scheduledThreadPoolExecutor);
    }

    public static void a(ScheduledExecutorService scheduledExecutorService) {
        f.remove(scheduledExecutorService);
    }

    static void b() {
        try {
            Iterator it = f.keySet().iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (!scheduledThreadPoolExecutor.isShutdown()) {
                    scheduledThreadPoolExecutor.purge();
                } else {
                    it.remove();
                }
            }
        } catch (Throwable th) {
            rx.exceptions.a.a(th);
            d.a().b().a(th);
        }
    }

    public static boolean b(ScheduledExecutorService scheduledExecutorService) {
        Method method;
        Object obj;
        if (e) {
            if (scheduledExecutorService instanceof ScheduledThreadPoolExecutor) {
                Object obj2 = h;
                if (obj2 == i) {
                    return false;
                }
                if (obj2 == null) {
                    Method c2 = c(scheduledExecutorService);
                    if (c2 != 0) {
                        obj = c2;
                    } else {
                        obj = i;
                    }
                    h = obj;
                    method = c2;
                } else {
                    method = (Method) obj2;
                }
            } else {
                method = c(scheduledExecutorService);
            }
            if (method != 0) {
                try {
                    method.invoke(scheduledExecutorService, new Object[]{Boolean.valueOf(true)});
                    return true;
                } catch (Exception e2) {
                    d.a().b().a(e2);
                }
            }
        }
        return false;
    }

    static Method c(ScheduledExecutorService scheduledExecutorService) {
        Method[] methods;
        for (Method method : scheduledExecutorService.getClass().getMethods()) {
            if (method.getName().equals("setRemoveOnCancelPolicy")) {
                Class[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0] == Boolean.TYPE) {
                    return method;
                }
            }
        }
        return null;
    }

    public c(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (!b(newScheduledThreadPool) && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            a((ScheduledThreadPoolExecutor) newScheduledThreadPool);
        }
        this.d = d.a().d();
        this.c = newScheduledThreadPool;
    }

    public f a(rx.b.a aVar) {
        return a(aVar, 0, null);
    }

    public f a(rx.b.a aVar, long j, TimeUnit timeUnit) {
        if (this.a) {
            return rx.f.d.b();
        }
        return b(aVar, j, timeUnit);
    }

    public ScheduledAction b(rx.b.a aVar, long j, TimeUnit timeUnit) {
        Future schedule;
        ScheduledAction scheduledAction = new ScheduledAction(this.d.a(aVar));
        if (j <= 0) {
            schedule = this.c.submit(scheduledAction);
        } else {
            schedule = this.c.schedule(scheduledAction, j, timeUnit);
        }
        scheduledAction.a(schedule);
        return scheduledAction;
    }

    public ScheduledAction a(rx.b.a aVar, long j, TimeUnit timeUnit, rx.f.b bVar) {
        Future schedule;
        ScheduledAction scheduledAction = new ScheduledAction(this.d.a(aVar), bVar);
        bVar.a((f) scheduledAction);
        if (j <= 0) {
            schedule = this.c.submit(scheduledAction);
        } else {
            schedule = this.c.schedule(scheduledAction, j, timeUnit);
        }
        scheduledAction.a(schedule);
        return scheduledAction;
    }

    public ScheduledAction a(rx.b.a aVar, long j, TimeUnit timeUnit, rx.internal.util.f fVar) {
        Future schedule;
        ScheduledAction scheduledAction = new ScheduledAction(this.d.a(aVar), fVar);
        fVar.a((f) scheduledAction);
        if (j <= 0) {
            schedule = this.c.submit(scheduledAction);
        } else {
            schedule = this.c.schedule(scheduledAction, j, timeUnit);
        }
        scheduledAction.a(schedule);
        return scheduledAction;
    }

    public void unsubscribe() {
        this.a = true;
        this.c.shutdownNow();
        a(this.c);
    }

    public boolean isUnsubscribed() {
        return this.a;
    }
}
