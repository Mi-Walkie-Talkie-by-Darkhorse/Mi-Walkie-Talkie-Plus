package com.xiaomi.utils;

public class Logger {
    public static native void Log(String str, int i);

    public static void LogD(String str) {
        Log(str, 1);
    }

    public static void LogI(String str) {
        Log(str, 2);
    }

    public static void LogW(String str) {
        Log(str, 3);
    }

    public static void LogE(String str) {
        Log(str, 4);
    }
}
