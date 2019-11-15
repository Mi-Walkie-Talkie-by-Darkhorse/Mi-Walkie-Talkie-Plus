package com.tencent.mm.opensdk.utils;

public class Log {
    private static ILog logImpl;

    public static void d(String str, String str2) {
        if (logImpl == null) {
            android.util.Log.d(str, str2);
        } else {
            logImpl.d(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (logImpl == null) {
            android.util.Log.e(str, str2);
        } else {
            logImpl.e(str, str2);
        }
    }

    public static void i(String str, String str2) {
        if (logImpl == null) {
            android.util.Log.i(str, str2);
        } else {
            logImpl.i(str, str2);
        }
    }

    public static void setLogImpl(ILog iLog) {
        logImpl = iLog;
    }

    public static void v(String str, String str2) {
        if (logImpl == null) {
            android.util.Log.v(str, str2);
        } else {
            logImpl.v(str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (logImpl == null) {
            android.util.Log.w(str, str2);
        } else {
            logImpl.w(str, str2);
        }
    }
}
