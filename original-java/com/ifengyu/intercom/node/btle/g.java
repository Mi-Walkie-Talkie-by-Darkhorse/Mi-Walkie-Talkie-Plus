package com.ifengyu.intercom.node.btle;

import android.os.Process;
import com.ifengyu.intercom.b.s;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CustomNamedThreadFactory */
public final class g implements ThreadFactory {
    /* access modifiers changed from: private */
    public final String a;
    private final String b;
    private final AtomicInteger c = new AtomicInteger();
    private final int d;

    /* compiled from: CustomNamedThreadFactory */
    private final class a extends Thread {
        private final int b;

        a(Runnable runnable, String str, int i) {
            super(runnable, str);
            this.b = i;
        }

        public void run() {
            Process.setThreadPriority(this.b);
            super.run();
        }
    }

    public g(String str, String str2, int i) {
        this.a = str;
        this.b = str2;
        this.d = i;
        this.c.set(0);
    }

    public Thread newThread(Runnable runnable) {
        a aVar = new a(runnable, this.b + "-" + this.c.incrementAndGet(), this.d);
        aVar.setUncaughtExceptionHandler(new UncaughtExceptionHandler() {
            public void uncaughtException(Thread thread, Throwable th) {
                s.b(g.this.a, "Uncaught exception in thread: " + thread, th);
            }
        });
        s.a(this.a, "[" + aVar.getName() + "] create a new thread: " + aVar.getId());
        return aVar;
    }
}
