package com.xiaomi.mistatistic.sdk.controller;

import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;

/* compiled from: Logger */
public class h {
    private static boolean a = false;

    public static void a() {
        a = true;
    }

    private static void a(int i, Throwable th, String str, String str2, Object... objArr) {
        String e = e(str);
        String a2 = a(str2, objArr);
        switch (i) {
            case 0:
                Log.e(e, a2, th);
                return;
            case 1:
                Log.w(e, a2, th);
                return;
            case 2:
                Log.i(e, a2, th);
                return;
            case 3:
                Log.d(e, a2, th);
                return;
            case 4:
                Log.v(e, a2, th);
                return;
            default:
                return;
        }
    }

    private static void a(int i, Throwable th, String str, String str2) {
        String e = e(str);
        switch (i) {
            case 0:
                Log.e(e, str2, th);
                return;
            case 1:
                Log.w(e, str2, th);
                return;
            case 2:
                Log.i(e, str2, th);
                return;
            case 3:
                Log.d(e, str2, th);
                return;
            case 4:
                Log.v(e, str2, th);
                return;
            default:
                return;
        }
    }

    private static String e(String str) {
        if (TextUtils.isEmpty(str)) {
            return "MI_STAT";
        }
        return "MI_STAT_" + str;
    }

    private static String a(String str, Object... objArr) {
        try {
            return String.format(Locale.getDefault(), str, objArr);
        } catch (Exception e) {
            a("log getMessage exception :", (Throwable) e);
            return null;
        }
    }

    public static void a(String str, String str2, Object... objArr) {
        if (a) {
            a(4, null, str, str2, objArr);
        }
    }

    public static void a(String str, String str2) {
        if (a) {
            a(4, null, str, str2);
        }
    }

    public static void a(String str) {
        if (a) {
            a(4, null, null, str);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (a) {
            a(0, th, str, str2);
        }
    }

    public static void a(String str, Throwable th) {
        if (a) {
            a(0, th, null, str);
        }
    }

    public static void b(String str, String str2, Object... objArr) {
        if (a) {
            a(3, null, str, str2, objArr);
        }
    }

    public static void b(String str, String str2) {
        if (a) {
            a(3, null, str, str2);
        }
    }

    public static void b(String str) {
        if (a) {
            a(3, null, null, str);
        }
    }

    public static void c(String str, String str2) {
        if (a) {
            a(2, null, str, str2);
        }
    }

    public static void c(String str) {
        if (a) {
            a(2, null, null, str);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (a) {
            a(1, th, str, str2);
        }
    }

    public static void d(String str, String str2) {
        if (a) {
            a(1, null, null, str2);
        }
    }

    public static void d(String str) {
        if (a) {
            a(1, null, null, str);
        }
    }
}
