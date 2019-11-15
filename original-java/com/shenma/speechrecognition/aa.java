package com.shenma.speechrecognition;

import android.util.Log;
import java.util.Locale;

class aa {
    public static boolean a = Log.isLoggable(b, 2);
    private static String b = "ShenmaSpeech";

    private aa() {
    }

    public static void a() {
        StackTraceElement[] stackTrace;
        a("+++++ stack start +++++++++++++++++++++++++++++++", new Object[0]);
        for (StackTraceElement stackTraceElement : new Throwable().fillInStackTrace().getStackTrace()) {
            if (!stackTraceElement.getClassName().equals(aa.class.getName())) {
                a(stackTraceElement.toString(), new Object[0]);
            }
        }
        a("----- stack end ---------------------------------", new Object[0]);
    }

    public static void a(String str, Object... objArr) {
        if (a) {
            Log.v(b, c(str, objArr));
        }
    }

    public static void a(Throwable th, String str, Object... objArr) {
        Log.e(b, c(str, objArr), th);
    }

    public static void b(String str, Object... objArr) {
        Log.e(b, c(str, objArr));
    }

    private static String c(String str, Object... objArr) {
        if (objArr != null && objArr.length >= 1) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        String str2 = "<unknown>";
        int length = stackTrace.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i];
            String className = stackTraceElement.getClassName();
            if (!className.equals(aa.class.getName())) {
                str2 = className.substring(className.lastIndexOf(46) + 1) + "." + stackTraceElement.getMethodName() + " (" + stackTraceElement.getLineNumber() + ")";
                break;
            }
            i++;
        }
        return String.format(Locale.US, "[%d] %s: %s", new Object[]{Long.valueOf(Thread.currentThread().getId()), str2, str});
    }
}
