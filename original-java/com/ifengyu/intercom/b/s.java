package com.ifengyu.intercom.b;

import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;

/* compiled from: Logger */
public class s {
    public static String a(Throwable th) {
        if (th == null) {
            return "";
        }
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            if (th2 instanceof UnknownHostException) {
                return "";
            }
        }
        StringWriter stringWriter = new StringWriter();
        ThrowableExtension.printStackTrace(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static int a(String str, String str2) {
        if (a()) {
            return Log.v("MiTalk", str + ":" + str2);
        }
        return 0;
    }

    public static int b(String str, String str2) {
        if (b()) {
            return Log.d("MiTalk", str + ":" + str2);
        }
        return 0;
    }

    public static int c(String str, String str2) {
        if (c()) {
            return Log.i("MiTalk", str + ":" + str2);
        }
        return 0;
    }

    public static int d(String str, String str2) {
        if (d()) {
            return Log.w("MiTalk", str + ":" + str2);
        }
        return 0;
    }

    public static int a(String str, String str2, Throwable th) {
        if (d()) {
            return Log.w("MiTalk", str + ":" + str2 + 10 + a(th));
        }
        return 0;
    }

    public static int a(String str, Throwable th) {
        if (d()) {
            return Log.w("MiTalk", str + 10 + a(th));
        }
        return 0;
    }

    public static int e(String str, String str2) {
        if (e()) {
            return Log.e("MiTalk", str + ":" + str2);
        }
        return 0;
    }

    public static int b(String str, String str2, Throwable th) {
        if (e()) {
            return Log.e("MiTalk", str + ":" + str2 + 10 + a(th));
        }
        return 0;
    }

    public static boolean a() {
        return a(2);
    }

    public static boolean b() {
        return a(3);
    }

    public static boolean c() {
        return a(4);
    }

    public static boolean d() {
        return a(5);
    }

    public static boolean e() {
        return a(6);
    }

    public static boolean a(int i) {
        return Log.isLoggable("MiTalk", i);
    }
}
