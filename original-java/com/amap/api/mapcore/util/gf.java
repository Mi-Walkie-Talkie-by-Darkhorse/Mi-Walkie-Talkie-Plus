package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Looper;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: SDKLogHandler */
public class gf extends gc implements UncaughtExceptionHandler {
    private static ExecutorService e;
    private static Set<Integer> f = Collections.synchronizedSet(new HashSet());
    private static final ThreadFactory g = new ThreadFactory() {
        private final AtomicInteger a = new AtomicInteger(1);

        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "pama#" + this.a.getAndIncrement());
        }
    };
    /* access modifiers changed from: private */
    public Context d;

    /* compiled from: SDKLogHandler */
    private static class a implements ht {
        private Context a;

        a(Context context) {
            this.a = context;
        }

        public void a() {
            try {
                gd.b(this.a);
            } catch (Throwable th) {
                gc.a(th, "ll", "onc");
            }
        }
    }

    public static synchronized gf a(Context context, fx fxVar) throws fn {
        gf gfVar;
        synchronized (gf.class) {
            if (fxVar == null) {
                throw new fn("sdk info is null");
            } else if (fxVar.a() == null || "".equals(fxVar.a())) {
                throw new fn("sdk name is invalid");
            } else {
                try {
                    if (!f.add(Integer.valueOf(fxVar.hashCode()))) {
                        gfVar = (gf) gc.a;
                    } else {
                        if (gc.a == null) {
                            gc.a = new gf(context, fxVar);
                        } else {
                            gc.a.c = false;
                        }
                        gc.a.a(context, fxVar, gc.a.c);
                        gfVar = (gf) gc.a;
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
        return gfVar;
    }

    public static synchronized gf a() {
        gf gfVar;
        synchronized (gf.class) {
            gfVar = (gf) gc.a;
        }
        return gfVar;
    }

    public static void b(Throwable th, String str, String str2) {
        try {
            if (gc.a != null) {
                gc.a.a(th, 1, str, str2);
            }
        } catch (Throwable th2) {
        }
    }

    public static void a(fx fxVar, String str, String str2, String str3, String str4) {
        try {
            if (gc.a != null) {
                StringBuilder sb = new StringBuilder("path:");
                sb.append(str).append(",type:").append(str2).append(",gsid:").append(str3).append(",code:").append(str4);
                gc.a.a(fxVar, sb.toString(), "networkError");
            }
        } catch (Throwable th) {
        }
    }

    public static void a(fx fxVar, String str, fn fnVar) {
        if (fnVar != null) {
            a(fxVar, str, fnVar.c(), fnVar.d(), fnVar.b());
        }
    }

    public static void b(fx fxVar, String str, String str2) {
        try {
            if (gc.a != null) {
                gc.a.a(fxVar, str, str2);
            }
        } catch (Throwable th) {
        }
    }

    public static synchronized void b() {
        synchronized (gf.class) {
            try {
                if (e != null) {
                    e.shutdown();
                }
                hk.a();
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            try {
                if (!(gc.a == null || Thread.getDefaultUncaughtExceptionHandler() != gc.a || gc.a.b == null)) {
                    Thread.setDefaultUncaughtExceptionHandler(gc.a.b);
                }
                gc.a = null;
            } catch (Throwable th2) {
                ThrowableExtension.printStackTrace(th2);
            }
        }
        return;
    }

    public void uncaughtException(Thread thread, Throwable th) {
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
    public void a(fx fxVar, String str, String str2) {
        gd.a(this.d, fxVar, str, str2);
    }

    /* access modifiers changed from: protected */
    public void a(Throwable th, int i, String str, String str2) {
        gd.a(this.d, th, i, str, str2);
    }

    /* access modifiers changed from: protected */
    public void a(final Context context, final fx fxVar, final boolean z) {
        try {
            ExecutorService c = c();
            if (c != null && !c.isShutdown()) {
                c.submit(new Runnable() {
                    public void run() {
                        try {
                            synchronized (Looper.getMainLooper()) {
                                new gv(context, true).a(fxVar);
                            }
                            if (z) {
                                synchronized (Looper.getMainLooper()) {
                                    gw gwVar = new gw(context);
                                    gx gxVar = new gx();
                                    gxVar.c(true);
                                    gxVar.a(true);
                                    gxVar.b(true);
                                    gwVar.a(gxVar);
                                }
                                gd.a(gf.this.d);
                            }
                        } catch (Throwable th) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                });
            }
        } catch (RejectedExecutionException e2) {
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private gf(Context context, fx fxVar) {
        this.d = context;
        hs.a((ht) new a(context));
        d();
    }

    private void d() {
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

    public void c(Throwable th, String str, String str2) {
        if (th != null) {
            try {
                a(th, 1, str, str2);
            } catch (Throwable th2) {
                ThrowableExtension.printStackTrace(th2);
            }
        }
    }

    public static synchronized ExecutorService c() {
        ExecutorService executorService;
        synchronized (gf.class) {
            try {
                if (e == null || e.isShutdown()) {
                    e = Executors.newSingleThreadExecutor(g);
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            executorService = e;
        }
        return executorService;
    }
}
