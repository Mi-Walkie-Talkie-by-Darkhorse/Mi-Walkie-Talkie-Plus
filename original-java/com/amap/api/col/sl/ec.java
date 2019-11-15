package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Random;

/* compiled from: StatisticsManager */
public class ec {
    /* access modifiers changed from: private */
    public static WeakReference<dw> a;

    static /* synthetic */ void a(Context context, byte[] bArr) throws IOException {
        dw a2 = ed.a(a);
        ed.a(context, a2, ck.h, 1000, 307200, "2");
        if (a2.e == null) {
            a2.e = new cf();
        }
        try {
            dx.a(Integer.toString(new Random().nextInt(100)) + Long.toString(System.nanoTime()), bArr, a2);
        } catch (Throwable th) {
            cm.c(th, "stm", "wts");
        }
    }

    public static synchronized void a(final eb ebVar, final Context context) {
        synchronized (ec.class) {
            cm.d().submit(new Runnable() {
                public final void run() {
                    try {
                        synchronized (ec.class) {
                            ec.a(context, ebVar.a());
                        }
                    } catch (Throwable th) {
                        cm.c(th, "stm", "as");
                    }
                }
            });
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0009, code lost:
        if (r3.size() == 0) goto L_0x000b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void a(final java.util.List<com.amap.api.col.sl.eb> r3, final android.content.Context r4) {
        /*
            java.lang.Class<com.amap.api.col.sl.ec> r1 = com.amap.api.col.sl.ec.class
            monitor-enter(r1)
            if (r3 == 0) goto L_0x000b
            int r0 = r3.size()     // Catch:{ Throwable -> 0x000d }
            if (r0 != 0) goto L_0x000e
        L_0x000b:
            monitor-exit(r1)
            return
        L_0x000d:
            r0 = move-exception
        L_0x000e:
            java.util.concurrent.ExecutorService r0 = com.amap.api.col.sl.cm.d()     // Catch:{ all -> 0x001b }
            com.amap.api.col.sl.ec$2 r2 = new com.amap.api.col.sl.ec$2     // Catch:{ all -> 0x001b }
            r2.<init>(r3, r4)     // Catch:{ all -> 0x001b }
            r0.submit(r2)     // Catch:{ all -> 0x001b }
            goto L_0x000b
        L_0x001b:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.ec.a(java.util.List, android.content.Context):void");
    }

    public static void a(final Context context) {
        cm.d().submit(new Runnable() {
            public final void run() {
                try {
                    dw a2 = ed.a(ec.a);
                    ed.a(context, a2, ck.h, 1000, 307200, "2");
                    if (a2.g == null) {
                        a2.g = new ee(new ei(context, new ef(new ej(new el()))));
                    }
                    a2.h = 3600000;
                    if (TextUtils.isEmpty(a2.i)) {
                        a2.i = ck.a(context, "c.log");
                    }
                    if (a2.f == null) {
                        a2.f = new eo(a2.h, a2.i, new em(30, a2.a, new eq(context, false)));
                    }
                    dx.a(a2);
                } catch (Throwable th) {
                    cm.c(th, "stm", "usd");
                }
            }
        });
    }
}
