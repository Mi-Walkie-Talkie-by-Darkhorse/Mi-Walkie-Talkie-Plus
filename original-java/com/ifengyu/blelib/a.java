package com.ifengyu.blelib;

import android.util.Log;
import com.xiaomi.mipush.sdk.Constants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;

/* compiled from: Logger.java */
/* loaded from: classes.dex */
public class a {
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
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static int b(String str, String str2) {
        if (!b()) {
            return 0;
        }
        return Log.e("MiTalk", str + Constants.COLON_SEPARATOR + str2);
    }

    public static int c(String str, String str2) {
        if (!d()) {
            return 0;
        }
        return Log.i("MiTalk", str + Constants.COLON_SEPARATOR + str2);
    }

    public static int d(String str, String str2) {
        if (!c()) {
            return 0;
        }
        return Log.w("MiTalk", str + Constants.COLON_SEPARATOR + str2);
    }

    public static int b(String str, String str2, Throwable th) {
        if (!b()) {
            return 0;
        }
        return Log.e("MiTalk", str + Constants.COLON_SEPARATOR + str2 + '\n' + a(th));
    }

    public static boolean c() {
        return a(5);
    }

    public static boolean d() {
        return a(4);
    }

    public static boolean b() {
        return a(6);
    }

    public static int a(String str, String str2) {
        if (!a()) {
            return 0;
        }
        return Log.d("MiTalk", str + Constants.COLON_SEPARATOR + str2);
    }

    public static int a(String str, String str2, Throwable th) {
        if (!a()) {
            return 0;
        }
        return Log.d("MiTalk", str + Constants.COLON_SEPARATOR + str2 + '\n' + a(th));
    }

    public static boolean a() {
        return a(3);
    }

    public static boolean a(int i) {
        return Log.isLoggable("MiTalk", i);
    }
}
