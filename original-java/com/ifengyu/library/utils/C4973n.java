package com.ifengyu.library.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.List;

/* compiled from: ProcessUtils.java */
/* renamed from: com.ifengyu.library.utils.n */
/* loaded from: classes2.dex */
public class C4973n {

    /* renamed from: a */
    private static final String f16388a = "n";

    /* JADX WARN: Removed duplicated region for block: B:38:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String m8638a() {
        BufferedReader bufferedReader;
        Throwable th;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
        } catch (IOException e) {
            e = e;
            bufferedReader = null;
        } catch (Throwable th2) {
            bufferedReader = null;
            th = th2;
            if (bufferedReader != null) {
            }
            throw th;
        }
        try {
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int read = bufferedReader.read();
                    if (read <= 0) {
                        break;
                    }
                    sb.append((char) read);
                }
                String sb2 = sb.toString();
                try {
                    bufferedReader.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                return sb2;
            } catch (Throwable th3) {
                th = th3;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            e.printStackTrace();
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            return null;
        }
    }

    /* renamed from: b */
    public static String m8637b(Context context) {
        String m8638a = m8638a();
        return m8638a == null ? m8636c(context) : m8638a;
    }

    /* renamed from: c */
    private static String m8636c(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        String str = null;
        if (activityManager == null) {
            return null;
        }
        while (true) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses != null) {
                Iterator<ActivityManager.RunningAppProcessInfo> it2 = runningAppProcesses.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    ActivityManager.RunningAppProcessInfo next = it2.next();
                    if (next.pid == Process.myPid()) {
                        str = next.processName;
                        break;
                    }
                }
            }
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: d */
    public static boolean m8635d(Context context) {
        if (context == null) {
            return false;
        }
        String packageName = context.getApplicationContext().getPackageName();
        String m8637b = m8637b(context);
        String str = f16388a;
        C4971k.m8659a(str, "processName:" + m8637b);
        return packageName.equals(m8637b);
    }
}
