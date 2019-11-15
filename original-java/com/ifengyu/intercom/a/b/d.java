package com.ifengyu.intercom.a.b;

import java.io.File;
import okhttp3.Response;

/* compiled from: FileCallBack */
public abstract class d extends b<File> {
    private String b;
    private String c;

    public d(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    /* renamed from: a */
    public File b(Response response, int i) throws Exception {
        return d(response, i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0061 A[Catch:{ IOException -> 0x0083 }] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0066 A[SYNTHETIC, Splitter:B:19:0x0066] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.io.File d(okhttp3.Response r15, int r16) throws java.io.IOException {
        /*
            r14 = this;
            r2 = 0
            r0 = 2048(0x800, float:2.87E-42)
            byte[] r9 = new byte[r0]
            r1 = 0
            okhttp3.ResponseBody r0 = r15.body()     // Catch:{ all -> 0x0085 }
            java.io.InputStream r8 = r0.byteStream()     // Catch:{ all -> 0x0085 }
            okhttp3.ResponseBody r0 = r15.body()     // Catch:{ all -> 0x0087 }
            long r4 = r0.contentLength()     // Catch:{ all -> 0x0087 }
            r2 = 0
            java.io.File r0 = new java.io.File     // Catch:{ all -> 0x0087 }
            java.lang.String r6 = r14.b     // Catch:{ all -> 0x0087 }
            r0.<init>(r6)     // Catch:{ all -> 0x0087 }
            boolean r6 = r0.exists()     // Catch:{ all -> 0x0087 }
            if (r6 != 0) goto L_0x0028
            r0.mkdirs()     // Catch:{ all -> 0x0087 }
        L_0x0028:
            java.io.File r10 = new java.io.File     // Catch:{ all -> 0x0087 }
            java.lang.String r6 = r14.c     // Catch:{ all -> 0x0087 }
            r10.<init>(r0, r6)     // Catch:{ all -> 0x0087 }
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch:{ all -> 0x0087 }
            r7.<init>(r10)     // Catch:{ all -> 0x0087 }
        L_0x0034:
            int r0 = r8.read(r9)     // Catch:{ all -> 0x0055 }
            r1 = -1
            if (r0 == r1) goto L_0x006a
            long r12 = (long) r0     // Catch:{ all -> 0x0055 }
            long r2 = r2 + r12
            r1 = 0
            r7.write(r9, r1, r0)     // Catch:{ all -> 0x0055 }
            com.ifengyu.intercom.a.b r0 = com.ifengyu.intercom.a.b.a()     // Catch:{ all -> 0x0055 }
            java.util.concurrent.Executor r11 = r0.b()     // Catch:{ all -> 0x0055 }
            com.ifengyu.intercom.a.b.d$1 r0 = new com.ifengyu.intercom.a.b.d$1     // Catch:{ all -> 0x0055 }
            r1 = r14
            r6 = r16
            r0.<init>(r2, r4, r6)     // Catch:{ all -> 0x0055 }
            r11.execute(r0)     // Catch:{ all -> 0x0055 }
            goto L_0x0034
        L_0x0055:
            r0 = move-exception
            r1 = r7
            r2 = r8
        L_0x0058:
            okhttp3.ResponseBody r3 = r15.body()     // Catch:{ IOException -> 0x0083 }
            r3.close()     // Catch:{ IOException -> 0x0083 }
            if (r2 == 0) goto L_0x0064
            r2.close()     // Catch:{ IOException -> 0x0083 }
        L_0x0064:
            if (r1 == 0) goto L_0x0069
            r1.close()     // Catch:{ IOException -> 0x0081 }
        L_0x0069:
            throw r0
        L_0x006a:
            r7.flush()     // Catch:{ all -> 0x0055 }
            okhttp3.ResponseBody r0 = r15.body()     // Catch:{ IOException -> 0x008a }
            r0.close()     // Catch:{ IOException -> 0x008a }
            if (r8 == 0) goto L_0x0079
            r8.close()     // Catch:{ IOException -> 0x008a }
        L_0x0079:
            if (r7 == 0) goto L_0x007e
            r7.close()     // Catch:{ IOException -> 0x007f }
        L_0x007e:
            return r10
        L_0x007f:
            r0 = move-exception
            goto L_0x007e
        L_0x0081:
            r1 = move-exception
            goto L_0x0069
        L_0x0083:
            r2 = move-exception
            goto L_0x0064
        L_0x0085:
            r0 = move-exception
            goto L_0x0058
        L_0x0087:
            r0 = move-exception
            r2 = r8
            goto L_0x0058
        L_0x008a:
            r0 = move-exception
            goto L_0x0079
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.a.b.d.d(okhttp3.Response, int):java.io.File");
    }
}
