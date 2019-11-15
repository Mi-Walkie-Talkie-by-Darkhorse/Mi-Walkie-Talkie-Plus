package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.android.b;
import com.xiaomi.metoknlp.geofencing.a;
import com.xiaomi.push.service.e;
import com.xiaomi.xmpush.thrift.k;
import com.xiaomi.xmpush.thrift.m;
import java.util.ArrayList;
import java.util.Iterator;

public class h {
    private final int a = -1;
    private final double b = 0.0d;
    private a c;
    private Context d;

    public h(Context context) {
        this.d = context;
        a();
    }

    private void a() {
        this.c = new a(this.d);
    }

    public static boolean a(Context context) {
        if (!context.getSharedPreferences(MiPushClient.PREF_EXTRA, 0).getBoolean(Constants.GEO_NEED_REFRESHED, true)) {
            return false;
        }
        return com.xiaomi.push.service.h.a(context);
    }

    public static void b(Context context) {
        ArrayList a2 = e.a(context).a();
        if (a2 != null) {
            h hVar = new h(context);
            Iterator it = a2.iterator();
            while (it.hasNext()) {
                k kVar = (k) it.next();
                if (b.g(context, kVar.g())) {
                    hVar.a(kVar);
                }
            }
            context.getSharedPreferences(MiPushClient.PREF_EXTRA, 0).edit().putBoolean(Constants.GEO_NEED_REFRESHED, false).commit();
        }
    }

    public void a(String str) {
        this.c.a(this.d, "com.xiaomi.xmsf", str);
    }

    public boolean a(k kVar) {
        if (kVar == null) {
            return false;
        }
        if (kVar.m() != null && kVar.o() > 0.0d) {
            m m = kVar.m();
            this.c.a(this.d, m.c(), m.a(), (float) kVar.o(), -1, "com.xiaomi.xmsf", kVar.a(), kVar.s().name());
        }
        return true;
    }
}
