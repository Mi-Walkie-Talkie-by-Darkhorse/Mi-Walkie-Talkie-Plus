package com.ifengyu.library.a;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

/* compiled from: ProcessUtils.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f7172a = "h";

    public static String a(Context context) {
        String a2 = a();
        return a2 == null ? b(context) : a2;
    }

    private static String b(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        String str = null;
        if (activityManager == null) {
            return null;
        }
        while (true) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses != null) {
                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ActivityManager.RunningAppProcessInfo next = it.next();
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

    public static boolean c(Context context) {
        if (context == null) {
            return false;
        }
        String packageName = context.getApplicationContext().getPackageName();
        String a2 = a(context);
        String str = f7172a;
        g.a(str, "processName:" + a2);
        return packageName.equals(a2);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String a() {
        /*
            r0 = 0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: all -> 0x004b, IOException -> 0x004f
            r1.<init>()     // Catch: all -> 0x004b, IOException -> 0x004f
            java.lang.String r2 = "/proc/"
            r1.append(r2)     // Catch: all -> 0x004b, IOException -> 0x004f
            int r2 = android.os.Process.myPid()     // Catch: all -> 0x004b, IOException -> 0x004f
            r1.append(r2)     // Catch: all -> 0x004b, IOException -> 0x004f
            java.lang.String r2 = "/cmdline"
            r1.append(r2)     // Catch: all -> 0x004b, IOException -> 0x004f
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x004b, IOException -> 0x004f
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: all -> 0x004b, IOException -> 0x004f
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: all -> 0x004b, IOException -> 0x004f
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: all -> 0x004b, IOException -> 0x004f
            r4.<init>(r1)     // Catch: all -> 0x004b, IOException -> 0x004f
            java.lang.String r1 = "iso-8859-1"
            r3.<init>(r4, r1)     // Catch: all -> 0x004b, IOException -> 0x004f
            r2.<init>(r3)     // Catch: all -> 0x004b, IOException -> 0x004f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: IOException -> 0x0049, all -> 0x005f
            r1.<init>()     // Catch: IOException -> 0x0049, all -> 0x005f
        L_0x0031:
            int r3 = r2.read()     // Catch: IOException -> 0x0049, all -> 0x005f
            if (r3 <= 0) goto L_0x003c
            char r3 = (char) r3     // Catch: IOException -> 0x0049, all -> 0x005f
            r1.append(r3)     // Catch: IOException -> 0x0049, all -> 0x005f
            goto L_0x0031
        L_0x003c:
            java.lang.String r0 = r1.toString()     // Catch: IOException -> 0x0049, all -> 0x005f
            r2.close()     // Catch: IOException -> 0x0044
            goto L_0x0048
        L_0x0044:
            r1 = move-exception
            r1.printStackTrace()
        L_0x0048:
            return r0
        L_0x0049:
            r1 = move-exception
            goto L_0x0051
        L_0x004b:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x0060
        L_0x004f:
            r1 = move-exception
            r2 = r0
        L_0x0051:
            r1.printStackTrace()     // Catch: all -> 0x005f
            if (r2 == 0) goto L_0x005e
            r2.close()     // Catch: IOException -> 0x005a
            goto L_0x005e
        L_0x005a:
            r1 = move-exception
            r1.printStackTrace()
        L_0x005e:
            return r0
        L_0x005f:
            r0 = move-exception
        L_0x0060:
            if (r2 == 0) goto L_0x006a
            r2.close()     // Catch: IOException -> 0x0066
            goto L_0x006a
        L_0x0066:
            r1 = move-exception
            r1.printStackTrace()
        L_0x006a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.library.a.h.a():java.lang.String");
    }
}
