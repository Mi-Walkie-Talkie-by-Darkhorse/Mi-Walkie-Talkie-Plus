package com.xiaomi.push.service;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

public class ai {

    public static class a {
        byte[] a;
        int b;

        public a(byte[] bArr, int i) {
            this.a = bArr;
            this.b = i;
        }
    }

    public static class b {
        public Bitmap a;
        public long b;

        public b(Bitmap bitmap, long j) {
            this.a = bitmap;
            this.b = j;
        }
    }

    private static int a(Context context, InputStream inputStream) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            com.xiaomi.channel.commonutils.logger.b.a("decode dimension failed for bitmap.");
            return 1;
        }
        int round = Math.round((((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f) * 48.0f);
        if (options.outWidth <= round || options.outHeight <= round) {
            return 1;
        }
        return Math.min(options.outWidth / round, options.outHeight / round);
    }

    /* JADX WARNING: Removed duplicated region for block: B:54:0x00e0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.xiaomi.push.service.ai.a a(java.lang.String r9) {
        /*
            r2 = 102400(0x19000, float:1.43493E-40)
            r1 = 0
            java.net.URL r0 = new java.net.URL     // Catch:{ IOException -> 0x00f1, all -> 0x00d9 }
            r0.<init>(r9)     // Catch:{ IOException -> 0x00f1, all -> 0x00d9 }
            java.net.URLConnection r0 = r0.openConnection()     // Catch:{ IOException -> 0x00f1, all -> 0x00d9 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x00f1, all -> 0x00d9 }
            r3 = 8000(0x1f40, float:1.121E-41)
            r0.setConnectTimeout(r3)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            r3 = 20000(0x4e20, float:2.8026E-41)
            r0.setReadTimeout(r3)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            r0.connect()     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            int r3 = r0.getContentLength()     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            if (r3 <= r2) goto L_0x004c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            r2.<init>()     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            java.lang.String r4 = "Bitmap size is too big, max size is 102400  contentLen size is "
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            java.lang.String r3 = " from url "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            java.lang.StringBuilder r2 = r2.append(r9)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            java.lang.String r2 = r2.toString()     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            com.xiaomi.channel.commonutils.logger.b.a(r2)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            com.xiaomi.channel.commonutils.file.a.a(r1)
            if (r0 == 0) goto L_0x004a
            r0.disconnect()
        L_0x004a:
            r0 = r1
        L_0x004b:
            return r0
        L_0x004c:
            int r3 = r0.getResponseCode()     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            r4 = 200(0xc8, float:2.8E-43)
            if (r3 == r4) goto L_0x007a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            r2.<init>()     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            java.lang.String r4 = "Invalid Http Response Code "
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            java.lang.String r3 = " received"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            java.lang.String r2 = r2.toString()     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            com.xiaomi.channel.commonutils.logger.b.a(r2)     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            com.xiaomi.channel.commonutils.file.a.a(r1)
            if (r0 == 0) goto L_0x0078
            r0.disconnect()
        L_0x0078:
            r0 = r1
            goto L_0x004b
        L_0x007a:
            java.io.InputStream r3 = r0.getInputStream()     // Catch:{ IOException -> 0x00f5, all -> 0x00e4 }
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            r4.<init>()     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            r5 = 1024(0x400, float:1.435E-42)
            byte[] r5 = new byte[r5]     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
        L_0x0087:
            if (r2 <= 0) goto L_0x0093
            r6 = 0
            r7 = 1024(0x400, float:1.435E-42)
            int r6 = r3.read(r5, r6, r7)     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            r7 = -1
            if (r6 != r7) goto L_0x00ad
        L_0x0093:
            if (r2 > 0) goto L_0x00c4
            java.lang.String r2 = "length 102400 exhausted."
            com.xiaomi.channel.commonutils.logger.b.a(r2)     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            com.xiaomi.push.service.ai$a r2 = new com.xiaomi.push.service.ai$a     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            r4 = 0
            r5 = 102400(0x19000, float:1.43493E-40)
            r2.<init>(r4, r5)     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            com.xiaomi.channel.commonutils.file.a.a(r3)
            if (r0 == 0) goto L_0x00ab
            r0.disconnect()
        L_0x00ab:
            r0 = r2
            goto L_0x004b
        L_0x00ad:
            int r2 = r2 - r6
            r7 = 0
            r4.write(r5, r7, r6)     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            goto L_0x0087
        L_0x00b3:
            r2 = move-exception
            r8 = r2
            r2 = r0
            r0 = r8
        L_0x00b7:
            com.xiaomi.channel.commonutils.logger.b.a(r0)     // Catch:{ all -> 0x00ee }
            com.xiaomi.channel.commonutils.file.a.a(r3)
            if (r2 == 0) goto L_0x00c2
            r2.disconnect()
        L_0x00c2:
            r0 = r1
            goto L_0x004b
        L_0x00c4:
            byte[] r4 = r4.toByteArray()     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            com.xiaomi.push.service.ai$a r2 = new com.xiaomi.push.service.ai$a     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            int r5 = r4.length     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            r2.<init>(r4, r5)     // Catch:{ IOException -> 0x00b3, all -> 0x00e9 }
            com.xiaomi.channel.commonutils.file.a.a(r3)
            if (r0 == 0) goto L_0x00d6
            r0.disconnect()
        L_0x00d6:
            r0 = r2
            goto L_0x004b
        L_0x00d9:
            r0 = move-exception
            r3 = r1
        L_0x00db:
            com.xiaomi.channel.commonutils.file.a.a(r3)
            if (r1 == 0) goto L_0x00e3
            r1.disconnect()
        L_0x00e3:
            throw r0
        L_0x00e4:
            r2 = move-exception
            r3 = r1
            r1 = r0
            r0 = r2
            goto L_0x00db
        L_0x00e9:
            r1 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
            goto L_0x00db
        L_0x00ee:
            r0 = move-exception
            r1 = r2
            goto L_0x00db
        L_0x00f1:
            r0 = move-exception
            r2 = r1
            r3 = r1
            goto L_0x00b7
        L_0x00f5:
            r2 = move-exception
            r3 = r1
            r8 = r0
            r0 = r2
            r2 = r8
            goto L_0x00b7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.ai.a(java.lang.String):com.xiaomi.push.service.ai$a");
    }

    public static b a(Context context, String str) {
        InputStream inputStream;
        b bVar = new b(null, 0);
        try {
            a a2 = a(str);
            if (a2 == null) {
                com.xiaomi.channel.commonutils.file.a.a((InputStream) null);
                return bVar;
            }
            bVar.b = (long) a2.b;
            byte[] bArr = a2.a;
            if (bArr != null) {
                inputStream = new ByteArrayInputStream(bArr);
                try {
                    int a3 = a(context, inputStream);
                    Options options = new Options();
                    options.inSampleSize = a3;
                    bVar.a = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                } catch (Exception e) {
                    e = e;
                    try {
                        com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
                        com.xiaomi.channel.commonutils.file.a.a(inputStream);
                        return bVar;
                    } catch (Throwable th) {
                        th = th;
                    }
                }
            } else {
                inputStream = null;
            }
            com.xiaomi.channel.commonutils.file.a.a(inputStream);
            return bVar;
        } catch (Exception e2) {
            e = e2;
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
            com.xiaomi.channel.commonutils.file.a.a(inputStream);
            throw th;
        }
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r3v0, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v0, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r3v1 */
    /* JADX WARNING: type inference failed for: r3v2, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r3v3 */
    /* JADX WARNING: type inference failed for: r2v4, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r0v5, types: [android.graphics.Bitmap] */
    /* JADX WARNING: type inference failed for: r2v6, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r3v4 */
    /* JADX WARNING: type inference failed for: r3v5 */
    /* JADX WARNING: type inference failed for: r3v7, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r0v8, types: [android.graphics.Bitmap] */
    /* JADX WARNING: type inference failed for: r0v9 */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r2v12 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r0v10 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r2v2
  assigns: []
  uses: []
  mth insns count: 42
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 10 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Bitmap b(android.content.Context r5, java.lang.String r6) {
        /*
            r0 = 0
            android.net.Uri r1 = android.net.Uri.parse(r6)
            android.content.ContentResolver r2 = r5.getContentResolver()     // Catch:{ IOException -> 0x002c, all -> 0x0036 }
            java.io.InputStream r2 = r2.openInputStream(r1)     // Catch:{ IOException -> 0x002c, all -> 0x0036 }
            int r4 = a(r5, r2)     // Catch:{ IOException -> 0x0047, all -> 0x0041 }
            android.content.ContentResolver r3 = r5.getContentResolver()     // Catch:{ IOException -> 0x0047, all -> 0x0041 }
            java.io.InputStream r3 = r3.openInputStream(r1)     // Catch:{ IOException -> 0x0047, all -> 0x0041 }
            android.graphics.BitmapFactory$Options r1 = new android.graphics.BitmapFactory$Options     // Catch:{ IOException -> 0x004a }
            r1.<init>()     // Catch:{ IOException -> 0x004a }
            r1.inSampleSize = r4     // Catch:{ IOException -> 0x004a }
            r4 = 0
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r3, r4, r1)     // Catch:{ IOException -> 0x004a }
            com.xiaomi.channel.commonutils.file.a.a(r3)
        L_0x0028:
            com.xiaomi.channel.commonutils.file.a.a(r2)
            return r0
        L_0x002c:
            r1 = move-exception
            r2 = r0
            r3 = r0
        L_0x002f:
            com.xiaomi.channel.commonutils.logger.b.a(r1)     // Catch:{ all -> 0x0045 }
            com.xiaomi.channel.commonutils.file.a.a(r3)
            goto L_0x0028
        L_0x0036:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
        L_0x003a:
            com.xiaomi.channel.commonutils.file.a.a(r3)
            com.xiaomi.channel.commonutils.file.a.a(r2)
            throw r0
        L_0x0041:
            r1 = move-exception
            r3 = r0
            r0 = r1
            goto L_0x003a
        L_0x0045:
            r0 = move-exception
            goto L_0x003a
        L_0x0047:
            r1 = move-exception
            r3 = r0
            goto L_0x002f
        L_0x004a:
            r1 = move-exception
            goto L_0x002f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.ai.b(android.content.Context, java.lang.String):android.graphics.Bitmap");
    }
}
