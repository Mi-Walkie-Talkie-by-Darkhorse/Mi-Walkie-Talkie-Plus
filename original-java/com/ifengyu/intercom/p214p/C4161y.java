package com.ifengyu.intercom.p214p;

import android.util.Log;
import com.xiaomi.mipush.sdk.Constants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;

/* compiled from: Logger.java */
/* renamed from: com.ifengyu.intercom.p.y */
/* loaded from: classes2.dex */
public class C4161y {
    /* renamed from: a */
    public static int m11054a(String str, String str2) {
        if (m11048g()) {
            return Log.d("MiTalk", str + Constants.COLON_SEPARATOR + str2);
        }
        return 0;
    }

    /* renamed from: b */
    public static int m11053b(String str, String str2, Throwable th) {
        if (m11048g()) {
            return Log.d("MiTalk", str + Constants.COLON_SEPARATOR + str2 + '\n' + m11050e(th));
        }
        return 0;
    }

    /* renamed from: c */
    public static int m11052c(String str, String str2) {
        if (m11047h()) {
            return Log.e("MiTalk", str + Constants.COLON_SEPARATOR + str2);
        }
        return 0;
    }

    /* renamed from: d */
    public static int m11051d(String str, String str2, Throwable th) {
        if (m11047h()) {
            return Log.e("MiTalk", str + Constants.COLON_SEPARATOR + str2 + '\n' + m11050e(th));
        }
        return 0;
    }

    /* renamed from: e */
    public static String m11050e(Throwable th) {
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
    public static int m11049f(String str, String str2) {
        if (m11044k()) {
            return Log.i("MiTalk", str + Constants.COLON_SEPARATOR + str2);
        }
        return 0;
    }

    /* renamed from: g */
    public static boolean m11048g() {
        return true;
    }

    /* renamed from: h */
    public static boolean m11047h() {
        return true;
    }

    /* renamed from: i */
    public static boolean m11046i() {
        return true;
    }

    /* renamed from: j */
    public static boolean m11045j() {
        return true;
    }

    /* renamed from: k */
    public static boolean m11044k() {
        return true;
    }

    /* renamed from: l */
    public static int m11043l(String str, String str2) {
        if (m11046i()) {
            return Log.v("MiTalk", str + Constants.COLON_SEPARATOR + str2);
        }
        return 0;
    }

    /* renamed from: m */
    public static int m11042m(String str, String str2) {
        if (m11045j()) {
            return Log.w("MiTalk", str + Constants.COLON_SEPARATOR + str2);
        }
        return 0;
    }
}
