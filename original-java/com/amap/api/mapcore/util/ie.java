package com.amap.api.mapcore.util;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* compiled from: ThreadPool */
public final class ie {
    private static ie a = null;
    private ExecutorService b;
    private ConcurrentHashMap<Cif, Future<?>> c = new ConcurrentHashMap<>();
    private a d = new a() {
        public void a(Cif ifVar) {
        }

        public void b(Cif ifVar) {
            ie.this.a(ifVar, false);
        }

        public void c(Cif ifVar) {
            ie.this.a(ifVar, true);
        }
    };

    public static synchronized ie a(int i) {
        ie ieVar;
        synchronized (ie.class) {
            if (a == null) {
                a = new ie(i);
            }
            ieVar = a;
        }
        return ieVar;
    }

    private ie(int i) {
        try {
            this.b = Executors.newFixedThreadPool(i);
        } catch (Throwable th) {
            gf.b(th, "TPool", "ThreadPool");
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(com.amap.api.mapcore.util.Cif r4) throws com.amap.api.mapcore.util.fn {
        /*
            r3 = this;
            boolean r0 = r3.b(r4)     // Catch:{ Throwable -> 0x0023 }
            if (r0 == 0) goto L_0x0007
        L_0x0006:
            return
        L_0x0007:
            java.util.concurrent.ExecutorService r0 = r3.b     // Catch:{ Throwable -> 0x0023 }
            if (r0 == 0) goto L_0x0006
            java.util.concurrent.ExecutorService r0 = r3.b     // Catch:{ Throwable -> 0x0023 }
            boolean r0 = r0.isShutdown()     // Catch:{ Throwable -> 0x0023 }
            if (r0 != 0) goto L_0x0006
            com.amap.api.mapcore.util.if$a r0 = r3.d     // Catch:{ Throwable -> 0x0023 }
            r4.d = r0     // Catch:{ Throwable -> 0x0023 }
            java.util.concurrent.ExecutorService r0 = r3.b     // Catch:{ RejectedExecutionException -> 0x0036 }
            java.util.concurrent.Future r0 = r0.submit(r4)     // Catch:{ RejectedExecutionException -> 0x0036 }
            if (r0 == 0) goto L_0x0006
            r3.a(r4, r0)     // Catch:{ Throwable -> 0x0023 }
            goto L_0x0006
        L_0x0023:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            java.lang.String r1 = "TPool"
            java.lang.String r2 = "addTask"
            com.amap.api.mapcore.util.gf.b(r0, r1, r2)
            com.amap.api.mapcore.util.fn r0 = new com.amap.api.mapcore.util.fn
            java.lang.String r1 = "thread pool has exception"
            r0.<init>(r1)
            throw r0
        L_0x0036:
            r0 = move-exception
            goto L_0x0006
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ie.a(com.amap.api.mapcore.util.if):void");
    }

    public static synchronized void a() {
        synchronized (ie.class) {
            try {
                if (a != null) {
                    a.b();
                    a = null;
                }
            } catch (Throwable th) {
                gf.b(th, "TPool", "onDestroy");
                ThrowableExtension.printStackTrace(th);
            }
        }
        return;
    }

    private void b() {
        try {
            for (Entry key : this.c.entrySet()) {
                Future future = (Future) this.c.get((Cif) key.getKey());
                if (future != null) {
                    future.cancel(true);
                }
            }
            this.c.clear();
            this.b.shutdown();
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        } catch (Throwable th) {
            gf.b(th, "TPool", "destroy");
            ThrowableExtension.printStackTrace(th);
        }
    }

    private synchronized boolean b(Cif ifVar) {
        boolean z;
        z = false;
        try {
            z = this.c.containsKey(ifVar);
        } catch (Throwable th) {
            gf.b(th, "TPool", "contain");
            ThrowableExtension.printStackTrace(th);
        }
        return z;
    }

    private synchronized void a(Cif ifVar, Future<?> future) {
        try {
            this.c.put(ifVar, future);
        } catch (Throwable th) {
            gf.b(th, "TPool", "addQueue");
            ThrowableExtension.printStackTrace(th);
        }
        return;
    }

    /* access modifiers changed from: private */
    public synchronized void a(Cif ifVar, boolean z) {
        try {
            Future future = (Future) this.c.remove(ifVar);
            if (z && future != null) {
                future.cancel(true);
            }
        } catch (Throwable th) {
            gf.b(th, "TPool", "removeQueue");
            ThrowableExtension.printStackTrace(th);
        }
        return;
    }
}
