package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.g;

/* compiled from: BitmapEncoder */
public class d implements g<Bitmap> {
    public static final com.bumptech.glide.load.d<Integer> a = com.bumptech.glide.load.d.a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", Integer.valueOf(90));
    public static final com.bumptech.glide.load.d<CompressFormat> b = com.bumptech.glide.load.d.a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0068 A[Catch:{ all -> 0x00e2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00c9 A[Catch:{ all -> 0x00ec }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00d2 A[SYNTHETIC, Splitter:B:27:0x00d2] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00de A[SYNTHETIC, Splitter:B:35:0x00de] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00f0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(com.bumptech.glide.load.engine.q<android.graphics.Bitmap> r10, java.io.File r11, com.bumptech.glide.load.e r12) {
        /*
            r9 = this;
            java.lang.Object r0 = r10.c()
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            android.graphics.Bitmap$CompressFormat r5 = r9.a(r0, r12)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "encode: ["
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r0.getWidth()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "x"
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r0.getHeight()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "] "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r5)
            java.lang.String r1 = r1.toString()
            android.support.v4.os.TraceCompat.beginSection(r1)
            long r6 = com.bumptech.glide.util.d.a()     // Catch:{ all -> 0x00e2 }
            com.bumptech.glide.load.d<java.lang.Integer> r1 = a     // Catch:{ all -> 0x00e2 }
            java.lang.Object r1 = r12.a(r1)     // Catch:{ all -> 0x00e2 }
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch:{ all -> 0x00e2 }
            int r1 = r1.intValue()     // Catch:{ all -> 0x00e2 }
            r4 = 0
            r3 = 0
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x00be, all -> 0x00da }
            r2.<init>(r11)     // Catch:{ IOException -> 0x00be, all -> 0x00da }
            r0.compress(r5, r1, r2)     // Catch:{ IOException -> 0x00ee }
            r2.close()     // Catch:{ IOException -> 0x00ee }
            r1 = 1
            if (r2 == 0) goto L_0x005f
            r2.close()     // Catch:{ IOException -> 0x00e7 }
        L_0x005f:
            java.lang.String r2 = "BitmapEncoder"
            r3 = 2
            boolean r2 = android.util.Log.isLoggable(r2, r3)     // Catch:{ all -> 0x00e2 }
            if (r2 == 0) goto L_0x00ba
            java.lang.String r2 = "BitmapEncoder"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e2 }
            r3.<init>()     // Catch:{ all -> 0x00e2 }
            java.lang.String r4 = "Compressed with type: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00e2 }
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch:{ all -> 0x00e2 }
            java.lang.String r4 = " of size "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00e2 }
            int r4 = com.bumptech.glide.util.i.a(r0)     // Catch:{ all -> 0x00e2 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00e2 }
            java.lang.String r4 = " in "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00e2 }
            double r4 = com.bumptech.glide.util.d.a(r6)     // Catch:{ all -> 0x00e2 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00e2 }
            java.lang.String r4 = ", options format: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00e2 }
            com.bumptech.glide.load.d<android.graphics.Bitmap$CompressFormat> r4 = b     // Catch:{ all -> 0x00e2 }
            java.lang.Object r4 = r12.a(r4)     // Catch:{ all -> 0x00e2 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00e2 }
            java.lang.String r4 = ", hasAlpha: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x00e2 }
            boolean r0 = r0.hasAlpha()     // Catch:{ all -> 0x00e2 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ all -> 0x00e2 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00e2 }
            android.util.Log.v(r2, r0)     // Catch:{ all -> 0x00e2 }
        L_0x00ba:
            android.support.v4.os.TraceCompat.endSection()
            return r1
        L_0x00be:
            r1 = move-exception
            r2 = r3
        L_0x00c0:
            java.lang.String r3 = "BitmapEncoder"
            r8 = 3
            boolean r3 = android.util.Log.isLoggable(r3, r8)     // Catch:{ all -> 0x00ec }
            if (r3 == 0) goto L_0x00d0
            java.lang.String r3 = "BitmapEncoder"
            java.lang.String r8 = "Failed to encode Bitmap"
            android.util.Log.d(r3, r8, r1)     // Catch:{ all -> 0x00ec }
        L_0x00d0:
            if (r2 == 0) goto L_0x00f0
            r2.close()     // Catch:{ IOException -> 0x00d7 }
            r1 = r4
            goto L_0x005f
        L_0x00d7:
            r1 = move-exception
            r1 = r4
            goto L_0x005f
        L_0x00da:
            r0 = move-exception
            r2 = r3
        L_0x00dc:
            if (r2 == 0) goto L_0x00e1
            r2.close()     // Catch:{ IOException -> 0x00ea }
        L_0x00e1:
            throw r0     // Catch:{ all -> 0x00e2 }
        L_0x00e2:
            r0 = move-exception
            android.support.v4.os.TraceCompat.endSection()
            throw r0
        L_0x00e7:
            r2 = move-exception
            goto L_0x005f
        L_0x00ea:
            r1 = move-exception
            goto L_0x00e1
        L_0x00ec:
            r0 = move-exception
            goto L_0x00dc
        L_0x00ee:
            r1 = move-exception
            goto L_0x00c0
        L_0x00f0:
            r1 = r4
            goto L_0x005f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.d.a(com.bumptech.glide.load.engine.q, java.io.File, com.bumptech.glide.load.e):boolean");
    }

    private CompressFormat a(Bitmap bitmap, e eVar) {
        CompressFormat compressFormat = (CompressFormat) eVar.a(b);
        if (compressFormat != null) {
            return compressFormat;
        }
        if (bitmap.hasAlpha()) {
            return CompressFormat.PNG;
        }
        return CompressFormat.JPEG;
    }

    public EncodeStrategy a(e eVar) {
        return EncodeStrategy.TRANSFORMED;
    }
}
