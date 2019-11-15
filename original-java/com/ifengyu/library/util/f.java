package com.ifengyu.library.util;

import android.content.Context;

/* compiled from: ProcessUtils */
public class f {
    private static final String a = f.class.getSimpleName();

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        String packageName = context.getApplicationContext().getPackageName();
        String b = b(context);
        c.a(a, "processName:" + b);
        return packageName.equals(b);
    }

    public static String b(Context context) {
        String a2 = a();
        if (a2 == null) {
            return c(context);
        }
        return a2;
    }

    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r2v1, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r2v3, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0062 A[SYNTHETIC, Splitter:B:27:0x0062] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a() {
        /*
            r0 = 0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            r1.<init>()     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            java.lang.String r2 = "/proc/"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            int r2 = android.os.Process.myPid()     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            java.lang.String r2 = "/cmdline"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            java.lang.String r1 = r1.toString()     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            r4.<init>(r1)     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            java.lang.String r1 = "iso-8859-1"
            r3.<init>(r4, r1)     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            r2.<init>(r3)     // Catch:{ IOException -> 0x006d, all -> 0x005d }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x003f }
            r1.<init>()     // Catch:{ IOException -> 0x003f }
        L_0x0034:
            int r3 = r2.read()     // Catch:{ IOException -> 0x003f }
            if (r3 <= 0) goto L_0x0049
            char r3 = (char) r3     // Catch:{ IOException -> 0x003f }
            r1.append(r3)     // Catch:{ IOException -> 0x003f }
            goto L_0x0034
        L_0x003f:
            r1 = move-exception
        L_0x0040:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x006b }
            if (r2 == 0) goto L_0x0048
            r2.close()     // Catch:{ IOException -> 0x0058 }
        L_0x0048:
            return r0
        L_0x0049:
            java.lang.String r0 = r1.toString()     // Catch:{ IOException -> 0x003f }
            if (r2 == 0) goto L_0x0048
            r2.close()     // Catch:{ IOException -> 0x0053 }
            goto L_0x0048
        L_0x0053:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0048
        L_0x0058:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0048
        L_0x005d:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0060:
            if (r2 == 0) goto L_0x0065
            r2.close()     // Catch:{ IOException -> 0x0066 }
        L_0x0065:
            throw r0
        L_0x0066:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0065
        L_0x006b:
            r0 = move-exception
            goto L_0x0060
        L_0x006d:
            r1 = move-exception
            r2 = r0
            goto L_0x0040
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.library.util.f.a():java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0038 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:2:0x000c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String c(android.content.Context r6) {
        /*
            r2 = 0
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r6.getSystemService(r0)
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0
            if (r0 != 0) goto L_0x0012
        L_0x000b:
            return r2
        L_0x000c:
            r2 = 100
            java.lang.Thread.sleep(r2)     // Catch:{ InterruptedException -> 0x003a }
        L_0x0011:
            r2 = r1
        L_0x0012:
            java.util.List r1 = r0.getRunningAppProcesses()
            if (r1 == 0) goto L_0x003f
            java.util.Iterator r3 = r1.iterator()
        L_0x001c:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L_0x003f
            java.lang.Object r1 = r3.next()
            android.app.ActivityManager$RunningAppProcessInfo r1 = (android.app.ActivityManager.RunningAppProcessInfo) r1
            int r4 = r1.pid
            int r5 = android.os.Process.myPid()
            if (r4 != r5) goto L_0x001c
            java.lang.String r1 = r1.processName
        L_0x0032:
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L_0x000c
            r2 = r1
            goto L_0x000b
        L_0x003a:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x0011
        L_0x003f:
            r1 = r2
            goto L_0x0032
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.library.util.f.c(android.content.Context):java.lang.String");
    }
}
