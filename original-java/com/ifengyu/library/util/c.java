package com.ifengyu.library.util;

import android.util.Log;

/* compiled from: Logger */
public class c {
    public static int a(String str, String str2) {
        if (a()) {
            return Log.d("MiTalk-IM", str + ":" + str2);
        }
        return 0;
    }

    public static int b(String str, String str2) {
        if (b()) {
            return Log.i("MiTalk-IM", str + ":" + str2);
        }
        return 0;
    }

    public static int c(String str, String str2) {
        if (c()) {
            return Log.w("MiTalk-IM", str + ":" + str2);
        }
        return 0;
    }

    public static int d(String str, String str2) {
        if (d()) {
            return Log.e("MiTalk-IM", str + ":" + str2);
        }
        return 0;
    }

    public static boolean a() {
        return a(3);
    }

    public static boolean b() {
        return a(4);
    }

    public static boolean c() {
        return a(5);
    }

    public static boolean d() {
        return a(6);
    }

    public static boolean a(int i) {
        return Log.isLoggable("MiTalk-IM", i);
    }
}
