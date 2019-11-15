package com.ifengyu.intercom.b;

import android.content.Context;
import android.os.Environment;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: FileUtils */
public class n {
    private static final String a = n.class.getSimpleName();

    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r3v1, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r2v1, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r3v3 */
    /* JADX WARNING: type inference failed for: r3v4, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r2v4, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r3v10 */
    /* JADX WARNING: type inference failed for: r3v11 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0028 A[SYNTHETIC, Splitter:B:17:0x0028] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x002d A[Catch:{ Exception -> 0x0031 }] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x005e A[SYNTHETIC, Splitter:B:35:0x005e] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0063 A[Catch:{ Exception -> 0x0067 }] */
    /* JADX WARNING: Unknown variable types count: 4 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] a(java.lang.String r6) {
        /*
            r0 = 0
            if (r6 != 0) goto L_0x0004
        L_0x0003:
            return r0
        L_0x0004:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ IOException -> 0x0076, all -> 0x0058 }
            r3.<init>(r6)     // Catch:{ IOException -> 0x0076, all -> 0x0058 }
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x007a, all -> 0x0070 }
            r2.<init>()     // Catch:{ IOException -> 0x007a, all -> 0x0070 }
            r1 = 8192(0x2000, float:1.14794E-41)
            byte[] r1 = new byte[r1]     // Catch:{ IOException -> 0x001e }
        L_0x0012:
            int r4 = r3.read(r1)     // Catch:{ IOException -> 0x001e }
            r5 = -1
            if (r4 == r5) goto L_0x003a
            r5 = 0
            r2.write(r1, r5, r4)     // Catch:{ IOException -> 0x001e }
            goto L_0x0012
        L_0x001e:
            r1 = move-exception
        L_0x001f:
            java.lang.String r4 = a     // Catch:{ all -> 0x0074 }
            java.lang.String r5 = "Got exception while readBytes,"
            com.ifengyu.intercom.b.s.b(r4, r5, r1)     // Catch:{ all -> 0x0074 }
            if (r3 == 0) goto L_0x002b
            r3.close()     // Catch:{ Exception -> 0x0031 }
        L_0x002b:
            if (r2 == 0) goto L_0x0003
            r2.close()     // Catch:{ Exception -> 0x0031 }
            goto L_0x0003
        L_0x0031:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r3 = "readBytes close error,"
            com.ifengyu.intercom.b.s.a(r2, r3, r1)
            goto L_0x0003
        L_0x003a:
            r3.close()     // Catch:{ IOException -> 0x001e }
            r2.close()     // Catch:{ IOException -> 0x001e }
            byte[] r0 = r2.toByteArray()     // Catch:{ IOException -> 0x001e }
            if (r3 == 0) goto L_0x0049
            r3.close()     // Catch:{ Exception -> 0x004f }
        L_0x0049:
            if (r2 == 0) goto L_0x0003
            r2.close()     // Catch:{ Exception -> 0x004f }
            goto L_0x0003
        L_0x004f:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r3 = "readBytes close error,"
            com.ifengyu.intercom.b.s.a(r2, r3, r1)
            goto L_0x0003
        L_0x0058:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
        L_0x005c:
            if (r3 == 0) goto L_0x0061
            r3.close()     // Catch:{ Exception -> 0x0067 }
        L_0x0061:
            if (r2 == 0) goto L_0x0066
            r2.close()     // Catch:{ Exception -> 0x0067 }
        L_0x0066:
            throw r0
        L_0x0067:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r3 = "readBytes close error,"
            com.ifengyu.intercom.b.s.a(r2, r3, r1)
            goto L_0x0066
        L_0x0070:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x005c
        L_0x0074:
            r0 = move-exception
            goto L_0x005c
        L_0x0076:
            r1 = move-exception
            r2 = r0
            r3 = r0
            goto L_0x001f
        L_0x007a:
            r1 = move-exception
            r2 = r0
            goto L_0x001f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.b.n.a(java.lang.String):byte[]");
    }

    public static File a(Context context, String str) {
        String str2;
        if ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) {
            str2 = context.getExternalCacheDir().getPath();
        } else {
            str2 = context.getCacheDir().getPath();
        }
        return new File(str2 + File.separator + str);
    }

    public static void a(Context context, String str, String str2, String str3) {
        File file = new File(str2);
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(str2, str3);
            file2.createNewFile();
            a(context, str, file2.getPath());
        } catch (IOException e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    public static void a(Context context, String str, String str2) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(str2);
        InputStream open = context.getAssets().open(str);
        byte[] bArr = new byte[1024];
        for (int read = open.read(bArr); read > 0; read = open.read(bArr)) {
            fileOutputStream.write(bArr, 0, read);
        }
        fileOutputStream.flush();
        open.close();
        fileOutputStream.close();
    }
}
