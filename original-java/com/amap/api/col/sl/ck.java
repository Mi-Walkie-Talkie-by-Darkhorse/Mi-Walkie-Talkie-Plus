package com.amap.api.col.sl;

import android.content.Context;
import android.os.Looper;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: Log */
public final class ck {
    public static final String a = "/a/";
    static final String b = "b";
    static final String c = "c";
    static final String d = "d";
    static final String e = "i";
    public static final String f = "g";
    public static final String g = "h";
    public static final String h = "e";
    public static final String i = "f";
    public static final String j = "j";

    public static String a(Context context) {
        return a(context, e);
    }

    public static String a(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        sb.append(a);
        sb.append(str);
        return sb.toString();
    }

    public static void b(final Context context) {
        try {
            ExecutorService d2 = cm.d();
            if (d2 != null && !d2.isShutdown()) {
                d2.submit(new Runnable() {
                    public final void run() {
                        try {
                            dy.a(context);
                            cn.b(context);
                            cn.d(context);
                            cn.c(context);
                            ec.a(context);
                            ea.a(context);
                        } catch (RejectedExecutionException e) {
                        } catch (Throwable th) {
                            cm.c(th, "Lg", "proL");
                        }
                    }
                });
            }
        } catch (Throwable th) {
            cm.c(th, "Lg", "proL");
        }
    }

    static List<bz> c(Context context) {
        List<bz> list;
        Throwable th;
        List<bz> list2 = null;
        try {
            synchronized (Looper.getMainLooper()) {
                try {
                    list = new cv(context, false).a();
                    try {
                    } catch (Throwable th2) {
                        Throwable th3 = th2;
                        list2 = list;
                        th = th3;
                        try {
                            throw th;
                        } catch (Throwable th4) {
                            Throwable th5 = th4;
                            list = list2;
                            th = th5;
                            ThrowableExtension.printStackTrace(th);
                            return list;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }
        } catch (Throwable th7) {
            Throwable th8 = th7;
            list = null;
            th = th8;
            ThrowableExtension.printStackTrace(th);
            return list;
        }
    }

    static boolean a(String[] strArr, String str) {
        if (strArr == null || str == null) {
            return false;
        }
        try {
            for (String trim : str.split("\n")) {
                if (b(strArr, trim.trim())) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    static boolean b(String[] strArr, String str) {
        if (strArr == null || str == null) {
            return false;
        }
        try {
            for (String str2 : strArr) {
                str = str.trim();
                if (str.startsWith("at ") && str.contains(str2 + ".") && str.endsWith(")") && !str.contains("uncaughtException")) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }
}
