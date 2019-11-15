package com.sina.weibo.sdk.statistic;

import android.os.Environment;
import java.io.File;

/* compiled from: LogFileUtil */
class d {
    public static String a(String str) {
        String str2 = "";
        String str3 = "";
        if (e.a() != null) {
            str3 = new StringBuilder(String.valueOf(com.sina.weibo.sdk.utils.d.a(e.a()))).append("/").toString();
        }
        return a() + "/sina/weibo/.applogs/" + str3 + str + ".txt";
    }

    private static String a() {
        File file;
        if (Environment.getExternalStorageState().equals("mounted")) {
            file = Environment.getExternalStorageDirectory();
        } else {
            file = null;
        }
        if (file != null) {
            return file.toString();
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x00b3 A[SYNTHETIC, Splitter:B:49:0x00b3] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00c4 A[SYNTHETIC, Splitter:B:57:0x00c4] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void a(java.lang.String r11, java.lang.String r12, boolean r13) {
        /*
            r1 = 0
            java.lang.Class<com.sina.weibo.sdk.statistic.d> r2 = com.sina.weibo.sdk.statistic.d.class
            monitor-enter(r2)
            boolean r0 = android.text.TextUtils.isEmpty(r11)     // Catch:{ all -> 0x0091 }
            if (r0 == 0) goto L_0x000c
        L_0x000a:
            monitor-exit(r2)
            return
        L_0x000c:
            java.lang.String r0 = "WBAgent"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0091 }
            java.lang.String r4 = "filePath:"
            r3.<init>(r4)     // Catch:{ all -> 0x0091 }
            java.lang.StringBuilder r3 = r3.append(r11)     // Catch:{ all -> 0x0091 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0091 }
            com.sina.weibo.sdk.utils.c.b(r0, r3)     // Catch:{ all -> 0x0091 }
            if (r12 == 0) goto L_0x000a
            int r0 = r12.length()     // Catch:{ all -> 0x0091 }
            if (r0 == 0) goto L_0x000a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0091 }
            r3.<init>(r12)     // Catch:{ all -> 0x0091 }
            r0 = 0
            char r0 = r3.charAt(r0)     // Catch:{ all -> 0x0091 }
            r4 = 91
            if (r0 != r4) goto L_0x003d
            r0 = 0
            r4 = 1
            java.lang.String r5 = ""
            r3.replace(r0, r4, r5)     // Catch:{ all -> 0x0091 }
        L_0x003d:
            int r0 = r3.length()     // Catch:{ all -> 0x0091 }
            int r0 = r0 + -1
            char r0 = r3.charAt(r0)     // Catch:{ all -> 0x0091 }
            r4 = 44
            if (r0 == r4) goto L_0x005a
            int r0 = r3.length()     // Catch:{ all -> 0x0091 }
            int r0 = r0 + -1
            int r4 = r3.length()     // Catch:{ all -> 0x0091 }
            java.lang.String r5 = ","
            r3.replace(r0, r4, r5)     // Catch:{ all -> 0x0091 }
        L_0x005a:
            java.io.File r4 = new java.io.File     // Catch:{ all -> 0x0091 }
            r4.<init>(r11)     // Catch:{ all -> 0x0091 }
            r0 = 0
            java.io.File r5 = r4.getParentFile()     // Catch:{ IOException -> 0x00b0, all -> 0x00be }
            boolean r6 = r5.exists()     // Catch:{ IOException -> 0x00b0, all -> 0x00be }
            if (r6 != 0) goto L_0x006d
            r5.mkdirs()     // Catch:{ IOException -> 0x00b0, all -> 0x00be }
        L_0x006d:
            boolean r5 = r4.exists()     // Catch:{ IOException -> 0x00b0, all -> 0x00be }
            if (r5 != 0) goto L_0x0094
            r4.createNewFile()     // Catch:{ IOException -> 0x00b0, all -> 0x00be }
        L_0x0076:
            java.io.FileWriter r1 = new java.io.FileWriter     // Catch:{ IOException -> 0x00b0, all -> 0x00be }
            r1.<init>(r4, r13)     // Catch:{ IOException -> 0x00b0, all -> 0x00be }
            java.lang.String r0 = r3.toString()     // Catch:{ IOException -> 0x00cf, all -> 0x00cd }
            r1.write(r0)     // Catch:{ IOException -> 0x00cf, all -> 0x00cd }
            r1.flush()     // Catch:{ IOException -> 0x00cf, all -> 0x00cd }
            if (r1 == 0) goto L_0x000a
            r1.close()     // Catch:{ IOException -> 0x008b }
            goto L_0x000a
        L_0x008b:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0091 }
            goto L_0x000a
        L_0x0091:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        L_0x0094:
            long r6 = r4.lastModified()     // Catch:{ IOException -> 0x00b0, all -> 0x00be }
            r8 = 0
            int r5 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r5 <= 0) goto L_0x0076
            long r6 = java.lang.System.currentTimeMillis()     // Catch:{ IOException -> 0x00b0, all -> 0x00be }
            long r8 = r4.lastModified()     // Catch:{ IOException -> 0x00b0, all -> 0x00be }
            long r6 = r6 - r8
            r8 = 86400000(0x5265c00, double:4.2687272E-316)
            int r5 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r5 <= 0) goto L_0x0076
            r13 = r1
            goto L_0x0076
        L_0x00b0:
            r1 = move-exception
        L_0x00b1:
            if (r0 == 0) goto L_0x000a
            r0.close()     // Catch:{ IOException -> 0x00b8 }
            goto L_0x000a
        L_0x00b8:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0091 }
            goto L_0x000a
        L_0x00be:
            r1 = move-exception
            r10 = r1
            r1 = r0
            r0 = r10
        L_0x00c2:
            if (r1 == 0) goto L_0x00c7
            r1.close()     // Catch:{ IOException -> 0x00c8 }
        L_0x00c7:
            throw r0     // Catch:{ all -> 0x0091 }
        L_0x00c8:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0091 }
            goto L_0x00c7
        L_0x00cd:
            r0 = move-exception
            goto L_0x00c2
        L_0x00cf:
            r0 = move-exception
            r0 = r1
            goto L_0x00b1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.statistic.d.a(java.lang.String, java.lang.String, boolean):void");
    }
}
