package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.mapcore.util.cy.a;
import com.amap.api.maps.MapsInitializer;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: CustomStyleTask */
public class cz implements Runnable {
    private Context a;
    private l b;
    private cy c;
    private Thread d;

    public cz(Context context, l lVar) {
        this.a = context;
        this.b = lVar;
        if (this.c == null) {
            this.c = new cy(this.a, "");
        }
    }

    public void a(String str) {
        if (this.c != null) {
            this.c.b(str);
        }
    }

    public void run() {
        try {
            if (MapsInitializer.getNetWorkEnable()) {
                if (this.c != null) {
                    a aVar = (a) this.c.d();
                    if (!(aVar == null || aVar.a == null || this.b == null)) {
                        this.b.a(this.b.getMapConfig().isCustomStyleEnable(), aVar.a);
                    }
                }
                gf.a(this.a, ee.e());
                this.b.setRunLowFrame(false);
            }
        } catch (Throwable th) {
            gf.b(th, "CustomStyleTask", "download customStyle");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void a() {
        if (this.d != null) {
            this.d.interrupt();
        }
        this.a = null;
        if (this.c != null) {
            this.c = null;
        }
    }

    public void b() {
        if (this.d != null) {
            this.d.interrupt();
        }
        this.d = new Thread(this);
        this.d.start();
    }
}
