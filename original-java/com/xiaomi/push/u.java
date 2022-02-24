package com.xiaomi.push;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    private static Context f9369a;

    /* renamed from: a  reason: collision with other field name */
    private static String f1017a;

    public static int a() {
        try {
            Class<?> a2 = a(null, "miui.os.Build");
            if (a2.getField("IS_STABLE_VERSION").getBoolean(null)) {
                return 3;
            }
            return a2.getField("IS_DEVELOPMENT_VERSION").getBoolean(null) ? 2 : 1;
        } catch (Exception unused) {
            return 0;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static Context m658a() {
        return f9369a;
    }

    public static Class<?> a(Context context, String str) {
        if (str == null || str.trim().length() == 0) {
            throw new ClassNotFoundException("class is empty");
        }
        boolean z = context != null;
        if (z && Build.VERSION.SDK_INT >= 29) {
            try {
                return context.getClassLoader().loadClass(str);
            } catch (Throwable unused) {
            }
        }
        try {
            return Class.forName(str);
        } catch (Throwable th) {
            b.m1a(String.format("loadClass fail hasContext= %s, errMsg = %s", Boolean.valueOf(z), th.getLocalizedMessage()));
            throw new ClassNotFoundException("loadClass fail ", th);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static synchronized String m659a() {
        synchronized (u.class) {
            if (f1017a != null) {
                return f1017a;
            }
            String str = Build.VERSION.INCREMENTAL;
            if (a() <= 0) {
                str = b();
                if (TextUtils.isEmpty(str)) {
                    str = c();
                    if (TextUtils.isEmpty(str)) {
                        str = d();
                        if (TextUtils.isEmpty(str)) {
                            str = String.valueOf(t.a("ro.product.brand", "Android") + "_" + str);
                        }
                    }
                }
            }
            f1017a = str;
            return str;
        }
    }

    public static String a(Context context) {
        if (l.m531b()) {
            return "";
        }
        String str = (String) bj.a("com.xiaomi.xmsf.helper.MIIDAccountHelper", "getMIID", context);
        return TextUtils.isEmpty(str) ? "0" : str;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static void m660a(Context context) {
        f9369a = context.getApplicationContext();
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m661a() {
        return TextUtils.equals((String) bj.a("android.os.SystemProperties", "get", "sys.boot_completed"), "1");
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m662a(Context context) {
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception e) {
            b.a(e);
            return false;
        }
    }

    private static String b() {
        String a2 = t.a("ro.build.version.emui", "");
        f1017a = a2;
        return a2;
    }

    /* renamed from: b  reason: collision with other method in class */
    public static boolean m663b() {
        try {
            return a(null, "miui.os.Build").getField("IS_GLOBAL_BUILD").getBoolean(false);
        } catch (ClassNotFoundException unused) {
            b.d("miui.os.Build ClassNotFound");
            return false;
        } catch (Exception e) {
            b.a(e);
            return false;
        }
    }

    private static String c() {
        String a2 = t.a("ro.build.version.opporom", "");
        if (!TextUtils.isEmpty(a2) && !a2.startsWith("ColorOS_")) {
            f1017a = "ColorOS_" + a2;
        }
        return f1017a;
    }

    private static String d() {
        String a2 = t.a("ro.vivo.os.version", "");
        if (!TextUtils.isEmpty(a2) && !a2.startsWith("FuntouchOS_")) {
            f1017a = "FuntouchOS_" + a2;
        }
        return f1017a;
    }
}
