package com.ifengyu.library.a;

import android.util.Log;
import com.xiaomi.mipush.sdk.Constants;

/* compiled from: Logger.java */
/* loaded from: classes2.dex */
public class g {
    public static int a(String str, String str2) {
        if (!a()) {
            return 0;
        }
        return Log.d("MiTalk-IM", str + Constants.COLON_SEPARATOR + str2);
    }

    public static int b(String str, String str2) {
        if (!b()) {
            return 0;
        }
        return Log.e("MiTalk-IM", str + Constants.COLON_SEPARATOR + str2);
    }

    public static int c(String str, String str2) {
        if (!d()) {
            return 0;
        }
        return Log.i("MiTalk-IM", str + Constants.COLON_SEPARATOR + str2);
    }

    public static int d(String str, String str2) {
        if (!c()) {
            return 0;
        }
        return Log.w("MiTalk-IM", str + Constants.COLON_SEPARATOR + str2);
    }

    public static boolean a() {
        return a(3);
    }

    public static boolean b() {
        return a(6);
    }

    public static boolean c() {
        return a(5);
    }

    public static boolean d() {
        return a(4);
    }

    public static boolean a(int i) {
        return Log.isLoggable("MiTalk-IM", i);
    }
}
