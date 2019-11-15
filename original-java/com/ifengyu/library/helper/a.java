package com.ifengyu.library.helper;

import android.os.Build;
import android.os.Environment;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.ifengyu.library.util.b;
import com.ifengyu.library.util.c;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Method;
import java.util.Properties;

/* compiled from: QMUIDeviceHelper */
public class a {
    private static final String[] a = {"m9", "M9", "mx", "MX"};
    private static String b;
    private static String c;
    private static boolean d = false;
    private static boolean e = false;

    static {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            try {
                Properties properties = new Properties();
                properties.load(fileInputStream);
                Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", new Class[]{String.class});
                b = a(properties, declaredMethod, "ro.miui.ui.version.name");
                c = a(properties, declaredMethod, "ro.build.display.id");
                b.a(fileInputStream);
            } catch (Exception e2) {
                e = e2;
                try {
                    c.a("QMUIDeviceHelper", "getProperty error:" + e.getMessage());
                    b.a(fileInputStream);
                } catch (Throwable th) {
                    th = th;
                    b.a(fileInputStream);
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            c.a("QMUIDeviceHelper", "getProperty error:" + e.getMessage());
            b.a(fileInputStream);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            b.a(fileInputStream);
            throw th;
        }
    }

    public static boolean a() {
        return !TextUtils.isEmpty(c) && c.contains("flyme");
    }

    public static boolean b() {
        return !TextUtils.isEmpty(b);
    }

    public static boolean c() {
        return "v5".equals(b);
    }

    public static boolean d() {
        return "v6".equals(b);
    }

    public static boolean e() {
        return "v7".equals(b);
    }

    public static boolean f() {
        return "v8".equals(b);
    }

    public static boolean g() {
        return "v9".equals(b) || "v10".equals(b);
    }

    public static boolean h() {
        return a(a) || a();
    }

    public static boolean i() {
        String str = Build.MODEL;
        if (str == null) {
            return false;
        }
        return str.toLowerCase().contains("zuk z1");
    }

    public static boolean j() {
        String str = Build.MODEL;
        if (str == null) {
            return false;
        }
        return str.toLowerCase().contains("zte c2016");
    }

    private static boolean a(String[] strArr) {
        String str = Build.BOARD;
        if (str == null) {
            return false;
        }
        for (String equals : strArr) {
            if (str.equals(equals)) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    private static String a(Properties properties, Method method, String str) {
        String str2;
        String property = properties.getProperty(str);
        if (property == null) {
            try {
                str2 = (String) method.invoke(null, new Object[]{str});
            } catch (Exception e2) {
                str2 = property;
            }
        } else {
            str2 = property;
        }
        if (str2 != null) {
            return str2.toLowerCase();
        }
        return str2;
    }
}
