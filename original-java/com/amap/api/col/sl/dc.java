package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import java.lang.Thread.UncaughtExceptionHandler;

/* compiled from: DynamicExceptionHandler */
public final class dc implements UncaughtExceptionHandler {
    private static dc a;
    private UncaughtExceptionHandler b = Thread.getDefaultUncaughtExceptionHandler();
    private Context c;
    private bz d;

    private dc(Context context, bz bzVar) {
        this.c = context.getApplicationContext();
        this.d = bzVar;
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    static synchronized dc a(Context context, bz bzVar) {
        dc dcVar;
        synchronized (dc.class) {
            if (a == null) {
                a = new dc(context, bzVar);
            }
            dcVar = a;
        }
        return dcVar;
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        String a2 = ca.a(th);
        try {
            if (!TextUtils.isEmpty(a2)) {
                if ((a2.contains("amapdynamic") || a2.contains("admic")) && a2.contains("com.amap.api")) {
                    cq cqVar = new cq(this.c, dd.b());
                    if (a2.contains("loc")) {
                        db.a(cqVar, this.c, "loc");
                    }
                    if (a2.contains("navi")) {
                        db.a(cqVar, this.c, "navi");
                    }
                    if (a2.contains("sea")) {
                        db.a(cqVar, this.c, "sea");
                    }
                    if (a2.contains("2dmap")) {
                        db.a(cqVar, this.c, "2dmap");
                    }
                    if (a2.contains("3dmap")) {
                        db.a(cqVar, this.c, "3dmap");
                    }
                } else if (a2.contains("com.autonavi.aps.amapapi.offline")) {
                    db.a(new cq(this.c, dd.b()), this.c, "OfflineLocation");
                } else if (a2.contains("com.data.carrier_v4")) {
                    db.a(new cq(this.c, dd.b()), this.c, "Collection");
                } else if (a2.contains("com.autonavi.aps.amapapi.httpdns") || a2.contains("com.autonavi.httpdns")) {
                    db.a(new cq(this.c, dd.b()), this.c, "HttpDNS");
                } else if (a2.contains("com.amap.api.aiunet")) {
                    db.a(new cq(this.c, dd.b()), this.c, "aiu");
                }
            }
        } catch (Throwable th2) {
            cj.a(th2, "DynamicExceptionHandler", "uncaughtException");
        }
        if (this.b != null) {
            this.b.uncaughtException(thread, th);
        }
    }
}
