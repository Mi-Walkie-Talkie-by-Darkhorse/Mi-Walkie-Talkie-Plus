package com.xiaomi.mistatistic.sdk;

import com.xiaomi.mistatistic.sdk.controller.c;
import com.xiaomi.mistatistic.sdk.controller.d;
import com.xiaomi.mistatistic.sdk.controller.f;
import com.xiaomi.mistatistic.sdk.controller.k;
import com.xiaomi.mistatistic.sdk.controller.l;

public class CustomSettings {
    private static boolean a = false;
    private static boolean b = false;
    private static boolean c = true;
    private static boolean d = false;
    private static boolean e = false;

    static class a implements com.xiaomi.mistatistic.sdk.controller.d.a {
        a() {
        }

        public void a() {
            new f().c(System.currentTimeMillis() + 1000);
        }
    }

    public static void setAppVersion(String str) {
        c.a(str);
    }

    public static void setPackageName(String str) {
        c.b(str);
    }

    public static void addCustomEvent(String str) {
        MiStatInterface.recordCustomEvent(str);
    }

    public static void clearData() {
        k.b(c.a());
        d.a().a((com.xiaomi.mistatistic.sdk.controller.d.a) new a());
    }

    public static void setUseSystemUploadingService(boolean z) {
        a = z;
    }

    public static boolean isUseSystemUploadingService() {
        return a;
    }

    public static void setUseSystemStatService(boolean z) {
        if (!z || (c.a().getApplicationInfo().flags & 1) != 0) {
            b = z;
        }
    }

    public static boolean isUseSystemStatService() {
        return b;
    }

    public static void setDataUploadingEnabled(boolean z) {
        c = z;
        if (z) {
            new l().a();
        }
    }

    public static boolean isDataUploadingEnabled() {
        return c;
    }

    public static boolean isUploadInstalledPackageEnabled() {
        return d;
    }

    public static void setUploadInstalledPackageEnabled(boolean z) {
        d = z;
    }

    public static boolean isUploadForegroundPackageEnabled() {
        return e;
    }

    public static void setUploadForegroundPackageEnabled(boolean z) {
        e = z;
    }

    public static void enableMultiProcess(String str) {
        f.b = true;
        f.a = str;
    }
}
