package com.amap.api.col.sl;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.Thread.UncaughtExceptionHandler;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: SDKLogHandler */
public final class cm extends cj implements UncaughtExceptionHandler {
    private static ExecutorService e;
    private static Set<Integer> f = Collections.synchronizedSet(new HashSet());
    private static WeakReference<Context> g;
    private static final ThreadFactory h = new ThreadFactory() {
        private final AtomicInteger a = new AtomicInteger(1);

        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "pama#" + this.a.getAndIncrement());
        }
    };
    /* access modifiers changed from: private */
    public Context d;

    public static synchronized cm a(Context context, bz bzVar) throws bo {
        cm cmVar;
        synchronized (cm.class) {
            if (bzVar == null) {
                throw new bo("sdk info is null");
            } else if (bzVar.a() == null || "".equals(bzVar.a())) {
                throw new bo("sdk name is invalid");
            } else {
                try {
                    new co().a(context);
                    if (!f.add(Integer.valueOf(bzVar.hashCode()))) {
                        cmVar = (cm) cj.a;
                    } else {
                        if (cj.a == null) {
                            cj.a = new cm(context);
                        } else {
                            cj.a.c = false;
                        }
                        cj.a.a(context, bzVar, cj.a.c);
                        cmVar = (cm) cj.a;
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
        return cmVar;
    }

    public static synchronized void b() {
        synchronized (cm.class) {
            try {
                if (e != null) {
                    e.shutdown();
                }
                di.a();
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            try {
                if (!(cj.a == null || Thread.getDefaultUncaughtExceptionHandler() != cj.a || cj.a.b == null)) {
                    Thread.setDefaultUncaughtExceptionHandler(cj.a.b);
                }
                cj.a = null;
            } catch (Throwable th2) {
                ThrowableExtension.printStackTrace(th2);
            }
        }
        return;
    }

    /* access modifiers changed from: protected */
    public final void a(bz bzVar, String str, String str2) {
        cn.b(bzVar, this.d, str2, str);
    }

    /* access modifiers changed from: protected */
    public final void a(Throwable th, int i, String str, String str2) {
        cn.a(this.d, th, i, str, str2);
    }

    /* access modifiers changed from: protected */
    public final void a() {
        ck.b(this.d);
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        if (th != null) {
            a(th, 0, null, null);
            if (this.b != null) {
                try {
                    Thread.setDefaultUncaughtExceptionHandler(this.b);
                } catch (Throwable th2) {
                }
                this.b.uncaughtException(thread, th);
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void a(final Context context, final bz bzVar, final boolean z) {
        try {
            ExecutorService d2 = d();
            if (d2 != null && !d2.isShutdown()) {
                d2.submit(new Runnable() {
                    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
                    /* Code decompiled incorrectly, please refer to instructions dump. */
                    public final void run() {
                        /*
                            r4 = this;
                            android.os.Looper r1 = android.os.Looper.getMainLooper()     // Catch:{ Throwable -> 0x0024 }
                            monitor-enter(r1)     // Catch:{ Throwable -> 0x0024 }
                            com.amap.api.col.sl.cv r0 = new com.amap.api.col.sl.cv     // Catch:{ all -> 0x0021 }
                            android.content.Context r2 = r3     // Catch:{ all -> 0x0021 }
                            r3 = 1
                            r0.<init>(r2, r3)     // Catch:{ all -> 0x0021 }
                            com.amap.api.col.sl.bz r2 = r4     // Catch:{ all -> 0x0021 }
                            r0.a(r2)     // Catch:{ all -> 0x0021 }
                            monitor-exit(r1)     // Catch:{ all -> 0x0021 }
                            boolean r0 = r5     // Catch:{ Throwable -> 0x0024 }
                            if (r0 == 0) goto L_0x0020
                            com.amap.api.col.sl.cm r0 = com.amap.api.col.sl.cm.this     // Catch:{ Throwable -> 0x0024 }
                            android.content.Context r0 = r0.d     // Catch:{ Throwable -> 0x0024 }
                            com.amap.api.col.sl.cn.a(r0)     // Catch:{ Throwable -> 0x0024 }
                        L_0x0020:
                            return
                        L_0x0021:
                            r0 = move-exception
                            monitor-exit(r1)     // Catch:{ Throwable -> 0x0024 }
                            throw r0     // Catch:{ Throwable -> 0x0024 }
                        L_0x0024:
                            r0 = move-exception
                            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                            goto L_0x0020
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.cm.AnonymousClass1.run():void");
                    }
                });
            }
        } catch (RejectedExecutionException e2) {
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void b(Throwable th, String str, String str2) {
        if (th != null) {
            try {
                a(th, 1, str, str2);
            } catch (Throwable th2) {
                ThrowableExtension.printStackTrace(th2);
            }
        }
    }

    private cm(Context context) {
        this.d = context;
        try {
            this.b = Thread.getDefaultUncaughtExceptionHandler();
            if (this.b == null) {
                Thread.setDefaultUncaughtExceptionHandler(this);
                this.c = true;
                return;
            }
            String obj = this.b.toString();
            if (obj.indexOf("com.amap.api") == -1 && obj.indexOf("com.loc") == -1) {
                Thread.setDefaultUncaughtExceptionHandler(this);
                this.c = true;
                return;
            }
            this.c = false;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public static void c() {
        if (g != null && g.get() != null) {
            ck.b((Context) g.get());
        } else if (cj.a != null) {
            cj.a.a();
        }
    }

    public static void c(Throwable th, String str, String str2) {
        try {
            if (cj.a != null) {
                cj.a.a(th, 1, str, str2);
            }
        } catch (Throwable th2) {
        }
    }

    public static void a(bz bzVar, String str, String str2, String str3, String str4) {
        try {
            if (cj.a != null) {
                StringBuilder sb = new StringBuilder("path:");
                sb.append(str).append(",type:").append(str2).append(",gsid:").append(str3).append(",code:").append(str4);
                cj.a.a(bzVar, sb.toString(), "networkError");
            }
        } catch (Throwable th) {
        }
    }

    public static void b(bz bzVar, String str, String str2) {
        try {
            if (cj.a != null) {
                cj.a.a(bzVar, str, str2);
            }
        } catch (Throwable th) {
        }
    }

    public static void a(bz bzVar, String str, bo boVar) {
        if (boVar != null) {
            a(bzVar, str, boVar.c(), boVar.d(), boVar.b());
        }
    }

    public static synchronized ExecutorService d() {
        ExecutorService executorService;
        synchronized (cm.class) {
            try {
                if (e == null || e.isShutdown()) {
                    e = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(256), h);
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            executorService = e;
        }
        return executorService;
    }

    public static synchronized cm e() {
        cm cmVar;
        synchronized (cm.class) {
            cmVar = (cm) cj.a;
        }
        return cmVar;
    }
}
