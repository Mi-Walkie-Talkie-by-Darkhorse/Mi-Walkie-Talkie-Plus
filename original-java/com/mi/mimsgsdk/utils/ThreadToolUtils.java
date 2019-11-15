package com.mi.mimsgsdk.utils;

import android.os.Looper;

public class ThreadToolUtils {
    public static void ensureUiThread() {
        if (!isUiThread()) {
            throw new IllegalStateException("ensureUiThread: thread check failed");
        }
    }

    public static void ensureNonUiThread() {
        if (isUiThread()) {
            throw new IllegalStateException("ensureNonUiThread: thread check failed");
        }
    }

    public static boolean isUiThread() {
        return Looper.getMainLooper().equals(Looper.myLooper());
    }
}
