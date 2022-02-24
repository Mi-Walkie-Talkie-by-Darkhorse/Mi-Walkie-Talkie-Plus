package com.ifengyu.intercom.i;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: FileUtils.java */
/* loaded from: classes2.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5326a = "r";

    public static boolean a(String str) {
        if (i0.a(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0070 A[Catch: Exception -> 0x006c, TRY_LEAVE, TryCatch #3 {Exception -> 0x006c, blocks: (B:37:0x0068, B:41:0x0070), top: B:46:0x0068 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] b(java.lang.String r7) {
        /*
            java.lang.String r0 = "readBytes close error,"
            r1 = 0
            if (r7 != 0) goto L_0x0006
            return r1
        L_0x0006:
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: all -> 0x0042, IOException -> 0x0047
            r2.<init>(r7)     // Catch: all -> 0x0042, IOException -> 0x0047
            java.io.ByteArrayOutputStream r7 = new java.io.ByteArrayOutputStream     // Catch: all -> 0x003a, IOException -> 0x003f
            r7.<init>()     // Catch: all -> 0x003a, IOException -> 0x003f
            r3 = 8192(0x2000, float:1.14794E-41)
            byte[] r3 = new byte[r3]     // Catch: IOException -> 0x0038, all -> 0x0065
        L_0x0014:
            int r4 = r2.read(r3)     // Catch: IOException -> 0x0038, all -> 0x0065
            r5 = -1
            if (r4 == r5) goto L_0x0020
            r5 = 0
            r7.write(r3, r5, r4)     // Catch: IOException -> 0x0038, all -> 0x0065
            goto L_0x0014
        L_0x0020:
            r2.close()     // Catch: IOException -> 0x0038, all -> 0x0065
            r7.close()     // Catch: IOException -> 0x0038, all -> 0x0065
            byte[] r1 = r7.toByteArray()     // Catch: IOException -> 0x0038, all -> 0x0065
            r2.close()     // Catch: Exception -> 0x0031
            r7.close()     // Catch: Exception -> 0x0031
            goto L_0x0037
        L_0x0031:
            r7 = move-exception
            java.lang.String r2 = com.ifengyu.intercom.i.r.f5326a
            com.ifengyu.intercom.i.z.b(r2, r0, r7)
        L_0x0037:
            return r1
        L_0x0038:
            r3 = move-exception
            goto L_0x004a
        L_0x003a:
            r7 = move-exception
            r6 = r1
            r1 = r7
            r7 = r6
            goto L_0x0066
        L_0x003f:
            r3 = move-exception
            r7 = r1
            goto L_0x004a
        L_0x0042:
            r7 = move-exception
            r2 = r1
            r1 = r7
            r7 = r2
            goto L_0x0066
        L_0x0047:
            r3 = move-exception
            r7 = r1
            r2 = r7
        L_0x004a:
            java.lang.String r4 = com.ifengyu.intercom.i.r.f5326a     // Catch: all -> 0x0065
            java.lang.String r5 = "Got exception while readBytes,"
            com.ifengyu.intercom.i.z.a(r4, r5, r3)     // Catch: all -> 0x0065
            if (r2 == 0) goto L_0x0059
            r2.close()     // Catch: Exception -> 0x0057
            goto L_0x0059
        L_0x0057:
            r7 = move-exception
            goto L_0x005f
        L_0x0059:
            if (r7 == 0) goto L_0x0064
            r7.close()     // Catch: Exception -> 0x0057
            goto L_0x0064
        L_0x005f:
            java.lang.String r2 = com.ifengyu.intercom.i.r.f5326a
            com.ifengyu.intercom.i.z.b(r2, r0, r7)
        L_0x0064:
            return r1
        L_0x0065:
            r1 = move-exception
        L_0x0066:
            if (r2 == 0) goto L_0x006e
            r2.close()     // Catch: Exception -> 0x006c
            goto L_0x006e
        L_0x006c:
            r7 = move-exception
            goto L_0x0074
        L_0x006e:
            if (r7 == 0) goto L_0x0079
            r7.close()     // Catch: Exception -> 0x006c
            goto L_0x0079
        L_0x0074:
            java.lang.String r2 = com.ifengyu.intercom.i.r.f5326a
            com.ifengyu.intercom.i.z.b(r2, r0, r7)
        L_0x0079:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.i.r.b(java.lang.String):byte[]");
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
            e.printStackTrace();
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
