package com.amap.api.col.sl;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import java.lang.ref.WeakReference;

/* compiled from: OfflineLocManager */
public class ea {
    static int a = 1000;
    static boolean b = false;
    /* access modifiers changed from: private */
    public static WeakReference<dw> c;

    public static synchronized void a(int i, boolean z) {
        synchronized (ea.class) {
            a = i;
            b = z;
        }
    }

    public static synchronized void a(final dz dzVar, final Context context) {
        synchronized (ea.class) {
            cm.d().submit(new Runnable() {
                public final void run() {
                    try {
                        synchronized (ea.class) {
                            String l = Long.toString(System.currentTimeMillis());
                            dw a2 = ed.a(ea.c);
                            ed.a(context, a2, ck.i, ea.a, 2097152, Constants.VIA_SHARE_TYPE_INFO);
                            if (a2.e == null) {
                                a2.e = new cc(new ce(new cg(new ce())));
                            }
                            dx.a(l, dzVar.a(), a2);
                        }
                    } catch (Throwable th) {
                        cm.c(th, "ofm", "aple");
                    }
                }
            });
        }
    }

    public static void a(final Context context) {
        cm.d().submit(new Runnable() {
            public final void run() {
                try {
                    dw a2 = ed.a(ea.c);
                    ed.a(context, a2, ck.i, ea.a, 2097152, Constants.VIA_SHARE_TYPE_INFO);
                    a2.h = 14400000;
                    if (a2.g == null) {
                        cc ccVar = new cc(new ce(new cg()));
                        a2.g = new eh(new eg(context, new el(), ccVar, new String(ch.a(10)), bp.f(context), bu.t(context), bu.l(context), bu.h(context), bu.a(), Build.MANUFACTURER, Build.DEVICE, bu.u(context), bp.c(context), Build.MODEL, bp.d(context), bp.b(context)));
                    }
                    if (TextUtils.isEmpty(a2.i)) {
                        a2.i = ck.a(context, "f.log");
                    }
                    if (a2.f == null) {
                        a2.f = new eo(a2.h, a2.i, new eq(context, ea.b));
                    }
                    dx.a(a2);
                } catch (Throwable th) {
                    cm.c(th, "ofm", "uold");
                }
            }
        });
    }
}
