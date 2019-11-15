package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.List;

/* compiled from: LogDBOperation */
public class gt {
    private gl a;

    public gt(Context context) {
        try {
            this.a = new gl(context, gl.a(gs.class));
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void a(String str, Class<? extends gu> cls) {
        try {
            c(str, cls);
        } catch (Throwable th) {
            gc.a(th, "lgd", "dl");
        }
    }

    public void b(String str, Class<? extends gu> cls) {
        try {
            c(str, cls);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void c(String str, Class<? extends gu> cls) {
        this.a.a(gu.c(str), cls);
    }

    public List<? extends gu> a(int i, Class<? extends gu> cls) {
        boolean z = false;
        try {
            return this.a.b(gu.c(i), cls);
        } catch (Throwable th) {
            gc.a(th, "lgd", "bst");
            return z;
        }
    }

    public void a(gu guVar) {
        if (guVar != null) {
            String c = gu.c(guVar.b());
            List a2 = this.a.a(c, guVar.getClass(), true);
            if (a2 == null || a2.size() == 0) {
                this.a.a(guVar, true);
                return;
            }
            gu guVar2 = (gu) a2.get(0);
            if (guVar.a() == 0) {
                guVar2.b(guVar2.c() + 1);
            } else {
                guVar2.b(0);
            }
            this.a.a(c, (Object) guVar2, true);
        }
    }

    public void b(gu guVar) {
        try {
            this.a.a(gu.c(guVar.b()), (Object) guVar);
        } catch (Throwable th) {
            gc.a(th, "lgd", "ui");
        }
    }
}
