package com.ifengyu.library.utils;

import android.util.Log;
import com.xiaomi.mipush.sdk.Constants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;

/* compiled from: Logger.java */
/* renamed from: com.ifengyu.library.utils.k */
/* loaded from: classes2.dex */
public class C4971k {
    /* renamed from: a */
    public static int m8659a(String str, String str2) {
        if (m8653g()) {
            return Log.d("MiTalk", str + Constants.COLON_SEPARATOR + str2);
        }
        return 0;
    }

    /* renamed from: b */
    public static int m8658b(String str, String str2, Throwable th) {
        if (m8653g()) {
            return Log.d("MiTalk", str + Constants.COLON_SEPARATOR + str2 + '\n' + m8655e(th));
        }
        return 0;
    }

    /* renamed from: c */
    public static int m8657c(String str, String str2) {
        if (m8652h()) {
            return Log.e("MiTalk", str + Constants.COLON_SEPARATOR + str2);
        }
        return 0;
    }

    /* renamed from: d */
    public static int m8656d(String str, String str2, Throwable th) {
        if (m8652h()) {
            return Log.e("MiTalk", str + Constants.COLON_SEPARATOR + str2 + '\n' + m8655e(th));
        }
        return 0;
    }

    /* renamed from: e */
    public static String m8655e(Throwable th) {
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

    /* renamed from: f */
    public static int m8654f(String str, String str2) {
        if (m8649k()) {
            return Log.i("MiTalk", str + Constants.COLON_SEPARATOR + str2);
        }
        return 0;
    }

    /* renamed from: g */
    public static boolean m8653g() {
        return true;
    }

    /* renamed from: h */
    public static boolean m8652h() {
        return true;
    }

    /* renamed from: i */
    public static boolean m8651i() {
        return true;
    }

    /* renamed from: j */
    public static boolean m8650j() {
        return true;
    }

    /* renamed from: k */
    public static boolean m8649k() {
        return true;
    }

    /* renamed from: l */
    public static int m8648l(String str, String str2) {
        if (m8651i()) {
            return Log.v("MiTalk", str + Constants.COLON_SEPARATOR + str2);
        }
        return 0;
    }

    /* renamed from: m */
    public static int m8647m(String str, String str2) {
        if (m8650j()) {
            return Log.w("MiTalk", str + Constants.COLON_SEPARATOR + str2);
        }
        return 0;
    }

    /* renamed from: n */
    public static int m8646n(String str, String str2, Throwable th) {
        if (m8650j()) {
            return Log.w("MiTalk", str + Constants.COLON_SEPARATOR + str2 + '\n' + m8655e(th));
        }
        return 0;
    }
}
