package com.xiaomi.push.service;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.metoknlp.geofencing.a;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.xmpush.thrift.k;
import java.util.ArrayList;
import java.util.Iterator;

public class h {
    public static void a(Context context, String str) {
        ArrayList b = e.a(context).b(str);
        if (b != null && b.size() >= 1) {
            if (e.a(context).e(str) == 0) {
                b.a("appIsUninstalled. failed to delete geofencing with package name. name:" + str);
            }
            Iterator it = b.iterator();
            while (it.hasNext()) {
                k kVar = (k) it.next();
                if (kVar == null) {
                    b.a("appIsUninstalled. failed to find geofence with package name. name:" + str);
                    return;
                }
                a(kVar.a(), context);
                if (g.a(context).b(kVar.a()) == 0) {
                    b.a("appIsUninstalled. failed to delete geoMessage with package name. name:" + str + ", geoId:" + kVar.a());
                }
            }
        }
    }

    public static void a(String str, Context context) {
        new a(context).a(context, "com.xiaomi.xmsf", str);
    }

    public static boolean a(Context context) {
        return a(context, "com.xiaomi.metoknlp", 6);
    }

    public static boolean a(Context context, String str, int i) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo != null && packageInfo.versionCode >= i;
    }

    public static boolean b(Context context) {
        return a(context, "com.xiaomi.xmsf", 106) && (a(context, "com.xiaomi.metok", 20) || a(context, "com.xiaomi.metoknlp", 6));
    }

    public static boolean c(Context context) {
        return TextUtils.equals(context.getPackageName(), "com.xiaomi.xmsf");
    }

    public static boolean d(Context context) {
        return a(context);
    }

    public static boolean e(Context context) {
        return ax.a(context).a(MiPushClient.PREF_EXTRA, "geo_switch", false);
    }
}
