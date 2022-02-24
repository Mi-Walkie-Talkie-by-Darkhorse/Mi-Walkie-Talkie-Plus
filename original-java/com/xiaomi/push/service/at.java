package com.xiaomi.push.service;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.xiaomi.push.aa;
import com.xiaomi.push.bo;
import com.xiaomi.push.z;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class at {

    /* renamed from: a  reason: collision with root package name */
    private static long f9248a;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f9249a;

        /* renamed from: a  reason: collision with other field name */
        byte[] f924a;

        public a(byte[] bArr, int i) {
            this.f924a = bArr;
            this.f9249a = i;
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public long f9250a;

        /* renamed from: a  reason: collision with other field name */
        public Bitmap f925a;

        public b(Bitmap bitmap, long j) {
            this.f925a = bitmap;
            this.f9250a = j;
        }
    }

    private static int a(Context context, InputStream inputStream) {
        int i;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            com.xiaomi.channel.commonutils.logger.b.m1a("decode dimension failed for bitmap.");
            return 1;
        }
        int round = Math.round((context.getResources().getDisplayMetrics().densityDpi / 160.0f) * 48.0f);
        int i2 = options.outWidth;
        if (i2 <= round || (i = options.outHeight) <= round) {
            return 1;
        }
        return Math.min(i2 / round, i / round);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap a(android.content.Context r3, java.lang.String r4) {
        /*
            android.net.Uri r4 = android.net.Uri.parse(r4)
            r0 = 0
            android.content.ContentResolver r1 = r3.getContentResolver()     // Catch: all -> 0x0032, IOException -> 0x0035
            java.io.InputStream r1 = r1.openInputStream(r4)     // Catch: all -> 0x0032, IOException -> 0x0035
            int r2 = a(r3, r1)     // Catch: all -> 0x002d, IOException -> 0x002f
            android.content.ContentResolver r3 = r3.getContentResolver()     // Catch: all -> 0x002d, IOException -> 0x002f
            java.io.InputStream r3 = r3.openInputStream(r4)     // Catch: all -> 0x002d, IOException -> 0x002f
            android.graphics.BitmapFactory$Options r4 = new android.graphics.BitmapFactory$Options     // Catch: IOException -> 0x002b, all -> 0x0042
            r4.<init>()     // Catch: IOException -> 0x002b, all -> 0x0042
            r4.inSampleSize = r2     // Catch: IOException -> 0x002b, all -> 0x0042
            android.graphics.Bitmap r4 = android.graphics.BitmapFactory.decodeStream(r3, r0, r4)     // Catch: IOException -> 0x002b, all -> 0x0042
            com.xiaomi.push.aa.a(r3)
            com.xiaomi.push.aa.a(r1)
            return r4
        L_0x002b:
            r4 = move-exception
            goto L_0x0038
        L_0x002d:
            r4 = move-exception
            goto L_0x0044
        L_0x002f:
            r4 = move-exception
            r3 = r0
            goto L_0x0038
        L_0x0032:
            r4 = move-exception
            r1 = r0
            goto L_0x0044
        L_0x0035:
            r4 = move-exception
            r3 = r0
            r1 = r3
        L_0x0038:
            com.xiaomi.channel.commonutils.logger.b.a(r4)     // Catch: all -> 0x0042
            com.xiaomi.push.aa.a(r3)
            com.xiaomi.push.aa.a(r1)
            return r0
        L_0x0042:
            r4 = move-exception
            r0 = r3
        L_0x0044:
            com.xiaomi.push.aa.a(r0)
            com.xiaomi.push.aa.a(r1)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.at.a(android.content.Context, java.lang.String):android.graphics.Bitmap");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00dd, code lost:
        if (r1 == null) goto L_0x00ff;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00df, code lost:
        r1.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00fc, code lost:
        if (r1 == null) goto L_0x00ff;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ff, code lost:
        return null;
     */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0101: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:61:0x0101 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.xiaomi.push.service.at.a a(java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.at.a(java.lang.String, boolean):com.xiaomi.push.service.at$a");
    }

    public static b a(Context context, String str, boolean z) {
        Throwable th;
        Exception e;
        a a2;
        ByteArrayInputStream byteArrayInputStream = null;
        b bVar = new b(null, 0L);
        Bitmap b2 = b(context, str);
        try {
            if (b2 != null) {
                bVar.f925a = b2;
                return bVar;
            }
            try {
                a2 = a(str, z);
            } catch (Exception e2) {
                e = e2;
            }
            if (a2 == null) {
                aa.a((Closeable) null);
                return bVar;
            }
            bVar.f9250a = a2.f9249a;
            byte[] bArr = a2.f924a;
            if (bArr != null) {
                if (z) {
                    ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr);
                    try {
                        int a3 = a(context, byteArrayInputStream2);
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inSampleSize = a3;
                        bVar.f925a = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                        byteArrayInputStream = byteArrayInputStream2;
                    } catch (Exception e3) {
                        e = e3;
                        byteArrayInputStream = byteArrayInputStream2;
                        com.xiaomi.channel.commonutils.logger.b.a(e);
                        aa.a(byteArrayInputStream);
                        return bVar;
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayInputStream = byteArrayInputStream2;
                        aa.a(byteArrayInputStream);
                        throw th;
                    }
                } else {
                    bVar.f925a = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                }
            }
            a(context, a2.f924a, str);
            aa.a(byteArrayInputStream);
            return bVar;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static void a(Context context) {
        File file = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon");
        if (file.exists()) {
            if (f9248a == 0) {
                f9248a = z.a(file);
            }
            if (f9248a > 15728640) {
                try {
                    File[] listFiles = file.listFiles();
                    for (int i = 0; i < listFiles.length; i++) {
                        if (!listFiles[i].isDirectory() && Math.abs(System.currentTimeMillis() - listFiles[i].lastModified()) > 1209600) {
                            listFiles[i].delete();
                        }
                    }
                } catch (Exception e) {
                    com.xiaomi.channel.commonutils.logger.b.a(e);
                }
                f9248a = 0L;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(android.content.Context r5, byte[] r6, java.lang.String r7) {
        /*
            if (r6 != 0) goto L_0x0008
            java.lang.String r5 = "cannot save small icon cause bitmap is null"
            com.xiaomi.channel.commonutils.logger.b.m1a(r5)
            return
        L_0x0008:
            a(r5)
            java.io.File r0 = new java.io.File
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.io.File r2 = r5.getCacheDir()
            java.lang.String r2 = r2.getPath()
            r1.append(r2)
            java.lang.String r2 = java.io.File.separator
            r1.append(r2)
            java.lang.String r2 = "mipush_icon"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            boolean r1 = r0.exists()
            if (r1 != 0) goto L_0x0037
            r0.mkdirs()
        L_0x0037:
            java.io.File r1 = new java.io.File
            java.lang.String r7 = com.xiaomi.push.bo.a(r7)
            r1.<init>(r0, r7)
            r7 = 0
            boolean r0 = r1.exists()     // Catch: all -> 0x0066, Exception -> 0x0069
            if (r0 != 0) goto L_0x004a
            r1.createNewFile()     // Catch: all -> 0x0066, Exception -> 0x0069
        L_0x004a:
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: all -> 0x0066, Exception -> 0x0069
            r0.<init>(r1)     // Catch: all -> 0x0066, Exception -> 0x0069
            java.io.BufferedOutputStream r3 = new java.io.BufferedOutputStream     // Catch: Exception -> 0x0064, all -> 0x00a9
            r3.<init>(r0)     // Catch: Exception -> 0x0064, all -> 0x00a9
            r3.write(r6)     // Catch: all -> 0x005e, Exception -> 0x0061
            r3.flush()     // Catch: all -> 0x005e, Exception -> 0x0061
            com.xiaomi.push.aa.a(r3)
            goto L_0x0071
        L_0x005e:
            r5 = move-exception
            r7 = r3
            goto L_0x00aa
        L_0x0061:
            r6 = move-exception
            r7 = r3
            goto L_0x006b
        L_0x0064:
            r6 = move-exception
            goto L_0x006b
        L_0x0066:
            r5 = move-exception
            r0 = r7
            goto L_0x00aa
        L_0x0069:
            r6 = move-exception
            r0 = r7
        L_0x006b:
            com.xiaomi.channel.commonutils.logger.b.a(r6)     // Catch: all -> 0x00a9
            com.xiaomi.push.aa.a(r7)
        L_0x0071:
            com.xiaomi.push.aa.a(r0)
            long r6 = com.xiaomi.push.service.at.f9248a
            r3 = 0
            int r0 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r0 != 0) goto L_0x00a8
            java.io.File r6 = new java.io.File
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.io.File r5 = r5.getCacheDir()
            java.lang.String r5 = r5.getPath()
            r7.append(r5)
            java.lang.String r5 = java.io.File.separator
            r7.append(r5)
            r7.append(r2)
            java.lang.String r5 = r7.toString()
            r6.<init>(r5)
            long r5 = com.xiaomi.push.z.a(r6)
            long r0 = r1.length()
            long r5 = r5 + r0
            com.xiaomi.push.service.at.f9248a = r5
        L_0x00a8:
            return
        L_0x00a9:
            r5 = move-exception
        L_0x00aa:
            com.xiaomi.push.aa.a(r7)
            com.xiaomi.push.aa.a(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.at.a(android.content.Context, byte[], java.lang.String):void");
    }

    private static Bitmap b(Context context, String str) {
        Throwable th;
        Exception e;
        File file = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon", bo.a(str));
        FileInputStream fileInputStream = null;
        Bitmap bitmap = null;
        fileInputStream = null;
        if (!file.exists()) {
            return null;
        }
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Exception e2) {
                e = e2;
                bitmap = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            bitmap = BitmapFactory.decodeStream(fileInputStream);
            file.setLastModified(System.currentTimeMillis());
            aa.a(fileInputStream);
            return bitmap;
        } catch (Exception e3) {
            e = e3;
            fileInputStream = fileInputStream;
            com.xiaomi.channel.commonutils.logger.b.a(e);
            aa.a(fileInputStream);
            return bitmap;
        } catch (Throwable th3) {
            th = th3;
            aa.a(fileInputStream);
            throw th;
        }
    }
}
