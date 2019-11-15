package com.xiaomi.mistatistic.sdk;

import android.content.ContentResolver;
import android.content.Context;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import com.xiaomi.mistatistic.sdk.controller.c;
import com.xiaomi.mistatistic.sdk.controller.h;
import com.xiaomi.mistatistic.sdk.controller.q;
import java.lang.reflect.Method;

public class BuildSetting {
    private static boolean a = false;
    private static boolean b = false;
    private static Boolean c = null;
    private static boolean d = true;
    private static long e = 60000;
    private static long f = 0;

    public static void setTest(boolean z) {
        a = z;
    }

    public static boolean isTest() {
        return a;
    }

    public static void enableSelfStats() {
        b = true;
    }

    public static boolean isSelfStats() {
        return b;
    }

    public static boolean isDisabled(Context context) {
        boolean z = false;
        if (!d) {
            h.b("isDisabled false, sRespectUEP " + d);
            return false;
        }
        if (c == null || q.a(f, e)) {
            if (!q.d(context) || !q.e(context)) {
                c = Boolean.valueOf(false);
                h.b("isDisabled false, not miui app or OS ");
            } else {
                if (!isUserExperienceProgramEnabled(context)) {
                    z = true;
                }
                c = Boolean.valueOf(z);
            }
            f = System.currentTimeMillis();
        }
        return c.booleanValue();
    }

    public static boolean isUserExperienceProgramEnabled(Context context) {
        boolean z;
        try {
            Method declaredMethod = Class.forName("android.provider.MiuiSettings$Secure").getDeclaredMethod("isUserExperienceProgramEnable", new Class[]{ContentResolver.class});
            declaredMethod.setAccessible(true);
            z = ((Boolean) declaredMethod.invoke(null, new Object[]{context.getContentResolver()})).booleanValue();
        } catch (Exception e2) {
            h.b("BS", "isUserExperienceProgramEnable exception:", (Throwable) e2);
            z = true;
        }
        h.b("UEP " + z);
        return z;
    }

    public static boolean isUploadDebugLogEnable(Context context) {
        Throwable e2;
        boolean z;
        try {
            Method declaredMethod = Class.forName("android.provider.MiuiSettings$Secure").getDeclaredMethod("isUploadDebugLogEnable", new Class[]{ContentResolver.class});
            declaredMethod.setAccessible(true);
            z = ((Boolean) declaredMethod.invoke(null, new Object[]{context.getContentResolver()})).booleanValue();
            try {
                h.a("isUploadDebugLogEnable: " + z);
            } catch (Exception e3) {
                e2 = e3;
                h.b("BS", "isUploadDebugLogEnable exception:", e2);
                return z;
            }
        } catch (Exception e4) {
            Throwable th = e4;
            z = true;
            e2 = th;
        }
        return z;
    }

    public static void disableUEPChecking() {
        d = false;
    }

    public static boolean isCTABuild() {
        try {
            if (q.d(c.a())) {
                return ((Boolean) Class.forName("miui.os.Build").getField("IS_CTA_BUILD").get(null)).booleanValue();
            }
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    private static boolean a() {
        try {
            if (!q.d(c.a())) {
                return false;
            }
            Object obj = Class.forName("miui.os.Build").getField("IS_ALPHA_BUILD").get(null);
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            return false;
        } catch (Exception e2) {
        }
    }

    private static boolean b() {
        try {
            if (!q.d(c.a())) {
                return false;
            }
            Object obj = Class.forName("miui.os.Build").getField("IS_DEVELOPMENT_VERSION").get(null);
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            return false;
        } catch (Exception e2) {
        }
    }

    private static boolean c() {
        try {
            if (!q.d(c.a())) {
                return false;
            }
            Object obj = Class.forName("miui.os.Build").getField("IS_STABLE_VERSION").get(null);
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            return false;
        } catch (Exception e2) {
        }
    }

    public static boolean isInternationalBuild() {
        try {
            return ((Boolean) Class.forName("miui.os.Build").getField("IS_INTERNATIONAL_BUILD").get(null)).booleanValue();
        } catch (Exception e2) {
            return false;
        }
    }

    public static String getMiuiBuildCode() {
        if (c()) {
            return "S";
        }
        if (b()) {
            return TraceFormat.STR_DEBUG;
        }
        if (a()) {
            return TraceFormat.STR_ASSERT;
        }
        return "";
    }
}
