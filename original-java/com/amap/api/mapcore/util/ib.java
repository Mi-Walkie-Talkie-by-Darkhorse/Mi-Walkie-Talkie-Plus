package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;

/* compiled from: StatisticsEntity */
public class ib {
    private Context a;
    private String b;
    private String c;
    private String d;
    private String e;

    public ib(Context context, String str, String str2, String str3) throws fn {
        if (TextUtils.isEmpty(str3) || str3.length() > 256) {
            throw new fn("无效的参数 - IllegalArgumentException");
        }
        this.a = context.getApplicationContext();
        this.c = str;
        this.d = str2;
        this.b = str3;
    }

    public void a(String str) throws fn {
        if (TextUtils.isEmpty(str) || str.length() > 65536) {
            throw new fn("无效的参数 - IllegalArgumentException");
        }
        this.e = str;
    }

    public byte[] a(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public byte[] b(String str) {
        if (TextUtils.isEmpty(str)) {
            return new byte[]{0, 0};
        }
        int length = str.length();
        return new byte[]{(byte) (length / 256), (byte) (length % 256)};
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0068 A[SYNTHETIC, Splitter:B:27:0x0068] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] a() {
        /*
            r8 = this;
            r1 = 0
            r3 = 0
            byte[] r0 = new byte[r1]
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ Throwable -> 0x0050, all -> 0x0064 }
            r2.<init>()     // Catch:{ Throwable -> 0x0050, all -> 0x0064 }
            java.lang.String r3 = r8.c     // Catch:{ Throwable -> 0x0075 }
            com.amap.api.mapcore.util.fy.a(r2, r3)     // Catch:{ Throwable -> 0x0075 }
            java.lang.String r3 = r8.d     // Catch:{ Throwable -> 0x0075 }
            com.amap.api.mapcore.util.fy.a(r2, r3)     // Catch:{ Throwable -> 0x0075 }
            java.lang.String r3 = r8.b     // Catch:{ Throwable -> 0x0075 }
            com.amap.api.mapcore.util.fy.a(r2, r3)     // Catch:{ Throwable -> 0x0075 }
            android.content.Context r3 = r8.a     // Catch:{ Throwable -> 0x0075 }
            int r3 = com.amap.api.mapcore.util.fs.p(r3)     // Catch:{ Throwable -> 0x0075 }
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch:{ Throwable -> 0x0075 }
            com.amap.api.mapcore.util.fy.a(r2, r3)     // Catch:{ Throwable -> 0x0075 }
            long r4 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x0077 }
            r6 = 1000(0x3e8, double:4.94E-321)
            long r4 = r4 / r6
            int r1 = (int) r4
        L_0x002d:
            byte[] r1 = r8.a(r1)     // Catch:{ Throwable -> 0x0075 }
            r2.write(r1)     // Catch:{ Throwable -> 0x0075 }
            java.lang.String r1 = r8.e     // Catch:{ Throwable -> 0x0075 }
            byte[] r1 = r8.b(r1)     // Catch:{ Throwable -> 0x0075 }
            r2.write(r1)     // Catch:{ Throwable -> 0x0075 }
            java.lang.String r1 = r8.e     // Catch:{ Throwable -> 0x0075 }
            byte[] r1 = com.amap.api.mapcore.util.fy.a(r1)     // Catch:{ Throwable -> 0x0075 }
            r2.write(r1)     // Catch:{ Throwable -> 0x0075 }
            byte[] r0 = r2.toByteArray()     // Catch:{ Throwable -> 0x0075 }
            if (r2 == 0) goto L_0x004f
            r2.close()     // Catch:{ Throwable -> 0x0071 }
        L_0x004f:
            return r0
        L_0x0050:
            r1 = move-exception
            r2 = r3
        L_0x0052:
            java.lang.String r3 = "se"
            java.lang.String r4 = "tds"
            com.amap.api.mapcore.util.gc.a(r1, r3, r4)     // Catch:{ all -> 0x0073 }
            if (r2 == 0) goto L_0x004f
            r2.close()     // Catch:{ Throwable -> 0x005f }
            goto L_0x004f
        L_0x005f:
            r1 = move-exception
        L_0x0060:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x004f
        L_0x0064:
            r0 = move-exception
            r2 = r3
        L_0x0066:
            if (r2 == 0) goto L_0x006b
            r2.close()     // Catch:{ Throwable -> 0x006c }
        L_0x006b:
            throw r0
        L_0x006c:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x006b
        L_0x0071:
            r1 = move-exception
            goto L_0x0060
        L_0x0073:
            r0 = move-exception
            goto L_0x0066
        L_0x0075:
            r1 = move-exception
            goto L_0x0052
        L_0x0077:
            r3 = move-exception
            goto L_0x002d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ib.a():byte[]");
    }
}
