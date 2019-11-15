package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: LoaderFactory */
public final class dg {
    private static final dg a = new dg();
    private static final ThreadFactory d = new ThreadFactory() {
        private final AtomicInteger a = new AtomicInteger(1);

        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "amapD#" + this.a.getAndIncrement());
        }
    };
    private final Map<String, cz> b = new HashMap();
    private final Map<String, a> c = new HashMap();
    private ExecutorService e = null;

    /* compiled from: LoaderFactory */
    class a {
        volatile boolean a = false;
        volatile boolean b = false;

        a() {
        }
    }

    private dg() {
    }

    /* access modifiers changed from: 0000 */
    public final ExecutorService a() {
        try {
            if (this.e == null || this.e.isShutdown()) {
                this.e = Executors.newSingleThreadExecutor(d);
            }
        } catch (Throwable th) {
        }
        return this.e;
    }

    public static dg b() {
        return a;
    }

    /* access modifiers changed from: 0000 */
    public final a a(bz bzVar) {
        a aVar;
        synchronized (this.c) {
            if (!b(bzVar)) {
                aVar = null;
            } else {
                String a2 = bzVar.a();
                aVar = (a) this.c.get(a2);
                if (aVar == null) {
                    try {
                        a aVar2 = new a();
                        try {
                            this.c.put(a2, aVar2);
                            aVar = aVar2;
                        } catch (Throwable th) {
                            aVar = aVar2;
                        }
                    } catch (Throwable th2) {
                    }
                }
            }
        }
        return aVar;
    }

    /* access modifiers changed from: 0000 */
    public final cz a(Context context, bz bzVar) throws Exception {
        cz czVar;
        if (!b(bzVar) || context == null) {
            return null;
        }
        String a2 = bzVar.a();
        synchronized (this.b) {
            czVar = (cz) this.b.get(a2);
            if (czVar == null) {
                try {
                    cz deVar = new de(context.getApplicationContext(), bzVar);
                    try {
                        this.b.put(a2, deVar);
                        dc.a(context, bzVar);
                        czVar = deVar;
                    } catch (Throwable th) {
                        czVar = deVar;
                    }
                } catch (Throwable th2) {
                }
            }
        }
        return czVar;
    }

    private static boolean b(bz bzVar) {
        if (bzVar == null || TextUtils.isEmpty(bzVar.b()) || TextUtils.isEmpty(bzVar.a())) {
            return false;
        }
        return true;
    }
}
