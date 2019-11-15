package com.mi.milinkforgame.sdk.base.debug;

public class CustomLogcat implements TraceLevel {
    private static volatile Tracer sCustomTracer = new LogcatTracer();

    public static void setCustomTracer(Tracer tracer) {
        if (tracer == null) {
            sCustomTracer = new LogcatTracer();
        } else {
            sCustomTracer = tracer;
        }
    }

    public static Tracer getCustomTracer() {
        return sCustomTracer;
    }

    public static void v(String str, String str2) {
        v(str, str2, null);
    }

    public static void v(String str, String str2, Throwable th) {
        if (sCustomTracer != null) {
            sCustomTracer.trace(1, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
        }
    }

    public static void d(String str, String str2) {
        d(str, str2, null);
    }

    public static void d(String str, String str2, Throwable th) {
        if (sCustomTracer != null) {
            sCustomTracer.trace(2, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
        }
    }

    public static void i(String str, String str2) {
        i(str, str2, null);
    }

    public static void i(String str, String str2, Throwable th) {
        if (sCustomTracer != null) {
            sCustomTracer.trace(4, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
        }
    }

    public static void w(String str, String str2) {
        w(str, str2, null);
    }

    public static void w(String str, String str2, Throwable th) {
        if (sCustomTracer != null) {
            sCustomTracer.trace(8, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
        }
    }

    public static void e(String str, String str2) {
        e(str, str2, null);
    }

    public static void e(String str, String str2, Throwable th) {
        if (sCustomTracer != null) {
            sCustomTracer.trace(16, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
        }
    }
}
