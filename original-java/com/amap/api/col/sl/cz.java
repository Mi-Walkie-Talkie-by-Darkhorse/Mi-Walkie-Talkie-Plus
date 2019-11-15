package com.amap.api.col.sl;

import android.content.Context;
import dalvik.system.DexFile;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BaseLoader */
abstract class cz extends ClassLoader {
    protected final Context a;
    protected final Map<String, Class<?>> b = new HashMap();
    protected DexFile c = null;
    volatile boolean d = true;
    protected bz e;
    protected String f;
    protected volatile boolean g = false;
    protected volatile boolean h = false;

    public cz(Context context, bz bzVar) {
        super(context.getClassLoader());
        this.a = context;
        this.e = bzVar;
    }

    public final boolean a() {
        return this.c != null;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b() {
        /*
            r3 = this;
            java.util.Map<java.lang.String, java.lang.Class<?>> r1 = r3.b     // Catch:{ Throwable -> 0x0026 }
            monitor-enter(r1)     // Catch:{ Throwable -> 0x0026 }
            java.util.Map<java.lang.String, java.lang.Class<?>> r0 = r3.b     // Catch:{ all -> 0x0023 }
            r0.clear()     // Catch:{ all -> 0x0023 }
            monitor-exit(r1)     // Catch:{ all -> 0x0023 }
            dalvik.system.DexFile r0 = r3.c     // Catch:{ Throwable -> 0x0026 }
            if (r0 == 0) goto L_0x0022
            boolean r0 = r3.h     // Catch:{ Throwable -> 0x0026 }
            if (r0 == 0) goto L_0x001a
            dalvik.system.DexFile r1 = r3.c     // Catch:{ Throwable -> 0x0026 }
            monitor-enter(r1)     // Catch:{ Throwable -> 0x0026 }
            dalvik.system.DexFile r0 = r3.c     // Catch:{ all -> 0x002f }
            r0.wait()     // Catch:{ all -> 0x002f }
            monitor-exit(r1)     // Catch:{ all -> 0x002f }
        L_0x001a:
            r0 = 1
            r3.g = r0     // Catch:{ Throwable -> 0x0026 }
            dalvik.system.DexFile r0 = r3.c     // Catch:{ Throwable -> 0x0026 }
            r0.close()     // Catch:{ Throwable -> 0x0026 }
        L_0x0022:
            return
        L_0x0023:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ Throwable -> 0x0026 }
            throw r0     // Catch:{ Throwable -> 0x0026 }
        L_0x0026:
            r0 = move-exception
            java.lang.String r1 = "BaseLoader"
            java.lang.String r2 = "releaseDexFile()"
            com.amap.api.col.sl.cj.a(r0, r1, r2)
            goto L_0x0022
        L_0x002f:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ Throwable -> 0x0026 }
            throw r0     // Catch:{ Throwable -> 0x0026 }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.cz.b():void");
    }
}
