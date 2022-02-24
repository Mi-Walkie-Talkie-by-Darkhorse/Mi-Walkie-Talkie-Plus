package com.ifengyu.library.helper;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ifengyu.library.a.f;
import com.ifengyu.library.a.g;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Method;
import java.util.Properties;

/* compiled from: QMUIDeviceHelper.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f7188a = {"m9", "M9", "mx", "MX"};

    /* renamed from: b  reason: collision with root package name */
    private static String f7189b;

    /* renamed from: c  reason: collision with root package name */
    private static String f7190c;

    static {
        FileInputStream fileInputStream;
        Throwable th;
        Exception e;
        try {
            fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            try {
                try {
                    Properties properties = new Properties();
                    properties.load(fileInputStream);
                    Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
                    f7189b = a(properties, declaredMethod, "ro.miui.ui.version.name");
                    f7190c = a(properties, declaredMethod, "ro.build.display.id");
                } catch (Exception e2) {
                    e = e2;
                    g.a("QMUIDeviceHelper", "getProperty error:" + e.getMessage());
                    f.a(fileInputStream);
                }
            } catch (Throwable th2) {
                th = th2;
                f.a(fileInputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            f.a(fileInputStream);
            throw th;
        }
        f.a(fileInputStream);
    }

    public static boolean a() {
        return !TextUtils.isEmpty(f7190c) && f7190c.contains("flyme");
    }

    public static boolean b() {
        return !TextUtils.isEmpty(f7189b);
    }

    public static boolean c() {
        return "v5".equals(f7189b);
    }

    public static boolean d() {
        return "v6".equals(f7189b);
    }

    public static boolean e() {
        return "v7".equals(f7189b);
    }

    public static boolean f() {
        return "v8".equals(f7189b);
    }

    public static boolean g() {
        return "v9".equals(f7189b) || "v10".equals(f7189b);
    }

    public static boolean h() {
        return a(f7188a) || a();
    }

    public static boolean i() {
        String str = Build.MODEL;
        if (str == null) {
            return false;
        }
        return str.toLowerCase().contains("zte c2016");
    }

    public static boolean j() {
        String str = Build.MODEL;
        if (str == null) {
            return false;
        }
        return str.toLowerCase().contains("zuk z1");
    }

    private static boolean a(String[] strArr) {
        String str = Build.BOARD;
        if (str == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    private static String a(Properties properties, Method method, String str) {
        String property = properties.getProperty(str);
        if (property == null) {
            try {
                property = (String) method.invoke(null, str);
            } catch (Exception unused) {
            }
        }
        return property != null ? property.toLowerCase() : property;
    }
}
