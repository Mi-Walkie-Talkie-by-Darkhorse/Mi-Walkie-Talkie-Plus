package com.xiaomi.push;

/* loaded from: classes2.dex */
public class ai {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(android.content.Context r5, java.lang.String r6, long r7) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 1
            r2 = 23
            if (r0 < r2) goto L_0x0010
            java.lang.String r0 = "android.permission.WRITE_EXTERNAL_STORAGE"
            boolean r0 = com.xiaomi.push.g.c(r5, r0)
            if (r0 != 0) goto L_0x0010
            return r1
        L_0x0010:
            r0 = 0
            java.io.File r2 = new java.io.File     // Catch: all -> 0x004a, IOException -> 0x004d
            java.io.File r3 = r5.getExternalFilesDir(r0)     // Catch: all -> 0x004a, IOException -> 0x004d
            java.lang.String r4 = "/.vdevdir/"
            r2.<init>(r3, r4)     // Catch: all -> 0x004a, IOException -> 0x004d
            java.io.File r3 = new java.io.File     // Catch: all -> 0x004a, IOException -> 0x004d
            java.lang.String r4 = "lcfp.lock"
            r3.<init>(r2, r4)     // Catch: all -> 0x004a, IOException -> 0x004d
            com.xiaomi.push.aa.m65a(r3)     // Catch: all -> 0x004a, IOException -> 0x004d
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile     // Catch: all -> 0x004a, IOException -> 0x004d
            java.lang.String r4 = "rw"
            r2.<init>(r3, r4)     // Catch: all -> 0x004a, IOException -> 0x004d
            java.nio.channels.FileChannel r3 = r2.getChannel()     // Catch: IOException -> 0x0048, all -> 0x0061
            java.nio.channels.FileLock r0 = r3.lock()     // Catch: IOException -> 0x0048, all -> 0x0061
            boolean r5 = b(r5, r6, r7)     // Catch: IOException -> 0x0048, all -> 0x0061
            if (r0 == 0) goto L_0x0044
            boolean r6 = r0.isValid()
            if (r6 == 0) goto L_0x0044
            r0.release()     // Catch: IOException -> 0x0044
        L_0x0044:
            com.xiaomi.push.aa.a(r2)
            return r5
        L_0x0048:
            r5 = move-exception
            goto L_0x004f
        L_0x004a:
            r5 = move-exception
            r2 = r0
            goto L_0x0062
        L_0x004d:
            r5 = move-exception
            r2 = r0
        L_0x004f:
            r5.printStackTrace()     // Catch: all -> 0x0061
            if (r0 == 0) goto L_0x005d
            boolean r5 = r0.isValid()
            if (r5 == 0) goto L_0x005d
            r0.release()     // Catch: IOException -> 0x005d
        L_0x005d:
            com.xiaomi.push.aa.a(r2)
            return r1
        L_0x0061:
            r5 = move-exception
        L_0x0062:
            if (r0 == 0) goto L_0x006d
            boolean r6 = r0.isValid()
            if (r6 == 0) goto L_0x006d
            r0.release()     // Catch: IOException -> 0x006d
        L_0x006d:
            com.xiaomi.push.aa.a(r2)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ai.a(android.content.Context, java.lang.String, long):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d8 A[Catch: IOException -> 0x00e8, all -> 0x00fa, LOOP:0: B:39:0x00d2->B:41:0x00d8, LOOP_END, TRY_LEAVE, TryCatch #0 {IOException -> 0x00e8, blocks: (B:38:0x00ce, B:39:0x00d2, B:41:0x00d8), top: B:54:0x00ce }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean b(android.content.Context r16, java.lang.String r17, long r18) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ai.b(android.content.Context, java.lang.String, long):boolean");
    }
}
