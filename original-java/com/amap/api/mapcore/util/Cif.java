package com.amap.api.mapcore.util;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* renamed from: com.amap.api.mapcore.util.if reason: invalid class name */
/* compiled from: ThreadTask */
public abstract class Cif implements Runnable {
    a d;

    /* renamed from: com.amap.api.mapcore.util.if$a */
    /* compiled from: ThreadTask */
    interface a {
        void a(Cif ifVar);

        void b(Cif ifVar);

        void c(Cif ifVar);
    }

    public abstract void a();

    public final void run() {
        try {
            if (this.d != null) {
                this.d.a(this);
            }
            if (!Thread.interrupted()) {
                a();
                if (!Thread.interrupted() && this.d != null) {
                    this.d.b(this);
                }
            }
        } catch (Throwable th) {
            gf.b(th, "ThreadTask", "run");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void e() {
        try {
            if (this.d != null) {
                this.d.c(this);
            }
        } catch (Throwable th) {
            gf.b(th, "ThreadTask", "cancelTask");
            ThrowableExtension.printStackTrace(th);
        }
    }
}
