package com.amap.api.col.sl;

import android.content.Context;
import android.os.Build.VERSION;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.URI;
import java.util.List;

/* compiled from: ProxyUtil */
public final class bx {
    public static Proxy a(Context context) {
        try {
            if (VERSION.SDK_INT >= 11) {
                return a(context, new URI("http://restapi.amap.com"));
            }
            return b(context);
        } catch (Throwable th) {
            cm.c(th, "pu", "gp");
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:101:0x0134 A[SYNTHETIC, Splitter:B:101:0x0134] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0066 A[SYNTHETIC, Splitter:B:29:0x0066] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x006c A[SYNTHETIC, Splitter:B:33:0x006c] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0077 A[Catch:{ Throwable -> 0x013b }] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00c2 A[Catch:{ all -> 0x0170 }] */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x00f3 A[SYNTHETIC, Splitter:B:75:0x00f3] */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0129 A[SYNTHETIC, Splitter:B:95:0x0129] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.net.Proxy b(android.content.Context r12) {
        /*
            r6 = 80
            r10 = 0
            r9 = 1
            r7 = 0
            r8 = -1
            boolean r0 = c(r12)
            if (r0 == 0) goto L_0x0146
            java.lang.String r0 = "content://telephony/carriers/preferapn"
            android.net.Uri r1 = android.net.Uri.parse(r0)
            android.content.ContentResolver r0 = r12.getContentResolver()
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r2 = r0.query(r1, r2, r3, r4, r5)     // Catch:{ SecurityException -> 0x00b1, Throwable -> 0x0119, all -> 0x0130 }
            if (r2 == 0) goto L_0x01c4
            boolean r0 = r2.moveToFirst()     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
            if (r0 == 0) goto L_0x01c4
            java.lang.String r0 = "apn"
            int r0 = r2.getColumnIndex(r0)     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
            java.lang.String r0 = r2.getString(r0)     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
            if (r0 == 0) goto L_0x0038
            java.util.Locale r1 = java.util.Locale.US     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
            java.lang.String r0 = r0.toLowerCase(r1)     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
        L_0x0038:
            if (r0 == 0) goto L_0x0083
            java.lang.String r1 = "ctwap"
            boolean r1 = r0.contains(r1)     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
            if (r1 == 0) goto L_0x0083
            java.lang.String r3 = a()     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
            int r0 = b()     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
            boolean r1 = android.text.TextUtils.isEmpty(r3)     // Catch:{ SecurityException -> 0x018d, Throwable -> 0x0177 }
            if (r1 != 0) goto L_0x01cb
            java.lang.String r1 = "null"
            boolean r1 = r3.equals(r1)     // Catch:{ SecurityException -> 0x018d, Throwable -> 0x0177 }
            if (r1 != 0) goto L_0x01cb
            r1 = r9
        L_0x0059:
            if (r1 != 0) goto L_0x01c8
            java.lang.String r1 = "QMTAuMC4wLjIwMA=="
            java.lang.String r1 = com.amap.api.col.sl.ca.c(r1)     // Catch:{ SecurityException -> 0x0195, Throwable -> 0x017d }
        L_0x0061:
            if (r0 != r8) goto L_0x0064
            r0 = r6
        L_0x0064:
            if (r2 == 0) goto L_0x0069
            r2.close()     // Catch:{ Throwable -> 0x0164 }
        L_0x0069:
            r6 = r0
        L_0x006a:
            if (r1 == 0) goto L_0x0138
            int r0 = r1.length()     // Catch:{ Throwable -> 0x013b }
            if (r0 <= 0) goto L_0x0138
            if (r6 == r8) goto L_0x0138
            r0 = r9
        L_0x0075:
            if (r0 == 0) goto L_0x0146
            java.net.Proxy r0 = new java.net.Proxy     // Catch:{ Throwable -> 0x013b }
            java.net.Proxy$Type r2 = java.net.Proxy.Type.HTTP     // Catch:{ Throwable -> 0x013b }
            java.net.InetSocketAddress r1 = java.net.InetSocketAddress.createUnresolved(r1, r6)     // Catch:{ Throwable -> 0x013b }
            r0.<init>(r2, r1)     // Catch:{ Throwable -> 0x013b }
        L_0x0082:
            return r0
        L_0x0083:
            if (r0 == 0) goto L_0x01c4
            java.lang.String r1 = "wap"
            boolean r0 = r0.contains(r1)     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
            if (r0 == 0) goto L_0x01c4
            java.lang.String r3 = a()     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
            int r1 = b()     // Catch:{ SecurityException -> 0x0187, Throwable -> 0x0173 }
            boolean r0 = android.text.TextUtils.isEmpty(r3)     // Catch:{ SecurityException -> 0x019c, Throwable -> 0x0182 }
            if (r0 != 0) goto L_0x01c0
            java.lang.String r0 = "null"
            boolean r0 = r3.equals(r0)     // Catch:{ SecurityException -> 0x019c, Throwable -> 0x0182 }
            if (r0 != 0) goto L_0x01c0
            r0 = r9
        L_0x00a4:
            if (r0 != 0) goto L_0x01bd
            java.lang.String r0 = "QMTAuMC4wLjE3Mg=="
            java.lang.String r0 = com.amap.api.col.sl.ca.c(r0)     // Catch:{ SecurityException -> 0x01a3, Throwable -> 0x0185 }
        L_0x00ac:
            if (r1 != r8) goto L_0x01b8
            r1 = r0
            r0 = r6
            goto L_0x0064
        L_0x00b1:
            r0 = move-exception
            r1 = r7
            r2 = r8
            r3 = r7
        L_0x00b5:
            java.lang.String r4 = "pu"
            java.lang.String r5 = "ghp"
            com.amap.api.col.sl.cm.c(r0, r4, r5)     // Catch:{ all -> 0x0170 }
            java.lang.String r0 = com.amap.api.col.sl.bu.r(r12)     // Catch:{ all -> 0x0170 }
            if (r0 == 0) goto L_0x01ad
            java.util.Locale r2 = java.util.Locale.US     // Catch:{ all -> 0x0170 }
            java.lang.String r4 = r0.toLowerCase(r2)     // Catch:{ all -> 0x0170 }
            java.lang.String r0 = a()     // Catch:{ all -> 0x0170 }
            int r2 = b()     // Catch:{ all -> 0x0170 }
            java.lang.String r5 = "ctwap"
            int r5 = r4.indexOf(r5)     // Catch:{ all -> 0x0170 }
            if (r5 == r8) goto L_0x00f9
            boolean r4 = android.text.TextUtils.isEmpty(r0)     // Catch:{ all -> 0x0170 }
            if (r4 != 0) goto L_0x01b4
            java.lang.String r4 = "null"
            boolean r4 = r0.equals(r4)     // Catch:{ all -> 0x0170 }
            if (r4 != 0) goto L_0x01b4
            r3 = r9
        L_0x00e7:
            if (r3 != 0) goto L_0x00ef
            java.lang.String r0 = "QMTAuMC4wLjIwMA=="
            java.lang.String r0 = com.amap.api.col.sl.ca.c(r0)     // Catch:{ all -> 0x0170 }
        L_0x00ef:
            if (r2 != r8) goto L_0x01b1
        L_0x00f1:
            if (r1 == 0) goto L_0x00f6
            r1.close()     // Catch:{ Throwable -> 0x0152 }
        L_0x00f6:
            r1 = r0
            goto L_0x006a
        L_0x00f9:
            java.lang.String r5 = "wap"
            int r4 = r4.indexOf(r5)     // Catch:{ all -> 0x0170 }
            if (r4 == r8) goto L_0x01ad
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch:{ all -> 0x0170 }
            if (r2 != 0) goto L_0x01a9
            java.lang.String r2 = "null"
            boolean r2 = r0.equals(r2)     // Catch:{ all -> 0x0170 }
            if (r2 != 0) goto L_0x01a9
            r2 = r9
        L_0x0110:
            if (r2 != 0) goto L_0x00f1
            java.lang.String r0 = "QMTAuMC4wLjE3Mg=="
            java.lang.String r0 = com.amap.api.col.sl.ca.c(r0)     // Catch:{ all -> 0x0170 }
            goto L_0x00f1
        L_0x0119:
            r0 = move-exception
            r2 = r7
            r1 = r8
            r3 = r7
        L_0x011d:
            java.lang.String r4 = "pu"
            java.lang.String r5 = "gPx1"
            com.amap.api.col.sl.cm.c(r0, r4, r5)     // Catch:{ all -> 0x016e }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x016e }
            if (r2 == 0) goto L_0x012c
            r2.close()     // Catch:{ Throwable -> 0x015b }
        L_0x012c:
            r6 = r1
            r1 = r3
            goto L_0x006a
        L_0x0130:
            r0 = move-exception
            r2 = r7
        L_0x0132:
            if (r2 == 0) goto L_0x0137
            r2.close()     // Catch:{ Throwable -> 0x0149 }
        L_0x0137:
            throw r0
        L_0x0138:
            r0 = r10
            goto L_0x0075
        L_0x013b:
            r0 = move-exception
            java.lang.String r1 = "pu"
            java.lang.String r2 = "gp2"
            com.amap.api.col.sl.cj.a(r0, r1, r2)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
        L_0x0146:
            r0 = r7
            goto L_0x0082
        L_0x0149:
            r1 = move-exception
            java.lang.String r2 = "pu"
            java.lang.String r3 = "gPx2"
            com.amap.api.col.sl.cm.c(r1, r2, r3)
            goto L_0x0137
        L_0x0152:
            r1 = move-exception
            java.lang.String r2 = "pu"
            java.lang.String r3 = "gPx2"
            com.amap.api.col.sl.cm.c(r1, r2, r3)
            goto L_0x00f6
        L_0x015b:
            r0 = move-exception
            java.lang.String r2 = "pu"
            java.lang.String r4 = "gPx2"
            com.amap.api.col.sl.cm.c(r0, r2, r4)
            goto L_0x012c
        L_0x0164:
            r2 = move-exception
            java.lang.String r3 = "pu"
            java.lang.String r4 = "gPx2"
            com.amap.api.col.sl.cm.c(r2, r3, r4)
            goto L_0x0069
        L_0x016e:
            r0 = move-exception
            goto L_0x0132
        L_0x0170:
            r0 = move-exception
            r2 = r1
            goto L_0x0132
        L_0x0173:
            r0 = move-exception
            r1 = r8
            r3 = r7
            goto L_0x011d
        L_0x0177:
            r1 = move-exception
            r3 = r7
            r11 = r0
            r0 = r1
            r1 = r11
            goto L_0x011d
        L_0x017d:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
            goto L_0x011d
        L_0x0182:
            r0 = move-exception
            r3 = r7
            goto L_0x011d
        L_0x0185:
            r0 = move-exception
            goto L_0x011d
        L_0x0187:
            r0 = move-exception
            r1 = r2
            r3 = r7
            r2 = r8
            goto L_0x00b5
        L_0x018d:
            r1 = move-exception
            r3 = r7
            r11 = r2
            r2 = r0
            r0 = r1
            r1 = r11
            goto L_0x00b5
        L_0x0195:
            r1 = move-exception
            r11 = r1
            r1 = r2
            r2 = r0
            r0 = r11
            goto L_0x00b5
        L_0x019c:
            r0 = move-exception
            r3 = r7
            r11 = r1
            r1 = r2
            r2 = r11
            goto L_0x00b5
        L_0x01a3:
            r0 = move-exception
            r11 = r2
            r2 = r1
            r1 = r11
            goto L_0x00b5
        L_0x01a9:
            r2 = r10
            r0 = r3
            goto L_0x0110
        L_0x01ad:
            r6 = r2
            r0 = r3
            goto L_0x00f1
        L_0x01b1:
            r6 = r2
            goto L_0x00f1
        L_0x01b4:
            r0 = r3
            r3 = r10
            goto L_0x00e7
        L_0x01b8:
            r11 = r1
            r1 = r0
            r0 = r11
            goto L_0x0064
        L_0x01bd:
            r0 = r3
            goto L_0x00ac
        L_0x01c0:
            r0 = r10
            r3 = r7
            goto L_0x00a4
        L_0x01c4:
            r0 = r8
            r1 = r7
            goto L_0x0064
        L_0x01c8:
            r1 = r3
            goto L_0x0061
        L_0x01cb:
            r1 = r10
            r3 = r7
            goto L_0x0059
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.bx.b(android.content.Context):java.net.Proxy");
    }

    private static String a() {
        String str;
        try {
            str = android.net.Proxy.getDefaultHost();
        } catch (Throwable th) {
            cm.c(th, "pu", "gdh");
            str = null;
        }
        if (str == null) {
            return "null";
        }
        return str;
    }

    private static Proxy a(Context context, URI uri) {
        if (c(context)) {
            try {
                List select = ProxySelector.getDefault().select(uri);
                if (select == null || select.isEmpty()) {
                    return null;
                }
                Proxy proxy = (Proxy) select.get(0);
                if (proxy == null || proxy.type() == Type.DIRECT) {
                    return null;
                }
                return proxy;
            } catch (Throwable th) {
                cm.c(th, "pu", "gpsc");
            }
        }
        return null;
    }

    private static boolean c(Context context) {
        return bu.p(context) == 0;
    }

    private static int b() {
        char c = 65535;
        try {
            return android.net.Proxy.getDefaultPort();
        } catch (Throwable th) {
            cm.c(th, "pu", "gdp");
            return c;
        }
    }
}
