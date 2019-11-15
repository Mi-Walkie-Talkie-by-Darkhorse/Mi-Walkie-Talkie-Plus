package com.amap.api.col.sl;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.Iterator;
import java.util.List;

/* compiled from: SDKDBOperation */
public final class cv {
    private cq a;
    private Context b;

    public cv(Context context, boolean z) {
        this.b = context;
        this.a = a(this.b, z);
    }

    private static cq a(Context context, boolean z) {
        try {
            return new cq(context, cq.a(cu.class));
        } catch (Throwable th) {
            if (!z) {
                cm.c(th, "sd", "gdb");
            }
            return null;
        }
    }

    public final void a(bz bzVar) {
        boolean z;
        if (bzVar != null) {
            try {
                if (this.a == null) {
                    this.a = a(this.b, false);
                }
                String a2 = bz.a(bzVar.a());
                List b2 = this.a.b(a2, bz.class);
                if (b2 == null || b2.size() == 0) {
                    this.a.a(bzVar);
                    return;
                }
                Iterator it = b2.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((bz) it.next()).equals(bzVar)) {
                            z = false;
                            break;
                        }
                    } else {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    this.a.a(a2, (Object) bzVar);
                }
            } catch (Throwable th) {
                cm.c(th, "sd", "it");
            }
        }
    }

    public final List<bz> a() {
        boolean z = false;
        try {
            return this.a.a(bz.g(), bz.class, true);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return z;
        }
    }
}
