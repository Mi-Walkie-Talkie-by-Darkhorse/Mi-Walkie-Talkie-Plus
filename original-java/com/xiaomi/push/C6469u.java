package com.xiaomi.push;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* renamed from: com.xiaomi.push.u */
/* loaded from: classes2.dex */
public class C6469u {

    /* renamed from: a */
    private static Context f23251a;

    /* renamed from: a */
    private static String f23252a;

    /* renamed from: a */
    public static int m1241a() {
        try {
            Class<?> m1234a = m1234a(null, "miui.os.Build");
            if (m1234a.getField("IS_STABLE_VERSION").getBoolean(null)) {
                return 3;
            }
            return m1234a.getField("IS_DEVELOPMENT_VERSION").getBoolean(null) ? 2 : 1;
        } catch (Exception unused) {
            return 0;
        }
    }

    /* renamed from: a */
    public static Context m1240a() {
        return f23251a;
    }

    /* renamed from: a */
    public static Class<?> m1234a(Context context, String str) {
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
            AbstractC5876b.m4147a(String.format("loadClass fail hasContext= %s, errMsg = %s", Boolean.valueOf(z), th.getLocalizedMessage()));
            throw new ClassNotFoundException("loadClass fail ", th);
        }
    }

    /* renamed from: a */
    public static synchronized String m1239a() {
        synchronized (C6469u.class) {
            String str = f23252a;
            if (str != null) {
                return str;
            }
            String str2 = Build.VERSION.INCREMENTAL;
            if (m1241a() <= 0) {
                String m1233b = m1233b();
                if (TextUtils.isEmpty(m1233b)) {
                    m1233b = m1231c();
                    if (TextUtils.isEmpty(m1233b)) {
                        m1233b = m1230d();
                        if (TextUtils.isEmpty(m1233b)) {
                            str2 = String.valueOf(C6468t.m1242a("ro.product.brand", "Android") + "_" + str2);
                        }
                    }
                }
                str2 = m1233b;
            }
            f23252a = str2;
            return str2;
        }
    }

    /* renamed from: a */
    public static String m1237a(Context context) {
        if (C6306l.m1844b()) {
            return "";
        }
        String str = (String) C6016bj.m3646a("com.xiaomi.xmsf.helper.MIIDAccountHelper", "getMIID", context);
        return TextUtils.isEmpty(str) ? "0" : str;
    }

    /* renamed from: a */
    public static void m1236a(Context context) {
        f23251a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static boolean m1238a() {
        return TextUtils.equals((String) C6016bj.m3646a("android.os.SystemProperties", "get", "sys.boot_completed"), "1");
    }

    /* renamed from: a */
    public static boolean m1235a(Context context) {
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
            return false;
        }
    }

    /* renamed from: b */
    private static String m1233b() {
        String m1242a = C6468t.m1242a("ro.build.version.emui", "");
        f23252a = m1242a;
        return m1242a;
    }

    /* renamed from: b */
    public static boolean m1232b() {
        try {
            return m1234a(null, "miui.os.Build").getField("IS_GLOBAL_BUILD").getBoolean(Boolean.FALSE);
        } catch (ClassNotFoundException unused) {
            AbstractC5876b.m4138d("miui.os.Build ClassNotFound");
            return false;
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
            return false;
        }
    }

    /* renamed from: c */
    private static String m1231c() {
        String m1242a = C6468t.m1242a("ro.build.version.opporom", "");
        if (!TextUtils.isEmpty(m1242a) && !m1242a.startsWith("ColorOS_")) {
            f23252a = "ColorOS_" + m1242a;
        }
        return f23252a;
    }

    /* renamed from: d */
    private static String m1230d() {
        String m1242a = C6468t.m1242a("ro.vivo.os.version", "");
        if (!TextUtils.isEmpty(m1242a) && !m1242a.startsWith("FuntouchOS_")) {
            f23252a = "FuntouchOS_" + m1242a;
        }
        return f23252a;
    }
}
