package com.tencent.bugly.mimsg.proguard;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: BUGLY */
public final class s {
    private static s b;
    public Map<String, String> a = null;
    private Context c;

    private s(Context context) {
        this.c = context;
    }

    public static s a(Context context) {
        if (b == null) {
            b = new s(context);
        }
        return b;
    }

    /* JADX WARNING: Removed duplicated region for block: B:80:0x0177 A[Catch:{ all -> 0x0189, Throwable -> 0x018e }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final byte[] a(java.lang.String r19, byte[] r20, com.tencent.bugly.mimsg.proguard.v r21, java.util.Map<java.lang.String, java.lang.String> r22) {
        /*
            r18 = this;
            if (r19 != 0) goto L_0x000c
            java.lang.String r4 = "Failed for no URL."
            r5 = 0
            java.lang.Object[] r5 = new java.lang.Object[r5]
            com.tencent.bugly.mimsg.proguard.x.e(r4, r5)
            r4 = 0
        L_0x000b:
            return r4
        L_0x000c:
            r7 = 0
            r8 = 0
            if (r20 != 0) goto L_0x0057
            r4 = 0
        L_0x0012:
            java.lang.String r6 = "request: %s, send: %d (pid=%d | tid=%d)"
            r9 = 4
            java.lang.Object[] r9 = new java.lang.Object[r9]
            r10 = 0
            r9[r10] = r19
            r10 = 1
            java.lang.Long r11 = java.lang.Long.valueOf(r4)
            r9[r10] = r11
            r10 = 2
            int r11 = android.os.Process.myPid()
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            r9[r10] = r11
            r10 = 3
            int r11 = android.os.Process.myTid()
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            r9[r10] = r11
            com.tencent.bugly.mimsg.proguard.x.c(r6, r9)
            r6 = 0
            r9 = r19
        L_0x003d:
            if (r7 > 0) goto L_0x01ae
            if (r8 > 0) goto L_0x01ae
            if (r6 == 0) goto L_0x005c
            r6 = 0
        L_0x0044:
            r0 = r18
            android.content.Context r10 = r0.c
            java.lang.String r10 = com.tencent.bugly.mimsg.crashreport.common.info.b.e(r10)
            if (r10 != 0) goto L_0x008d
            java.lang.String r10 = "Failed to request for network not avail"
            r11 = 0
            java.lang.Object[] r11 = new java.lang.Object[r11]
            com.tencent.bugly.mimsg.proguard.x.d(r10, r11)
            goto L_0x003d
        L_0x0057:
            r0 = r20
            int r4 = r0.length
            long r4 = (long) r4
            goto L_0x0012
        L_0x005c:
            int r7 = r7 + 1
            r10 = 1
            if (r7 <= r10) goto L_0x0044
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r11 = "try time: "
            r10.<init>(r11)
            java.lang.StringBuilder r10 = r10.append(r7)
            java.lang.String r10 = r10.toString()
            r11 = 0
            java.lang.Object[] r11 = new java.lang.Object[r11]
            com.tencent.bugly.mimsg.proguard.x.c(r10, r11)
            java.util.Random r10 = new java.util.Random
            long r12 = java.lang.System.currentTimeMillis()
            r10.<init>(r12)
            r11 = 10000(0x2710, float:1.4013E-41)
            int r10 = r10.nextInt(r11)
            long r10 = (long) r10
            r12 = 10000(0x2710, double:4.9407E-320)
            long r10 = r10 + r12
            android.os.SystemClock.sleep(r10)
            goto L_0x0044
        L_0x008d:
            r0 = r21
            r0.a(r4)
            r0 = r18
            r1 = r20
            r2 = r22
            java.net.HttpURLConnection r14 = r0.a(r9, r1, r10, r2)
            if (r14 == 0) goto L_0x0199
            int r12 = r14.getResponseCode()     // Catch:{ IOException -> 0x016b }
            r10 = 200(0xc8, float:2.8E-43)
            if (r12 != r10) goto L_0x00cf
            java.util.Map r10 = a(r14)     // Catch:{ IOException -> 0x016b }
            r0 = r18
            r0.a = r10     // Catch:{ IOException -> 0x016b }
            byte[] r10 = b(r14)     // Catch:{ IOException -> 0x016b }
            if (r10 != 0) goto L_0x00c1
            r12 = 0
        L_0x00b6:
            r0 = r21
            r0.b(r12)     // Catch:{ IOException -> 0x016b }
            r14.disconnect()     // Catch:{ Throwable -> 0x00c4 }
        L_0x00be:
            r4 = r10
            goto L_0x000b
        L_0x00c1:
            int r11 = r10.length     // Catch:{ IOException -> 0x016b }
            long r12 = (long) r11
            goto L_0x00b6
        L_0x00c4:
            r4 = move-exception
            boolean r5 = com.tencent.bugly.mimsg.proguard.x.a(r4)
            if (r5 != 0) goto L_0x00be
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r4)
            goto L_0x00be
        L_0x00cf:
            r10 = 301(0x12d, float:4.22E-43)
            if (r12 == r10) goto L_0x00df
            r10 = 302(0x12e, float:4.23E-43)
            if (r12 == r10) goto L_0x00df
            r10 = 303(0x12f, float:4.25E-43)
            if (r12 == r10) goto L_0x00df
            r10 = 307(0x133, float:4.3E-43)
            if (r12 != r10) goto L_0x0106
        L_0x00df:
            r10 = 1
        L_0x00e0:
            if (r10 == 0) goto L_0x01cc
            r10 = 1
            java.lang.String r6 = "Location"
            java.lang.String r11 = r14.getHeaderField(r6)     // Catch:{ IOException -> 0x01b1 }
            if (r11 != 0) goto L_0x0113
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x01b1 }
            java.lang.String r11 = "Failed to redirect: %d"
            r6.<init>(r11)     // Catch:{ IOException -> 0x01b1 }
            java.lang.StringBuilder r6 = r6.append(r12)     // Catch:{ IOException -> 0x01b1 }
            java.lang.String r6 = r6.toString()     // Catch:{ IOException -> 0x01b1 }
            r11 = 0
            java.lang.Object[] r11 = new java.lang.Object[r11]     // Catch:{ IOException -> 0x01b1 }
            com.tencent.bugly.mimsg.proguard.x.e(r6, r11)     // Catch:{ IOException -> 0x01b1 }
            r14.disconnect()     // Catch:{ Throwable -> 0x0108 }
        L_0x0103:
            r4 = 0
            goto L_0x000b
        L_0x0106:
            r10 = 0
            goto L_0x00e0
        L_0x0108:
            r4 = move-exception
            boolean r5 = com.tencent.bugly.mimsg.proguard.x.a(r4)
            if (r5 != 0) goto L_0x0103
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r4)
            goto L_0x0103
        L_0x0113:
            int r8 = r8 + 1
            r7 = 0
            java.lang.String r6 = "redirect code: %d ,to:%s"
            r9 = 2
            java.lang.Object[] r9 = new java.lang.Object[r9]     // Catch:{ IOException -> 0x01bd }
            r13 = 0
            java.lang.Integer r15 = java.lang.Integer.valueOf(r12)     // Catch:{ IOException -> 0x01bd }
            r9[r13] = r15     // Catch:{ IOException -> 0x01bd }
            r13 = 1
            r9[r13] = r11     // Catch:{ IOException -> 0x01bd }
            com.tencent.bugly.mimsg.proguard.x.c(r6, r9)     // Catch:{ IOException -> 0x01bd }
            r6 = r10
            r9 = r11
            r16 = r7
            r7 = r8
            r8 = r16
        L_0x012f:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x01ca }
            java.lang.String r11 = "response code "
            r10.<init>(r11)     // Catch:{ IOException -> 0x01ca }
            java.lang.StringBuilder r10 = r10.append(r12)     // Catch:{ IOException -> 0x01ca }
            java.lang.String r10 = r10.toString()     // Catch:{ IOException -> 0x01ca }
            r11 = 0
            java.lang.Object[] r11 = new java.lang.Object[r11]     // Catch:{ IOException -> 0x01ca }
            com.tencent.bugly.mimsg.proguard.x.d(r10, r11)     // Catch:{ IOException -> 0x01ca }
            int r10 = r14.getContentLength()     // Catch:{ IOException -> 0x01ca }
            long r10 = (long) r10     // Catch:{ IOException -> 0x01ca }
            r12 = 0
            int r12 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r12 >= 0) goto L_0x0151
            r10 = 0
        L_0x0151:
            r0 = r21
            r0.b(r10)     // Catch:{ IOException -> 0x01ca }
            r14.disconnect()     // Catch:{ Throwable -> 0x0160 }
        L_0x0159:
            r16 = r7
            r7 = r8
            r8 = r16
            goto L_0x003d
        L_0x0160:
            r10 = move-exception
            boolean r11 = com.tencent.bugly.mimsg.proguard.x.a(r10)
            if (r11 != 0) goto L_0x0159
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r10)
            goto L_0x0159
        L_0x016b:
            r10 = move-exception
            r16 = r8
            r8 = r7
            r7 = r16
        L_0x0171:
            boolean r11 = com.tencent.bugly.mimsg.proguard.x.a(r10)     // Catch:{ all -> 0x0189 }
            if (r11 != 0) goto L_0x017a
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r10)     // Catch:{ all -> 0x0189 }
        L_0x017a:
            r14.disconnect()     // Catch:{ Throwable -> 0x017e }
            goto L_0x0159
        L_0x017e:
            r10 = move-exception
            boolean r11 = com.tencent.bugly.mimsg.proguard.x.a(r10)
            if (r11 != 0) goto L_0x0159
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r10)
            goto L_0x0159
        L_0x0189:
            r4 = move-exception
            r14.disconnect()     // Catch:{ Throwable -> 0x018e }
        L_0x018d:
            throw r4
        L_0x018e:
            r5 = move-exception
            boolean r6 = com.tencent.bugly.mimsg.proguard.x.a(r5)
            if (r6 != 0) goto L_0x018d
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r5)
            goto L_0x018d
        L_0x0199:
            java.lang.String r10 = "Failed to execute post."
            r11 = 0
            java.lang.Object[] r11 = new java.lang.Object[r11]
            com.tencent.bugly.mimsg.proguard.x.c(r10, r11)
            r10 = 0
            r0 = r21
            r0.b(r10)
            r16 = r8
            r8 = r7
            r7 = r16
            goto L_0x0159
        L_0x01ae:
            r4 = 0
            goto L_0x000b
        L_0x01b1:
            r6 = move-exception
            r16 = r6
            r6 = r10
            r10 = r16
            r17 = r8
            r8 = r7
            r7 = r17
            goto L_0x0171
        L_0x01bd:
            r6 = move-exception
            r9 = r11
            r16 = r10
            r10 = r6
            r6 = r16
            r17 = r7
            r7 = r8
            r8 = r17
            goto L_0x0171
        L_0x01ca:
            r10 = move-exception
            goto L_0x0171
        L_0x01cc:
            r16 = r8
            r8 = r7
            r7 = r16
            goto L_0x012f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.s.a(java.lang.String, byte[], com.tencent.bugly.mimsg.proguard.v, java.util.Map):byte[]");
    }

    private static Map<String, String> a(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        Map headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null || headerFields.size() == 0) {
            return null;
        }
        for (String str : headerFields.keySet()) {
            List list = (List) headerFields.get(str);
            if (list.size() > 0) {
                hashMap.put(str, list.get(0));
            }
        }
        return hashMap;
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x004b A[SYNTHETIC, Splitter:B:29:0x004b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static byte[] b(java.net.HttpURLConnection r6) {
        /*
            r0 = 0
            if (r6 != 0) goto L_0x0004
        L_0x0003:
            return r0
        L_0x0004:
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch:{ Throwable -> 0x0056, all -> 0x0046 }
            java.io.InputStream r1 = r6.getInputStream()     // Catch:{ Throwable -> 0x0056, all -> 0x0046 }
            r2.<init>(r1)     // Catch:{ Throwable -> 0x0056, all -> 0x0046 }
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ Throwable -> 0x0021 }
            r1.<init>()     // Catch:{ Throwable -> 0x0021 }
            r3 = 1024(0x400, float:1.435E-42)
            byte[] r3 = new byte[r3]     // Catch:{ Throwable -> 0x0021 }
        L_0x0016:
            int r4 = r2.read(r3)     // Catch:{ Throwable -> 0x0021 }
            if (r4 <= 0) goto L_0x0036
            r5 = 0
            r1.write(r3, r5, r4)     // Catch:{ Throwable -> 0x0021 }
            goto L_0x0016
        L_0x0021:
            r1 = move-exception
        L_0x0022:
            boolean r3 = com.tencent.bugly.mimsg.proguard.x.a(r1)     // Catch:{ all -> 0x0054 }
            if (r3 != 0) goto L_0x002b
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0054 }
        L_0x002b:
            if (r2 == 0) goto L_0x0003
            r2.close()     // Catch:{ Throwable -> 0x0031 }
            goto L_0x0003
        L_0x0031:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0003
        L_0x0036:
            r1.flush()     // Catch:{ Throwable -> 0x0021 }
            byte[] r0 = r1.toByteArray()     // Catch:{ Throwable -> 0x0021 }
            r2.close()     // Catch:{ Throwable -> 0x0041 }
            goto L_0x0003
        L_0x0041:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0003
        L_0x0046:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0049:
            if (r2 == 0) goto L_0x004e
            r2.close()     // Catch:{ Throwable -> 0x004f }
        L_0x004e:
            throw r0
        L_0x004f:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x004e
        L_0x0054:
            r0 = move-exception
            goto L_0x0049
        L_0x0056:
            r1 = move-exception
            r2 = r0
            goto L_0x0022
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.s.b(java.net.HttpURLConnection):byte[]");
    }

    private HttpURLConnection a(String str, byte[] bArr, String str2, Map<String, String> map) {
        if (str == null) {
            x.e("destUrl is null.", new Object[0]);
            return null;
        }
        HttpURLConnection a2 = a(str2, str);
        if (a2 == null) {
            x.e("Failed to get HttpURLConnection object.", new Object[0]);
            return null;
        }
        try {
            a2.setRequestProperty("wup_version", "3.0");
            if (map != null && map.size() > 0) {
                for (Entry entry : map.entrySet()) {
                    a2.setRequestProperty((String) entry.getKey(), URLEncoder.encode((String) entry.getValue(), "utf-8"));
                }
            }
            a2.setRequestProperty("A37", URLEncoder.encode(str2, "utf-8"));
            a2.setRequestProperty("A38", URLEncoder.encode(str2, "utf-8"));
            OutputStream outputStream = a2.getOutputStream();
            if (bArr == null) {
                outputStream.write(0);
            } else {
                outputStream.write(bArr);
            }
            return a2;
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            x.e("Failed to upload, please check your network.", new Object[0]);
            return null;
        }
    }

    private static HttpURLConnection a(String str, String str2) {
        HttpURLConnection httpURLConnection;
        try {
            URL url = new URL(str2);
            if (str == null || !str.toLowerCase(Locale.US).contains("wap")) {
                httpURLConnection = (HttpURLConnection) url.openConnection();
            } else {
                httpURLConnection = (HttpURLConnection) url.openConnection(new Proxy(Type.HTTP, new InetSocketAddress(System.getProperty("http.proxyHost"), Integer.parseInt(System.getProperty("http.proxyPort")))));
            }
            httpURLConnection.setConnectTimeout(30000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(false);
            return httpURLConnection;
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }
}
