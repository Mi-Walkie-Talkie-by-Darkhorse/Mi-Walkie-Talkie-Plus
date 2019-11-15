package com.amap.api.col.sl;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.AbortPolicy;
import java.util.concurrent.TimeUnit;

/* compiled from: ThreadPoolExecutorUtil */
public class as {
    private static volatile as c;
    private BlockingQueue<Runnable> a = new LinkedBlockingQueue();
    private ExecutorService b = null;

    public static as a() {
        if (c == null) {
            synchronized (as.class) {
                if (c == null) {
                    c = new as();
                }
            }
        }
        return c;
    }

    public static void b() {
        if (c != null) {
            synchronized (as.class) {
                if (c != null) {
                    c.b.shutdownNow();
                    c.b = null;
                    c = null;
                }
            }
        }
    }

    private as() {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        this.b = new ThreadPoolExecutor(availableProcessors, availableProcessors * 2, 1, TimeUnit.SECONDS, this.a, new AbortPolicy());
    }

    public final void a(Runnable runnable) {
        if (this.b != null) {
            this.b.execute(runnable);
        }
    }
}
