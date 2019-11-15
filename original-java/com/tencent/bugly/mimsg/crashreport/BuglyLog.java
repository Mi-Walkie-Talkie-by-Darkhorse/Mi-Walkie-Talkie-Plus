package com.tencent.bugly.mimsg.crashreport;

import android.util.Log;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import com.tencent.bugly.mimsg.b;
import com.tencent.bugly.mimsg.proguard.y;

/* compiled from: BUGLY */
public class BuglyLog {
    public static void v(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (b.c) {
            Log.v(str, str2);
        }
        y.a(TraceFormat.STR_VERBOSE, str, str2);
    }

    public static void d(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (b.c) {
            Log.d(str, str2);
        }
        y.a(TraceFormat.STR_DEBUG, str, str2);
    }

    public static void i(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (b.c) {
            Log.i(str, str2);
        }
        y.a(TraceFormat.STR_INFO, str, str2);
    }

    public static void w(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (b.c) {
            Log.w(str, str2);
        }
        y.a(TraceFormat.STR_WARN, str, str2);
    }

    public static void e(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (b.c) {
            Log.e(str, str2);
        }
        y.a(TraceFormat.STR_ERROR, str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (b.c) {
            Log.e(str, str2, th);
        }
        y.a(TraceFormat.STR_ERROR, str, th);
    }

    public static void setCache(int i) {
        y.a(i);
    }
}
