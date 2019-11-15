package com.bumptech.glide.load.b;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.a.b;
import java.io.InputStream;

/* compiled from: StreamEncoder */
public class t implements a<InputStream> {
    private final b a;

    public t(b bVar) {
        this.a = bVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0029 A[Catch:{ all -> 0x0065 }] */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0032 A[SYNTHETIC, Splitter:B:14:0x0032] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0054 A[SYNTHETIC, Splitter:B:27:0x0054] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(java.io.InputStream r7, java.io.File r8, com.bumptech.glide.load.e r9) {
        /*
            r6 = this;
            r1 = 0
            com.bumptech.glide.load.engine.a.b r0 = r6.a
            r2 = 65536(0x10000, float:9.18355E-41)
            java.lang.Class<byte[]> r3 = byte[].class
            java.lang.Object r0 = r0.a(r2, r3)
            byte[] r0 = (byte[]) r0
            r4 = 0
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x0067, all -> 0x0050 }
            r3.<init>(r8)     // Catch:{ IOException -> 0x0067, all -> 0x0050 }
        L_0x0013:
            int r2 = r7.read(r0)     // Catch:{ IOException -> 0x001f }
            r4 = -1
            if (r2 == r4) goto L_0x003e
            r4 = 0
            r3.write(r0, r4, r2)     // Catch:{ IOException -> 0x001f }
            goto L_0x0013
        L_0x001f:
            r2 = move-exception
        L_0x0020:
            java.lang.String r4 = "StreamEncoder"
            r5 = 3
            boolean r4 = android.util.Log.isLoggable(r4, r5)     // Catch:{ all -> 0x0065 }
            if (r4 == 0) goto L_0x0030
            java.lang.String r4 = "StreamEncoder"
            java.lang.String r5 = "Failed to encode data onto the OutputStream"
            android.util.Log.d(r4, r5, r2)     // Catch:{ all -> 0x0065 }
        L_0x0030:
            if (r3 == 0) goto L_0x0035
            r3.close()     // Catch:{ IOException -> 0x0061 }
        L_0x0035:
            com.bumptech.glide.load.engine.a.b r2 = r6.a
            java.lang.Class<byte[]> r3 = byte[].class
            r2.a(r0, r3)
            r0 = r1
        L_0x003d:
            return r0
        L_0x003e:
            r3.close()     // Catch:{ IOException -> 0x001f }
            r1 = 1
            if (r3 == 0) goto L_0x0047
            r3.close()     // Catch:{ IOException -> 0x005f }
        L_0x0047:
            com.bumptech.glide.load.engine.a.b r2 = r6.a
            java.lang.Class<byte[]> r3 = byte[].class
            r2.a(r0, r3)
            r0 = r1
            goto L_0x003d
        L_0x0050:
            r1 = move-exception
            r3 = r4
        L_0x0052:
            if (r3 == 0) goto L_0x0057
            r3.close()     // Catch:{ IOException -> 0x0063 }
        L_0x0057:
            com.bumptech.glide.load.engine.a.b r2 = r6.a
            java.lang.Class<byte[]> r3 = byte[].class
            r2.a(r0, r3)
            throw r1
        L_0x005f:
            r2 = move-exception
            goto L_0x0047
        L_0x0061:
            r2 = move-exception
            goto L_0x0035
        L_0x0063:
            r2 = move-exception
            goto L_0x0057
        L_0x0065:
            r1 = move-exception
            goto L_0x0052
        L_0x0067:
            r2 = move-exception
            r3 = r4
            goto L_0x0020
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.t.a(java.io.InputStream, java.io.File, com.bumptech.glide.load.e):boolean");
    }
}
