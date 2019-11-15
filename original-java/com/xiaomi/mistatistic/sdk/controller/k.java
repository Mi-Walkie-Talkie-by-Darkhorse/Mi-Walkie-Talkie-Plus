package com.xiaomi.mistatistic.sdk.controller;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Process;
import android.text.TextUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: PrefPersistUtils */
public class k {
    public static String a = null;
    private static ExecutorService b = Executors.newSingleThreadExecutor();

    public static int a(Context context, String str, int i) {
        return context.getSharedPreferences(a(context), 0).getInt(str, i);
    }

    public static long a(Context context, String str, long j) {
        return context.getSharedPreferences(a(context), 0).getLong(str, j);
    }

    public static String a(Context context, String str, String str2) {
        return context.getSharedPreferences(a(context), 0).getString(str, str2);
    }

    public static boolean a(Context context, String str) {
        return context.getSharedPreferences(a(context), 0).getBoolean(str, false);
    }

    public static void b(Context context, String str, int i) {
        Editor edit = context.getSharedPreferences(a(context), 0).edit();
        edit.putInt(str, i);
        a(edit);
    }

    public static void b(Context context, String str, long j) {
        Editor edit = context.getSharedPreferences(a(context), 0).edit();
        edit.putLong(str, j);
        a(edit);
    }

    public static void b(Context context, String str, String str2) {
        Editor edit = context.getSharedPreferences(a(context), 0).edit();
        edit.putString(str, str2);
        a(edit);
    }

    public static void a(Context context, String str, boolean z) {
        Editor edit = context.getSharedPreferences(a(context), 0).edit();
        edit.putBoolean(str, z);
        a(edit);
    }

    public static boolean b(Context context, String str) {
        return context.getSharedPreferences(a(context), 0).contains(str);
    }

    private static void a(final Editor editor) {
        b.execute(new Runnable() {
            public void run() {
                editor.commit();
            }
        });
    }

    public static boolean c(Context context, String str) {
        return context.getSharedPreferences(a(context), 0).contains(str);
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        String c = c(context);
        if (TextUtils.equals(c, context.getPackageName())) {
            a = "mistat";
        } else {
            a = "mistat" + q.c(c);
        }
        return a;
    }

    private static String c(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager.getRunningAppProcesses() != null) {
            for (RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == Process.myPid()) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return "";
    }

    public static void b(Context context) {
        context.getSharedPreferences(a(context), 0).edit().clear().commit();
    }
}
