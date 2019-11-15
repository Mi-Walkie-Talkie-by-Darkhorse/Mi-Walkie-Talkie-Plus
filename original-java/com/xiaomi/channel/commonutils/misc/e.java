package com.xiaomi.channel.commonutils.misc;

import android.content.Context;
import android.os.Environment;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.channel.commonutils.file.a;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;

public class e {
    private static final String a = (Environment.getExternalStorageDirectory().getPath() + "/mipush/");
    private static final String b = (a + "lcfp");
    private static final String c = (a + "lcfp.lock");

    public static boolean a(Context context, String str, long j) {
        RandomAccessFile randomAccessFile;
        FileLock fileLock = null;
        try {
            File file = new File(new File(a), c);
            a.a(file);
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileLock = randomAccessFile.getChannel().lock();
                boolean b2 = b(context, str, j);
                if (fileLock != null && fileLock.isValid()) {
                    try {
                        fileLock.release();
                    } catch (IOException e) {
                    }
                }
                a.a(randomAccessFile);
                return b2;
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            e = e3;
            randomAccessFile = null;
            try {
                ThrowableExtension.printStackTrace(e);
                if (fileLock != null && fileLock.isValid()) {
                    try {
                        fileLock.release();
                    } catch (IOException e4) {
                    }
                }
                a.a(randomAccessFile);
                return true;
            } catch (Throwable th) {
                th = th;
                if (fileLock != null && fileLock.isValid()) {
                    try {
                        fileLock.release();
                    } catch (IOException e5) {
                    }
                }
                a.a(randomAccessFile);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
            fileLock.release();
            a.a(randomAccessFile);
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00d1 A[Catch:{ IOException -> 0x00e1 }, LOOP:1: B:37:0x00cb->B:39:0x00d1, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean b(android.content.Context r12, java.lang.String r13, long r14) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L_0x0010
            java.lang.String r0 = "android.permission.WRITE_EXTERNAL_STORAGE"
            boolean r0 = com.xiaomi.channel.commonutils.android.b.h(r12, r0)
            if (r0 != 0) goto L_0x0010
            r0 = 1
        L_0x000f:
            return r0
        L_0x0010:
            java.io.File r3 = new java.io.File
            java.lang.String r0 = b
            r3.<init>(r0)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            long r6 = java.lang.System.currentTimeMillis()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.StringBuilder r0 = r0.append(r13)
            java.lang.String r1 = ":"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = r12.getPackageName()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = ","
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.StringBuilder r0 = r0.append(r6)
            java.lang.String r2 = r0.toString()
            boolean r0 = r3.exists()
            if (r0 == 0) goto L_0x00fb
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ Exception -> 0x011a, all -> 0x00f3 }
            java.io.FileReader r5 = new java.io.FileReader     // Catch:{ Exception -> 0x011a, all -> 0x00f3 }
            r5.<init>(r3)     // Catch:{ Exception -> 0x011a, all -> 0x00f3 }
            r1.<init>(r5)     // Catch:{ Exception -> 0x011a, all -> 0x00f3 }
        L_0x0056:
            java.lang.String r0 = r1.readLine()     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            if (r0 == 0) goto L_0x00ef
            java.lang.String r5 = ":"
            java.lang.String[] r5 = r0.split(r5)     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            int r8 = r5.length     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            r9 = 2
            if (r8 != r9) goto L_0x0056
            r8 = 0
            r8 = r5[r8]     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            java.lang.String r9 = java.lang.String.valueOf(r13)     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            boolean r8 = android.text.TextUtils.equals(r8, r9)     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            if (r8 == 0) goto L_0x00ad
            r0 = 1
            r0 = r5[r0]     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            java.lang.String r5 = ","
            java.lang.String[] r0 = r0.split(r5)     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            int r5 = r0.length     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            r8 = 2
            if (r5 != r8) goto L_0x0056
            r5 = 1
            r5 = r0[r5]     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            long r8 = java.lang.Long.parseLong(r5)     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            r5 = 0
            r0 = r0[r5]     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            java.lang.String r5 = r12.getPackageName()     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            boolean r0 = android.text.TextUtils.equals(r0, r5)     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            if (r0 != 0) goto L_0x0056
            long r8 = r6 - r8
            long r8 = java.lang.Math.abs(r8)     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            float r0 = (float) r8
            r8 = 1000(0x3e8, double:4.94E-321)
            long r8 = r8 * r14
            float r5 = (float) r8
            r8 = 1063675494(0x3f666666, float:0.9)
            float r5 = r5 * r8
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 >= 0) goto L_0x0056
            r0 = 0
            com.xiaomi.channel.commonutils.file.a.a(r1)
            goto L_0x000f
        L_0x00ad:
            r4.add(r0)     // Catch:{ Exception -> 0x00b1, all -> 0x0113 }
            goto L_0x0056
        L_0x00b1:
            r0 = move-exception
            r0 = r1
        L_0x00b3:
            r4.clear()     // Catch:{ all -> 0x0115 }
            com.xiaomi.channel.commonutils.file.a.a(r0)
        L_0x00b9:
            r4.add(r2)
            r2 = 0
            java.io.BufferedWriter r1 = new java.io.BufferedWriter     // Catch:{ IOException -> 0x0110, all -> 0x0108 }
            java.io.FileWriter r0 = new java.io.FileWriter     // Catch:{ IOException -> 0x0110, all -> 0x0108 }
            r0.<init>(r3)     // Catch:{ IOException -> 0x0110, all -> 0x0108 }
            r1.<init>(r0)     // Catch:{ IOException -> 0x0110, all -> 0x0108 }
            java.util.Iterator r2 = r4.iterator()     // Catch:{ IOException -> 0x00e1 }
        L_0x00cb:
            boolean r0 = r2.hasNext()     // Catch:{ IOException -> 0x00e1 }
            if (r0 == 0) goto L_0x0104
            java.lang.Object r0 = r2.next()     // Catch:{ IOException -> 0x00e1 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ IOException -> 0x00e1 }
            r1.write(r0)     // Catch:{ IOException -> 0x00e1 }
            r1.newLine()     // Catch:{ IOException -> 0x00e1 }
            r1.flush()     // Catch:{ IOException -> 0x00e1 }
            goto L_0x00cb
        L_0x00e1:
            r0 = move-exception
        L_0x00e2:
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x010e }
            com.xiaomi.channel.commonutils.logger.b.d(r0)     // Catch:{ all -> 0x010e }
            com.xiaomi.channel.commonutils.file.a.a(r1)
        L_0x00ec:
            r0 = 1
            goto L_0x000f
        L_0x00ef:
            com.xiaomi.channel.commonutils.file.a.a(r1)
            goto L_0x00b9
        L_0x00f3:
            r1 = move-exception
            r10 = r1
            r1 = r0
            r0 = r10
        L_0x00f7:
            com.xiaomi.channel.commonutils.file.a.a(r1)
            throw r0
        L_0x00fb:
            boolean r0 = com.xiaomi.channel.commonutils.file.a.a(r3)
            if (r0 != 0) goto L_0x00b9
            r0 = 1
            goto L_0x000f
        L_0x0104:
            com.xiaomi.channel.commonutils.file.a.a(r1)
            goto L_0x00ec
        L_0x0108:
            r0 = move-exception
            r1 = r2
        L_0x010a:
            com.xiaomi.channel.commonutils.file.a.a(r1)
            throw r0
        L_0x010e:
            r0 = move-exception
            goto L_0x010a
        L_0x0110:
            r0 = move-exception
            r1 = r2
            goto L_0x00e2
        L_0x0113:
            r0 = move-exception
            goto L_0x00f7
        L_0x0115:
            r1 = move-exception
            r10 = r1
            r1 = r0
            r0 = r10
            goto L_0x00f7
        L_0x011a:
            r1 = move-exception
            goto L_0x00b3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.commonutils.misc.e.b(android.content.Context, java.lang.String, long):boolean");
    }
}
