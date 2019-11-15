package com.xiaomi.push.service.timers;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.os.Build.VERSION;
import com.xiaomi.channel.commonutils.android.j;
import com.xiaomi.channel.commonutils.logger.b;

public final class a {
    private static C0072a a;

    /* renamed from: com.xiaomi.push.service.timers.a$a reason: collision with other inner class name */
    interface C0072a {
        void a();

        void a(boolean z);

        boolean b();
    }

    public static synchronized void a() {
        synchronized (a.class) {
            if (a != null) {
                a.a();
            }
        }
    }

    public static void a(Context context) {
        boolean z = false;
        Context applicationContext = context.getApplicationContext();
        if ("com.xiaomi.xmsf".equals(applicationContext.getPackageName())) {
            a = new b(applicationContext);
            return;
        }
        try {
            PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4);
            if (packageInfo.services != null) {
                ServiceInfo[] serviceInfoArr = packageInfo.services;
                int length = serviceInfoArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    ServiceInfo serviceInfo = serviceInfoArr[i];
                    if ("com.xiaomi.push.service.XMJobService".equals(serviceInfo.name) && "android.permission.BIND_JOB_SERVICE".equals(serviceInfo.permission)) {
                        z = true;
                        break;
                    }
                    i++;
                }
            }
        } catch (Exception e) {
            b.a("check service err : " + e.getMessage());
        }
        if (z || !j.b(applicationContext)) {
            if (VERSION.SDK_INT >= 21) {
            }
            a = new b(applicationContext);
            return;
        }
        throw new RuntimeException("Should export service: com.xiaomi.push.service.XMJobService with permission android.permission.BIND_JOB_SERVICE in AndroidManifest.xml file");
    }

    public static synchronized void a(boolean z) {
        synchronized (a.class) {
            if (a == null) {
                b.a("timer is not initialized");
            } else {
                a.a(z);
            }
        }
    }

    public static synchronized boolean b() {
        boolean b;
        synchronized (a.class) {
            b = a == null ? false : a.b();
        }
        return b;
    }
}
