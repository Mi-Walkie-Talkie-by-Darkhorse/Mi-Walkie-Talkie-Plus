package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.lang.Thread.UncaughtExceptionHandler;

/* compiled from: DynamicExceptionHandler */
public class he implements UncaughtExceptionHandler {
    private static he a;
    private UncaughtExceptionHandler b = Thread.getDefaultUncaughtExceptionHandler();
    private Context c;
    private fx d;

    private he(Context context, fx fxVar) {
        this.c = context.getApplicationContext();
        this.d = fxVar;
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    static synchronized he a(Context context, fx fxVar) {
        he heVar;
        synchronized (he.class) {
            if (a == null) {
                a = new he(context, fxVar);
            }
            heVar = a;
        }
        return heVar;
    }

    /* access modifiers changed from: 0000 */
    public void a(Throwable th) {
        String a2 = fy.a(th);
        try {
            if (TextUtils.isEmpty(a2)) {
                return;
            }
            if ((a2.contains("amapdynamic") || a2.contains("admic")) && a2.contains("com.amap.api")) {
                gl glVar = new gl(this.c, hf.a());
                if (a2.contains("loc")) {
                    hd.a(glVar, this.c, "loc");
                }
                if (a2.contains("navi")) {
                    hd.a(glVar, this.c, "navi");
                }
                if (a2.contains("sea")) {
                    hd.a(glVar, this.c, "sea");
                }
                if (a2.contains("2dmap")) {
                    hd.a(glVar, this.c, "2dmap");
                }
                if (a2.contains("3dmap")) {
                    hd.a(glVar, this.c, "3dmap");
                }
            } else if (a2.contains("com.autonavi.aps.amapapi.offline")) {
                hd.a(new gl(this.c, hf.a()), this.c, "OfflineLocation");
            } else if (a2.contains("com.data.carrier_v4")) {
                hd.a(new gl(this.c, hf.a()), this.c, "Collection");
            } else if (a2.contains("com.autonavi.aps.amapapi.httpdns") || a2.contains("com.autonavi.httpdns")) {
                hd.a(new gl(this.c, hf.a()), this.c, "HttpDNS");
            }
        } catch (Throwable th2) {
            gc.a(th2, "DynamicExceptionHandler", "uncaughtException");
        }
    }

    public void uncaughtException(Thread thread, Throwable th) {
        a(th);
        if (this.b != null) {
            this.b.uncaughtException(thread, th);
        }
    }
}
