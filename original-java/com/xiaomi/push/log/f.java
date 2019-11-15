package com.xiaomi.push.log;

import android.content.Context;
import android.util.Pair;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.channel.commonutils.misc.i;
import com.xiaomi.channel.commonutils.misc.i.b;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

public class f implements LoggerInterface {
    private static final SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aaa");
    private static i b = new i(true);
    private static String c = "/MiPushLog";
    /* access modifiers changed from: private */
    public static List<Pair<String, Throwable>> f = Collections.synchronizedList(new ArrayList());
    /* access modifiers changed from: private */
    public String d;
    private Context e;

    public f(Context context) {
        this.e = context;
        if (context.getApplicationContext() != null) {
            this.e = context.getApplicationContext();
        }
        this.d = this.e.getPackageName();
    }

    /* JADX WARNING: type inference failed for: r1v1 */
    /* JADX WARNING: type inference failed for: r2v1, types: [java.io.BufferedWriter] */
    /* JADX WARNING: type inference failed for: r1v7, types: [java.io.BufferedWriter] */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r1v14 */
    /* JADX WARNING: type inference failed for: r1v15 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r1v17 */
    /* JADX WARNING: type inference failed for: r1v18 */
    /* JADX WARNING: type inference failed for: r1v19, types: [java.io.BufferedWriter] */
    /* JADX WARNING: type inference failed for: r2v14 */
    /* JADX WARNING: type inference failed for: r1v23 */
    /* JADX WARNING: type inference failed for: r2v24 */
    /* JADX WARNING: type inference failed for: r2v26 */
    /* JADX WARNING: type inference failed for: r2v27 */
    /* JADX WARNING: type inference failed for: r1v37 */
    /* access modifiers changed from: private */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:139:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00f7 A[SYNTHETIC, Splitter:B:43:0x00f7] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0107 A[SYNTHETIC, Splitter:B:51:0x0107] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x016c A[SYNTHETIC, Splitter:B:86:0x016c] */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x017c A[SYNTHETIC, Splitter:B:94:0x017c] */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b() {
        /*
            r10 = this;
            r2 = 0
            r0 = 0
            r1 = 0
            r3 = 0
            java.io.File r6 = new java.io.File     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            r4.<init>()     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            android.content.Context r5 = r10.e     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            r7 = 0
            java.io.File r5 = r5.getExternalFilesDir(r7)     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            java.lang.String r5 = c     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            r6.<init>(r4)     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            boolean r4 = r6.exists()     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            if (r4 == 0) goto L_0x002f
            boolean r4 = r6.isDirectory()     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            if (r4 != 0) goto L_0x0052
        L_0x002f:
            boolean r4 = r6.mkdirs()     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            if (r4 != 0) goto L_0x0052
            java.lang.String r4 = r10.d     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            java.lang.String r5 = "Create mipushlog directory fail."
            android.util.Log.w(r4, r5)     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            if (r2 == 0) goto L_0x0041
            r3.close()     // Catch:{ IOException -> 0x01af }
        L_0x0041:
            if (r2 == 0) goto L_0x004c
            boolean r3 = r2.isValid()
            if (r3 == 0) goto L_0x004c
            r1.release()     // Catch:{ IOException -> 0x01c0 }
        L_0x004c:
            if (r2 == 0) goto L_0x0051
            r0.close()     // Catch:{ IOException -> 0x01b9 }
        L_0x0051:
            return
        L_0x0052:
            java.io.File r0 = new java.io.File     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            java.lang.String r1 = "log.lock"
            r0.<init>(r6, r1)     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            boolean r1 = r0.exists()     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            if (r1 == 0) goto L_0x0065
            boolean r1 = r0.isDirectory()     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            if (r1 == 0) goto L_0x0068
        L_0x0065:
            r0.createNewFile()     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
        L_0x0068:
            java.io.RandomAccessFile r5 = new java.io.RandomAccessFile     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            java.lang.String r1 = "rw"
            r5.<init>(r0, r1)     // Catch:{ Exception -> 0x01ef, all -> 0x0167 }
            java.nio.channels.FileChannel r0 = r5.getChannel()     // Catch:{ Exception -> 0x01f4, all -> 0x01de }
            java.nio.channels.FileLock r4 = r0.lock()     // Catch:{ Exception -> 0x01f4, all -> 0x01de }
            java.io.BufferedWriter r3 = new java.io.BufferedWriter     // Catch:{ Exception -> 0x01f9, all -> 0x01e1 }
            java.io.OutputStreamWriter r0 = new java.io.OutputStreamWriter     // Catch:{ Exception -> 0x01f9, all -> 0x01e1 }
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x01f9, all -> 0x01e1 }
            java.io.File r7 = new java.io.File     // Catch:{ Exception -> 0x01f9, all -> 0x01e1 }
            java.lang.String r8 = "log1.txt"
            r7.<init>(r6, r8)     // Catch:{ Exception -> 0x01f9, all -> 0x01e1 }
            r8 = 1
            r1.<init>(r7, r8)     // Catch:{ Exception -> 0x01f9, all -> 0x01e1 }
            r0.<init>(r1)     // Catch:{ Exception -> 0x01f9, all -> 0x01e1 }
            r3.<init>(r0)     // Catch:{ Exception -> 0x01f9, all -> 0x01e1 }
        L_0x008e:
            java.util.List<android.util.Pair<java.lang.String, java.lang.Throwable>> r0 = f     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            boolean r0 = r0.isEmpty()     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            if (r0 != 0) goto L_0x0116
            java.util.List<android.util.Pair<java.lang.String, java.lang.Throwable>> r0 = f     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            r1 = 0
            java.lang.Object r0 = r0.remove(r1)     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            android.util.Pair r0 = (android.util.Pair) r0     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.Object r1 = r0.first     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.Object r7 = r0.second     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            if (r7 == 0) goto L_0x00d3
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            r7.<init>()     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.StringBuilder r1 = r7.append(r1)     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.String r7 = "\n"
            java.lang.StringBuilder r1 = r1.append(r7)     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            r7.<init>()     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.StringBuilder r1 = r7.append(r1)     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.Object r0 = r0.second     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.String r0 = android.util.Log.getStackTraceString(r0)     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.StringBuilder r0 = r1.append(r0)     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.String r1 = r0.toString()     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
        L_0x00d3:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            r0.<init>()     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.String r1 = "\n"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            r3.write(r0)     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            goto L_0x008e
        L_0x00ea:
            r0 = move-exception
            r1 = r3
            r2 = r4
            r3 = r5
        L_0x00ee:
            java.lang.String r4 = r10.d     // Catch:{ all -> 0x01e9 }
            java.lang.String r5 = ""
            android.util.Log.e(r4, r5, r0)     // Catch:{ all -> 0x01e9 }
            if (r1 == 0) goto L_0x00fa
            r1.close()     // Catch:{ IOException -> 0x019b }
        L_0x00fa:
            if (r2 == 0) goto L_0x0105
            boolean r0 = r2.isValid()
            if (r0 == 0) goto L_0x0105
            r2.release()     // Catch:{ IOException -> 0x01a5 }
        L_0x0105:
            if (r3 == 0) goto L_0x0051
            r3.close()     // Catch:{ IOException -> 0x010c }
            goto L_0x0051
        L_0x010c:
            r0 = move-exception
            java.lang.String r1 = r10.d
            java.lang.String r2 = ""
        L_0x0111:
            android.util.Log.e(r1, r2, r0)
            goto L_0x0051
        L_0x0116:
            r3.flush()     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            if (r3 == 0) goto L_0x0204
            r3.close()     // Catch:{ Exception -> 0x00ea, all -> 0x01e3 }
            r1 = r2
        L_0x011f:
            java.io.File r0 = new java.io.File     // Catch:{ Exception -> 0x01ff, all -> 0x01e6 }
            java.lang.String r2 = "log1.txt"
            r0.<init>(r6, r2)     // Catch:{ Exception -> 0x01ff, all -> 0x01e6 }
            long r2 = r0.length()     // Catch:{ Exception -> 0x01ff, all -> 0x01e6 }
            r8 = 1048576(0x100000, double:5.180654E-318)
            int r2 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r2 < 0) goto L_0x014a
            java.io.File r2 = new java.io.File     // Catch:{ Exception -> 0x01ff, all -> 0x01e6 }
            java.lang.String r3 = "log0.txt"
            r2.<init>(r6, r3)     // Catch:{ Exception -> 0x01ff, all -> 0x01e6 }
            boolean r3 = r2.exists()     // Catch:{ Exception -> 0x01ff, all -> 0x01e6 }
            if (r3 == 0) goto L_0x0147
            boolean r3 = r2.isFile()     // Catch:{ Exception -> 0x01ff, all -> 0x01e6 }
            if (r3 == 0) goto L_0x0147
            r2.delete()     // Catch:{ Exception -> 0x01ff, all -> 0x01e6 }
        L_0x0147:
            r0.renameTo(r2)     // Catch:{ Exception -> 0x01ff, all -> 0x01e6 }
        L_0x014a:
            if (r1 == 0) goto L_0x014f
            r1.close()     // Catch:{ IOException -> 0x01ca }
        L_0x014f:
            if (r4 == 0) goto L_0x015a
            boolean r0 = r4.isValid()
            if (r0 == 0) goto L_0x015a
            r4.release()     // Catch:{ IOException -> 0x01d4 }
        L_0x015a:
            if (r5 == 0) goto L_0x0051
            r5.close()     // Catch:{ IOException -> 0x0161 }
            goto L_0x0051
        L_0x0161:
            r0 = move-exception
            java.lang.String r1 = r10.d
            java.lang.String r2 = ""
            goto L_0x0111
        L_0x0167:
            r0 = move-exception
            r4 = r2
            r5 = r2
        L_0x016a:
            if (r2 == 0) goto L_0x016f
            r2.close()     // Catch:{ IOException -> 0x0180 }
        L_0x016f:
            if (r4 == 0) goto L_0x017a
            boolean r1 = r4.isValid()
            if (r1 == 0) goto L_0x017a
            r4.release()     // Catch:{ IOException -> 0x0192 }
        L_0x017a:
            if (r5 == 0) goto L_0x017f
            r5.close()     // Catch:{ IOException -> 0x0189 }
        L_0x017f:
            throw r0
        L_0x0180:
            r1 = move-exception
            java.lang.String r2 = r10.d
            java.lang.String r3 = ""
            android.util.Log.e(r2, r3, r1)
            goto L_0x016f
        L_0x0189:
            r1 = move-exception
            java.lang.String r2 = r10.d
            java.lang.String r3 = ""
            android.util.Log.e(r2, r3, r1)
            goto L_0x017f
        L_0x0192:
            r1 = move-exception
            java.lang.String r2 = r10.d
            java.lang.String r3 = ""
            android.util.Log.e(r2, r3, r1)
            goto L_0x017a
        L_0x019b:
            r0 = move-exception
            java.lang.String r1 = r10.d
            java.lang.String r4 = ""
            android.util.Log.e(r1, r4, r0)
            goto L_0x00fa
        L_0x01a5:
            r0 = move-exception
            java.lang.String r1 = r10.d
            java.lang.String r2 = ""
            android.util.Log.e(r1, r2, r0)
            goto L_0x0105
        L_0x01af:
            r3 = move-exception
            java.lang.String r4 = r10.d
            java.lang.String r5 = ""
            android.util.Log.e(r4, r5, r3)
            goto L_0x0041
        L_0x01b9:
            r0 = move-exception
            java.lang.String r1 = r10.d
            java.lang.String r2 = ""
            goto L_0x0111
        L_0x01c0:
            r1 = move-exception
            java.lang.String r3 = r10.d
            java.lang.String r4 = ""
            android.util.Log.e(r3, r4, r1)
            goto L_0x004c
        L_0x01ca:
            r0 = move-exception
            java.lang.String r1 = r10.d
            java.lang.String r2 = ""
            android.util.Log.e(r1, r2, r0)
            goto L_0x014f
        L_0x01d4:
            r0 = move-exception
            java.lang.String r1 = r10.d
            java.lang.String r2 = ""
            android.util.Log.e(r1, r2, r0)
            goto L_0x015a
        L_0x01de:
            r0 = move-exception
            r4 = r2
            goto L_0x016a
        L_0x01e1:
            r0 = move-exception
            goto L_0x016a
        L_0x01e3:
            r0 = move-exception
            r2 = r3
            goto L_0x016a
        L_0x01e6:
            r0 = move-exception
            r2 = r1
            goto L_0x016a
        L_0x01e9:
            r0 = move-exception
            r4 = r2
            r5 = r3
            r2 = r1
            goto L_0x016a
        L_0x01ef:
            r0 = move-exception
            r1 = r2
            r3 = r2
            goto L_0x00ee
        L_0x01f4:
            r0 = move-exception
            r1 = r2
            r3 = r5
            goto L_0x00ee
        L_0x01f9:
            r0 = move-exception
            r1 = r2
            r3 = r5
            r2 = r4
            goto L_0x00ee
        L_0x01ff:
            r0 = move-exception
            r2 = r4
            r3 = r5
            goto L_0x00ee
        L_0x0204:
            r1 = r3
            goto L_0x011f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.log.f.b():void");
    }

    public final void log(String str) {
        log(str, null);
    }

    public final void log(String str, Throwable th) {
        f.add(new Pair(String.format("%1$s %2$s %3$s ", new Object[]{a.format(new Date()), this.d, str}), th));
        b.a((b) new g(this));
    }

    public final void setTag(String str) {
        this.d = str;
    }
}
