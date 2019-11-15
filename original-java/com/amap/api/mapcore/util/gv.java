package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.List;

/* compiled from: SDKDBOperation */
public class gv {
    private gl a;
    private Context b;

    public gv(Context context, boolean z) {
        this.b = context;
        this.a = a(this.b, z);
    }

    private gl a(Context context, boolean z) {
        try {
            return new gl(context, gl.a(gs.class));
        } catch (Throwable th) {
            if (!z) {
                gc.a(th, "sd", "gdb");
                return null;
            }
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public void a(fx fxVar) {
        if (fxVar != null) {
            try {
                if (this.a == null) {
                    this.a = a(this.b, false);
                }
                String a2 = fx.a(fxVar.a());
                List b2 = this.a.b(a2, fx.class);
                if (b2 == null || b2.size() == 0) {
                    this.a.a(fxVar);
                } else if (a(b2, fxVar)) {
                    this.a.a(a2, (Object) fxVar);
                }
            } catch (Throwable th) {
                gc.a(th, "sd", "it");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    private boolean a(List<fx> list, fx fxVar) {
        for (fx equals : list) {
            if (equals.equals(fxVar)) {
                return false;
            }
        }
        return true;
    }

    public List<fx> a() {
        boolean z = false;
        try {
            return this.a.a(fx.h(), fx.class, true);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return z;
        }
    }
}
