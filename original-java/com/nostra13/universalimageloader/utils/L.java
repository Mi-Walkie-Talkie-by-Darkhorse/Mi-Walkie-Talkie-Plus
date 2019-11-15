package com.nostra13.universalimageloader.utils;

import android.util.Log;
import com.nostra13.universalimageloader.core.ImageLoader;

public final class L {
    private static final String LOG_FORMAT = "%1$s\n%2$s";
    private static volatile boolean writeDebugLogs = false;
    private static volatile boolean writeLogs = true;

    private L() {
    }

    @Deprecated
    public static void enableLogging() {
        writeLogs(true);
    }

    @Deprecated
    public static void disableLogging() {
        writeLogs(false);
    }

    public static void writeDebugLogs(boolean z) {
        writeDebugLogs = z;
    }

    public static void writeLogs(boolean z) {
        writeLogs = z;
    }

    public static void d(String str, Object... objArr) {
        if (writeDebugLogs) {
            log(3, null, str, objArr);
        }
    }

    public static void i(String str, Object... objArr) {
        log(4, null, str, objArr);
    }

    public static void w(String str, Object... objArr) {
        log(5, null, str, objArr);
    }

    public static void e(Throwable th) {
        log(6, th, null, new Object[0]);
    }

    public static void e(String str, Object... objArr) {
        log(6, null, str, objArr);
    }

    public static void e(Throwable th, String str, Object... objArr) {
        log(6, th, str, objArr);
    }

    private static void log(int i, Throwable th, String str, Object... objArr) {
        String str2;
        if (writeLogs) {
            if (objArr.length > 0) {
                str2 = String.format(str, objArr);
            } else {
                str2 = str;
            }
            if (th != null) {
                if (str2 == null) {
                    str2 = th.getMessage();
                }
                String stackTraceString = Log.getStackTraceString(th);
                str2 = String.format(LOG_FORMAT, new Object[]{str2, stackTraceString});
            }
            Log.println(i, ImageLoader.TAG, str2);
        }
    }
}
