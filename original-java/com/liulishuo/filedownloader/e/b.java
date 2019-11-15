package com.liulishuo.filedownloader.e;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FileDownloadExecutors */
public class b {

    /* compiled from: FileDownloadExecutors */
    static class a implements ThreadFactory {
        private static final AtomicInteger a = new AtomicInteger(1);
        private final String b;
        private final ThreadGroup c = Thread.currentThread().getThreadGroup();
        private final AtomicInteger d = new AtomicInteger(1);

        a(String str) {
            this.b = g.j(str);
        }

        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.c, runnable, this.b + this.d.getAndIncrement(), 0);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    public static ThreadPoolExecutor a(String str) {
        return new ThreadPoolExecutor(0, Integer.MAX_VALUE, 15, TimeUnit.SECONDS, new SynchronousQueue(), new a(str));
    }

    public static ThreadPoolExecutor a(int i, String str) {
        return a(i, new LinkedBlockingQueue(), str);
    }

    public static ThreadPoolExecutor a(int i, LinkedBlockingQueue<Runnable> linkedBlockingQueue, String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 15, TimeUnit.SECONDS, linkedBlockingQueue, new a(str));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }
}
