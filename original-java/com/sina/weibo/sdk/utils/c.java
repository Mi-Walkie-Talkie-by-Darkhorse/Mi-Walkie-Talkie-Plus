package com.sina.weibo.sdk.utils;

import android.util.Log;

/* compiled from: LogUtil */
public class c {
    public static boolean a = false;

    public static void a(String str, String str2) {
        if (a) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            Log.d(str, new StringBuilder(String.valueOf(stackTraceElement.getFileName() + "(" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName())).append(": ").append(str2).toString());
        }
    }

    public static void b(String str, String str2) {
        if (a) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            Log.i(str, new StringBuilder(String.valueOf(stackTraceElement.getFileName() + "(" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName())).append(": ").append(str2).toString());
        }
    }

    public static void c(String str, String str2) {
        if (a) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            Log.e(str, new StringBuilder(String.valueOf(stackTraceElement.getFileName() + "(" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName())).append(": ").append(str2).toString());
        }
    }

    public static void d(String str, String str2) {
        if (a) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            Log.w(str, new StringBuilder(String.valueOf(stackTraceElement.getFileName() + "(" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName())).append(": ").append(str2).toString());
        }
    }

    public static void e(String str, String str2) {
        if (a) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
            Log.v(str, new StringBuilder(String.valueOf(stackTraceElement.getFileName() + "(" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName())).append(": ").append(str2).toString());
        }
    }
}
