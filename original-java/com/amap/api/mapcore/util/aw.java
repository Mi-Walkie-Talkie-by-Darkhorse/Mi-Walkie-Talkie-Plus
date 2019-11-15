package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.AMap;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

/* compiled from: TaskManager */
public class aw {
    private static aw a;
    private ie b;
    private LinkedHashMap<String, Cif> c = new LinkedHashMap<>();
    private boolean d = true;

    public static aw a(int i) {
        return a(true, i);
    }

    private static synchronized aw a(boolean z, int i) {
        aw awVar;
        synchronized (aw.class) {
            try {
                if (a == null) {
                    a = new aw(z, i);
                } else if (z) {
                    if (a.b == null) {
                        a.b = ie.a(i);
                    }
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            awVar = a;
        }
        return awVar;
    }

    private aw(boolean z, int i) {
        if (z) {
            try {
                this.b = ie.a(i);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void a() {
        synchronized (this.c) {
            if (this.c.size() >= 1) {
                for (Entry entry : this.c.entrySet()) {
                    entry.getKey();
                    ((as) entry.getValue()).b();
                }
                this.c.clear();
            }
        }
    }

    public void a(av avVar) {
        synchronized (this.c) {
            as asVar = (as) this.c.get(avVar.b());
            if (asVar != null) {
                asVar.b();
                this.c.remove(avVar.b());
            }
        }
    }

    public void a(av avVar, Context context, AMap aMap) throws fn {
        if (this.b == null) {
        }
        if (!this.c.containsKey(avVar.b())) {
            as asVar = new as((bl) avVar, context.getApplicationContext(), aMap);
            synchronized (this.c) {
                this.c.put(avVar.b(), asVar);
            }
        }
        this.b.a((Cif) this.c.get(avVar.b()));
    }

    public void b() {
        a();
        ie ieVar = this.b;
        ie.a();
        this.b = null;
        c();
    }

    public static void c() {
        a = null;
    }

    public void b(av avVar) {
        as asVar = (as) this.c.get(avVar.b());
        if (asVar != null) {
            synchronized (this.c) {
                asVar.c();
                this.c.remove(avVar.b());
            }
        }
    }
}
