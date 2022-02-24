package com.ifengyu.intercom.node.btle;

import android.os.Process;
import com.ifengyu.intercom.i.z;
import com.xiaomi.mipush.sdk.Constants;
import java.lang.Thread;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CustomNamedThreadFactory.java */
/* loaded from: classes2.dex */
public final class g implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f5894a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5895b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f5896c;
    private final int d;

    /* compiled from: CustomNamedThreadFactory.java */
    /* loaded from: classes2.dex */
    class a implements Thread.UncaughtExceptionHandler {
        a() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            String str = g.this.f5894a;
            z.a(str, "Uncaught exception in thread: " + thread, th);
        }
    }

    /* compiled from: CustomNamedThreadFactory.java */
    /* loaded from: classes2.dex */
    private final class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private final int f5898a;

        b(g gVar, Runnable runnable, String str, int i) {
            super(runnable, str);
            this.f5898a = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(this.f5898a);
            super.run();
        }
    }

    public g(String str, String str2, int i) {
        AtomicInteger atomicInteger = new AtomicInteger();
        this.f5896c = atomicInteger;
        this.f5894a = str;
        this.f5895b = str2;
        this.d = i;
        atomicInteger.set(0);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        b bVar = new b(this, runnable, this.f5895b + Constants.ACCEPT_TIME_SEPARATOR_SERVER + this.f5896c.incrementAndGet(), this.d);
        bVar.setUncaughtExceptionHandler(new a());
        String str = this.f5894a;
        z.d(str, "[" + bVar.getName() + "] create a new thread: " + bVar.getId());
        return bVar;
    }
}
