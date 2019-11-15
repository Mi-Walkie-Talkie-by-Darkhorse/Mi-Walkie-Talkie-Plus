package com.tencent.bugly.mimsg.proguard;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.b;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: BUGLY */
public final class w {
    private static w a;
    private ScheduledExecutorService b;

    protected w() {
        this.b = null;
        this.b = Executors.newScheduledThreadPool(3, new ThreadFactory(this) {
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("BUGLY_THREAD");
                return thread;
            }
        });
        if (this.b == null || this.b.isShutdown()) {
            x.d("[AsyncTaskHandler] ScheduledExecutorService is not valiable!", new Object[0]);
        }
    }

    public static synchronized w a() {
        w wVar;
        synchronized (w.class) {
            if (a == null) {
                a = new w();
            }
            wVar = a;
        }
        return wVar;
    }

    public final synchronized boolean a(Runnable runnable, long j) {
        boolean z = false;
        synchronized (this) {
            if (!c()) {
                x.d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            } else if (runnable == null) {
                x.d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            } else {
                if (j <= 0) {
                    j = 0;
                }
                x.c("[AsyncTaskHandler] Post a delay(time: %dms) task: %s", Long.valueOf(j), runnable.getClass().getName());
                try {
                    this.b.schedule(runnable, j, TimeUnit.MILLISECONDS);
                    z = true;
                } catch (Throwable th) {
                    if (b.c) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            }
        }
        return z;
    }

    public final synchronized boolean a(Runnable runnable) {
        boolean z = false;
        synchronized (this) {
            if (!c()) {
                x.d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            } else if (runnable == null) {
                x.d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            } else {
                x.c("[AsyncTaskHandler] Post a normal task: %s", runnable.getClass().getName());
                try {
                    this.b.execute(runnable);
                    z = true;
                } catch (Throwable th) {
                    if (b.c) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            }
        }
        return z;
    }

    public final synchronized void b() {
        if (this.b != null && !this.b.isShutdown()) {
            x.c("[AsyncTaskHandler] Close async handler.", new Object[0]);
            this.b.shutdownNow();
        }
    }

    public final synchronized boolean c() {
        return this.b != null && !this.b.isShutdown();
    }
}
