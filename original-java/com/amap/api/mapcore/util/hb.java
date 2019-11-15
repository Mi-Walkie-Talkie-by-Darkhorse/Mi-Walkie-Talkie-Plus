package com.amap.api.mapcore.util;

import android.content.Context;
import dalvik.system.DexFile;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BaseLoader */
abstract class hb extends ClassLoader {
    protected final Context a;
    protected final Map<String, Class<?>> b = new HashMap();
    protected DexFile c = null;
    volatile boolean d = true;
    protected fx e;
    protected String f;

    public hb(Context context, fx fxVar, boolean z) {
        super(context.getClassLoader());
        this.a = context;
        this.e = fxVar;
    }

    public boolean a() {
        return this.c != null;
    }

    /* access modifiers changed from: protected */
    public void b() {
        try {
            synchronized (this.b) {
                this.b.clear();
            }
            if (this.c != null) {
                this.c.close();
            }
        } catch (Throwable th) {
            hj.a(th, "BaseLoader", "releaseDexFile()");
        }
    }
}
