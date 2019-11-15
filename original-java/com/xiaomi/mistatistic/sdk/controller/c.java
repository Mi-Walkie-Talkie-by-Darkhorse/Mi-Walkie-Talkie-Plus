package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/* compiled from: ApplicationContextHolder */
public abstract class c {
    /* access modifiers changed from: private */
    public static Context a;
    private static String b;
    private static String c;
    private static String d;
    private static String e;
    private static String f;
    private static String g;

    public static void a(Context context, String str, String str2, String str3) {
        a = context;
        b = str;
        c = str2;
        d = str3;
        g = String.valueOf(System.currentTimeMillis());
    }

    public static Context a() {
        return a;
    }

    public static String b() {
        return b;
    }

    public static String c() {
        return c;
    }

    public static String d() {
        return d;
    }

    public static String e() {
        if (!TextUtils.isEmpty(e)) {
            return e;
        }
        try {
            final PackageManager packageManager = a.getPackageManager();
            FutureTask futureTask = new FutureTask(new Callable<String>() {
                /* renamed from: a */
                public String call() throws Exception {
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(c.a.getPackageName(), 16384);
                        if (packageInfo != null) {
                            return packageInfo.versionName;
                        }
                        return null;
                    } catch (Exception e) {
                        h.a("getPackageInfo exception: ", (Throwable) e);
                        return null;
                    }
                }
            });
            new Thread(futureTask).start();
            e = (String) futureTask.get(1000, TimeUnit.MILLISECONDS);
        } catch (Exception e2) {
            h.a("getVersion exception: ", (Throwable) e2);
        }
        return e;
    }

    public static String f() {
        return g;
    }

    public static void a(String str) {
        e = str;
    }

    public static String g() {
        if (!TextUtils.isEmpty(f)) {
            return f;
        }
        f = a.getPackageName();
        return f;
    }

    public static void b(String str) {
        f = str;
    }
}
