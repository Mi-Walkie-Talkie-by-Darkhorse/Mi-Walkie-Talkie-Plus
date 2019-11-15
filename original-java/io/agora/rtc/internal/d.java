package io.agora.rtc.internal;

import android.util.Log;

/* compiled from: Logging */
public class d {
    public static void a(int i, String str, String str2) {
        RtcEngineImpl.nativeLog(i, "[" + str + "] " + str2);
    }

    public static void a(String str) {
        RtcEngineImpl.nativeLog(1, str);
    }

    public static void b(String str) {
        RtcEngineImpl.nativeLog(2, str);
    }

    public static void a(String str, String str2) {
        a(2048, str, str2);
    }

    public static void b(String str, String str2) {
        a(1, str, str2);
    }

    public static void c(String str, String str2) {
        a(4, str, str2);
    }

    public static void d(String str, String str2) {
        a(2, str, str2);
    }

    public static void a(String str, String str2, Throwable th) {
        a(4, str, str2);
        a(4, str, th.toString());
        a(4, str, Log.getStackTraceString(th));
    }
}
