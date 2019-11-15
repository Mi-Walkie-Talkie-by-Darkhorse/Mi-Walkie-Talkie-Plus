package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build.VERSION;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.URI;
import java.util.List;

/* compiled from: ProxyUtil */
public class fv {
    public static Proxy a(Context context) {
        try {
            if (VERSION.SDK_INT >= 11) {
                return a(context, new URI("http://restapi.amap.com"));
            }
            return b(context);
        } catch (Throwable th) {
            gc.a(th, "pu", "gp");
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:103:0x0152 A[SYNTHETIC, Splitter:B:103:0x0152] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0067 A[SYNTHETIC, Splitter:B:30:0x0067] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0070 A[Catch:{ Throwable -> 0x0162 }] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x00c6 A[Catch:{ all -> 0x0172 }] */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x00f9 A[SYNTHETIC, Splitter:B:74:0x00f9] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x013c A[SYNTHETIC, Splitter:B:96:0x013c] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.net.Proxy b(android.content.Context r12) {
        /*
            r10 = 0
            r6 = 80
            r9 = 1
            r8 = -1
            r7 = 0
            boolean r0 = c(r12)
            if (r0 == 0) goto L_0x016d
            java.lang.String r0 = "content://telephony/carriers/preferapn"
            android.net.Uri r1 = android.net.Uri.parse(r0)
            android.content.ContentResolver r0 = r12.getContentResolver()
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r2 = r0.query(r1, r2, r3, r4, r5)     // Catch:{ SecurityException -> 0x00b5, Throwable -> 0x012d, all -> 0x014e }
            if (r2 == 0) goto L_0x01b8
            boolean r0 = r2.moveToFirst()     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
            if (r0 == 0) goto L_0x01b8
            java.lang.String r0 = "apn"
            int r0 = r2.getColumnIndex(r0)     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
            java.lang.String r0 = r2.getString(r0)     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
            if (r0 == 0) goto L_0x0038
            java.util.Locale r1 = java.util.Locale.US     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
            java.lang.String r0 = r0.toLowerCase(r1)     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
        L_0x0038:
            if (r0 == 0) goto L_0x007c
            java.lang.String r1 = "ctwap"
            boolean r1 = r0.contains(r1)     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
            if (r1 == 0) goto L_0x007c
            java.lang.String r3 = a()     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
            int r0 = b()     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
            boolean r1 = android.text.TextUtils.isEmpty(r3)     // Catch:{ SecurityException -> 0x018e, Throwable -> 0x0178 }
            if (r1 != 0) goto L_0x01bb
            java.lang.String r1 = "null"
            boolean r1 = r3.equals(r1)     // Catch:{ SecurityException -> 0x018e, Throwable -> 0x0178 }
            if (r1 != 0) goto L_0x01bb
            r1 = r9
        L_0x0059:
            if (r1 != 0) goto L_0x0061
            java.lang.String r1 = "QMTAuMC4wLjIwMA=="
            java.lang.String r3 = a(r1)     // Catch:{ SecurityException -> 0x0196, Throwable -> 0x017d }
        L_0x0061:
            if (r0 != r8) goto L_0x0064
            r0 = r6
        L_0x0064:
            r8 = r0
        L_0x0065:
            if (r2 == 0) goto L_0x006a
            r2.close()     // Catch:{ Throwable -> 0x00a9 }
        L_0x006a:
            boolean r0 = a(r3, r8)     // Catch:{ Throwable -> 0x0162 }
            if (r0 == 0) goto L_0x016d
            java.net.Proxy r0 = new java.net.Proxy     // Catch:{ Throwable -> 0x0162 }
            java.net.Proxy$Type r1 = java.net.Proxy.Type.HTTP     // Catch:{ Throwable -> 0x0162 }
            java.net.InetSocketAddress r2 = java.net.InetSocketAddress.createUnresolved(r3, r8)     // Catch:{ Throwable -> 0x0162 }
            r0.<init>(r1, r2)     // Catch:{ Throwable -> 0x0162 }
        L_0x007b:
            return r0
        L_0x007c:
            if (r0 == 0) goto L_0x01b8
            java.lang.String r1 = "wap"
            boolean r0 = r0.contains(r1)     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
            if (r0 == 0) goto L_0x01b8
            java.lang.String r3 = a()     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
            int r1 = b()     // Catch:{ SecurityException -> 0x0188, Throwable -> 0x0175 }
            boolean r0 = android.text.TextUtils.isEmpty(r3)     // Catch:{ SecurityException -> 0x019d, Throwable -> 0x0181 }
            if (r0 != 0) goto L_0x01b4
            java.lang.String r0 = "null"
            boolean r0 = r3.equals(r0)     // Catch:{ SecurityException -> 0x019d, Throwable -> 0x0181 }
            if (r0 != 0) goto L_0x01b4
            r0 = r9
        L_0x009d:
            if (r0 != 0) goto L_0x00a5
            java.lang.String r0 = "QMTAuMC4wLjE3Mg=="
            java.lang.String r3 = a(r0)     // Catch:{ SecurityException -> 0x01a4, Throwable -> 0x0185 }
        L_0x00a5:
            if (r1 != r8) goto L_0x01b1
            r8 = r6
            goto L_0x0065
        L_0x00a9:
            r0 = move-exception
            java.lang.String r1 = "ProxyUtil"
            java.lang.String r2 = "getHostProxy2"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x006a
        L_0x00b5:
            r0 = move-exception
            r1 = r7
            r2 = r8
            r3 = r7
        L_0x00b9:
            java.lang.String r4 = "pu"
            java.lang.String r5 = "ghp"
            com.amap.api.mapcore.util.gc.a(r0, r4, r5)     // Catch:{ all -> 0x0172 }
            java.lang.String r0 = com.amap.api.mapcore.util.fs.r(r12)     // Catch:{ all -> 0x0172 }
            if (r0 == 0) goto L_0x01ae
            java.util.Locale r2 = java.util.Locale.US     // Catch:{ all -> 0x0172 }
            java.lang.String r4 = r0.toLowerCase(r2)     // Catch:{ all -> 0x0172 }
            java.lang.String r0 = a()     // Catch:{ all -> 0x0172 }
            int r2 = b()     // Catch:{ all -> 0x0172 }
            java.lang.String r5 = "ctwap"
            int r5 = r4.indexOf(r5)     // Catch:{ all -> 0x0172 }
            if (r5 == r8) goto L_0x010b
            boolean r4 = android.text.TextUtils.isEmpty(r0)     // Catch:{ all -> 0x0172 }
            if (r4 != 0) goto L_0x00ec
            java.lang.String r4 = "null"
            boolean r4 = r0.equals(r4)     // Catch:{ all -> 0x0172 }
            if (r4 != 0) goto L_0x00ec
            r10 = r9
            r3 = r0
        L_0x00ec:
            if (r10 != 0) goto L_0x00f4
            java.lang.String r0 = "QMTAuMC4wLjIwMA=="
            java.lang.String r3 = a(r0)     // Catch:{ all -> 0x0172 }
        L_0x00f4:
            if (r2 != r8) goto L_0x01ae
            r8 = r6
        L_0x00f7:
            if (r1 == 0) goto L_0x006a
            r1.close()     // Catch:{ Throwable -> 0x00fe }
            goto L_0x006a
        L_0x00fe:
            r0 = move-exception
            java.lang.String r1 = "ProxyUtil"
            java.lang.String r2 = "getHostProxy2"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x006a
        L_0x010b:
            java.lang.String r5 = "wap"
            int r4 = r4.indexOf(r5)     // Catch:{ all -> 0x0172 }
            if (r4 == r8) goto L_0x01ae
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch:{ all -> 0x0172 }
            if (r2 != 0) goto L_0x01aa
            java.lang.String r2 = "null"
            boolean r2 = r0.equals(r2)     // Catch:{ all -> 0x0172 }
            if (r2 != 0) goto L_0x01aa
            r2 = r9
        L_0x0122:
            if (r2 != 0) goto L_0x012a
            java.lang.String r0 = "QMTAuMC4wLjE3Mg=="
            java.lang.String r0 = a(r0)     // Catch:{ all -> 0x0172 }
        L_0x012a:
            r8 = r6
            r3 = r0
            goto L_0x00f7
        L_0x012d:
            r0 = move-exception
            r2 = r7
            r3 = r7
        L_0x0130:
            java.lang.String r1 = "ProxyUtil"
            java.lang.String r4 = "getHostProxy1"
            com.amap.api.mapcore.util.gc.a(r0, r1, r4)     // Catch:{ all -> 0x0170 }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0170 }
            if (r2 == 0) goto L_0x006a
            r2.close()     // Catch:{ Throwable -> 0x0141 }
            goto L_0x006a
        L_0x0141:
            r0 = move-exception
            java.lang.String r1 = "ProxyUtil"
            java.lang.String r2 = "getHostProxy2"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x006a
        L_0x014e:
            r0 = move-exception
            r2 = r7
        L_0x0150:
            if (r2 == 0) goto L_0x0155
            r2.close()     // Catch:{ Throwable -> 0x0156 }
        L_0x0155:
            throw r0
        L_0x0156:
            r1 = move-exception
            java.lang.String r2 = "ProxyUtil"
            java.lang.String r3 = "getHostProxy2"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0155
        L_0x0162:
            r0 = move-exception
            java.lang.String r1 = "pu"
            java.lang.String r2 = "gp2"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
        L_0x016d:
            r0 = r7
            goto L_0x007b
        L_0x0170:
            r0 = move-exception
            goto L_0x0150
        L_0x0172:
            r0 = move-exception
            r2 = r1
            goto L_0x0150
        L_0x0175:
            r0 = move-exception
            r3 = r7
            goto L_0x0130
        L_0x0178:
            r1 = move-exception
            r8 = r0
            r3 = r7
            r0 = r1
            goto L_0x0130
        L_0x017d:
            r1 = move-exception
            r8 = r0
            r0 = r1
            goto L_0x0130
        L_0x0181:
            r0 = move-exception
            r8 = r1
            r3 = r7
            goto L_0x0130
        L_0x0185:
            r0 = move-exception
            r8 = r1
            goto L_0x0130
        L_0x0188:
            r0 = move-exception
            r1 = r2
            r3 = r7
            r2 = r8
            goto L_0x00b9
        L_0x018e:
            r1 = move-exception
            r3 = r7
            r11 = r2
            r2 = r0
            r0 = r1
            r1 = r11
            goto L_0x00b9
        L_0x0196:
            r1 = move-exception
            r11 = r1
            r1 = r2
            r2 = r0
            r0 = r11
            goto L_0x00b9
        L_0x019d:
            r0 = move-exception
            r3 = r7
            r11 = r1
            r1 = r2
            r2 = r11
            goto L_0x00b9
        L_0x01a4:
            r0 = move-exception
            r11 = r2
            r2 = r1
            r1 = r11
            goto L_0x00b9
        L_0x01aa:
            r2 = r10
            r0 = r3
            goto L_0x0122
        L_0x01ae:
            r8 = r2
            goto L_0x00f7
        L_0x01b1:
            r8 = r1
            goto L_0x0065
        L_0x01b4:
            r0 = r10
            r3 = r7
            goto L_0x009d
        L_0x01b8:
            r3 = r7
            goto L_0x0065
        L_0x01bb:
            r1 = r10
            r3 = r7
            goto L_0x0059
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fv.b(android.content.Context):java.net.Proxy");
    }

    public static String a(String str) {
        return fy.c(str);
    }

    private static boolean a(String str, int i) {
        return (str == null || str.length() <= 0 || i == -1) ? false : true;
    }

    private static String a() {
        String str;
        try {
            str = android.net.Proxy.getDefaultHost();
        } catch (Throwable th) {
            gc.a(th, "pe", "gdh");
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
                gc.a(th, "pu", "gpsc");
            }
        }
        return null;
    }

    private static boolean c(Context context) {
        return fs.p(context) == 0;
    }

    private static int b() {
        char c = 65535;
        try {
            return android.net.Proxy.getDefaultPort();
        } catch (Throwable th) {
            gc.a(th, "pu", "gdp");
            return c;
        }
    }
}
