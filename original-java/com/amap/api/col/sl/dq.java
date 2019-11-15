package com.amap.api.col.sl;

import android.os.Build.VERSION;
import com.amap.api.col.sl.dn.a;
import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;

/* compiled from: HttpUrlUtil */
public final class dq {
    private int a;
    private int b;
    private boolean c;
    private SSLContext d;
    private Proxy e;
    private volatile boolean f;
    private long g;
    private long h;
    private String i;
    private a j;
    private HostnameVerifier k;

    dq(int i2, int i3, Proxy proxy, boolean z) {
        this(i2, i3, proxy, z, 0);
    }

    private dq(int i2, int i3, Proxy proxy, boolean z, byte b2) {
        this.f = false;
        this.g = -1;
        this.h = 0;
        this.k = new HostnameVerifier() {
            public final boolean verify(String str, SSLSession sSLSession) {
                HostnameVerifier defaultHostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();
                return defaultHostnameVerifier.verify(str, sSLSession) || defaultHostnameVerifier.verify(str, sSLSession);
            }
        };
        this.a = i2;
        this.b = i3;
        this.e = proxy;
        this.c = z;
        this.j = null;
        try {
            this.i = UUID.randomUUID().toString().replaceAll("-", "").toLowerCase();
        } catch (Throwable th) {
            cj.a(th, "ht", "ic");
        }
        if (z) {
            try {
                SSLContext instance = SSLContext.getInstance("TLS");
                instance.init(null, null, null);
                this.d = instance;
            } catch (Throwable th2) {
                cj.a(th2, "ht", "ne");
            }
        }
    }

    dq(int i2, int i3, Proxy proxy) {
        this(i2, i3, proxy, false);
    }

    /* access modifiers changed from: 0000 */
    public final void a() {
        this.h = 0;
    }

    /* access modifiers changed from: 0000 */
    public final void b() {
        this.g = -1;
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00be A[SYNTHETIC, Splitter:B:38:0x00be] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00c3 A[SYNTHETIC, Splitter:B:41:0x00c3] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00eb A[SYNTHETIC, Splitter:B:52:0x00eb] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00f0 A[SYNTHETIC, Splitter:B:55:0x00f0] */
    /* JADX WARNING: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r11, java.util.Map<java.lang.String, java.lang.String> r12, java.util.Map<java.lang.String, java.lang.String> r13, com.amap.api.col.sl.dp.a r14) {
        /*
            r10 = this;
            r0 = 0
            r2 = 1
            r8 = 1024(0x400, float:1.435E-42)
            r3 = 0
            if (r14 != 0) goto L_0x0008
        L_0x0007:
            return
        L_0x0008:
            java.lang.String r1 = a(r13)     // Catch:{ Throwable -> 0x0165, all -> 0x0154 }
            java.lang.StringBuffer r4 = new java.lang.StringBuffer     // Catch:{ Throwable -> 0x0165, all -> 0x0154 }
            r4.<init>()     // Catch:{ Throwable -> 0x0165, all -> 0x0154 }
            r4.append(r11)     // Catch:{ Throwable -> 0x0165, all -> 0x0154 }
            if (r1 == 0) goto L_0x001f
            java.lang.String r5 = "?"
            java.lang.StringBuffer r5 = r4.append(r5)     // Catch:{ Throwable -> 0x0165, all -> 0x0154 }
            r5.append(r1)     // Catch:{ Throwable -> 0x0165, all -> 0x0154 }
        L_0x001f:
            java.lang.String r1 = r4.toString()     // Catch:{ Throwable -> 0x0165, all -> 0x0154 }
            r4 = 0
            java.net.HttpURLConnection r1 = r10.a(r1, r12, r4)     // Catch:{ Throwable -> 0x0165, all -> 0x0154 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.String r5 = "bytes="
            r4.<init>(r5)     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            long r6 = r10.h     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.String r5 = "-"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.String r4 = r4.toString()     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.String r5 = "RANGE"
            r1.setRequestProperty(r5, r4)     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            r1.connect()     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            int r5 = r1.getResponseCode()     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            r4 = 200(0xc8, float:2.8E-43)
            if (r5 == r4) goto L_0x00d2
            r4 = r2
        L_0x0050:
            r6 = 206(0xce, float:2.89E-43)
            if (r5 == r6) goto L_0x00d5
        L_0x0054:
            r2 = r2 & r4
            if (r2 == 0) goto L_0x007c
            com.amap.api.col.sl.bo r2 = new com.amap.api.col.sl.bo     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.String r4 = "网络异常原因："
            r3.<init>(r4)     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.String r4 = r1.getResponseMessage()     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.String r4 = " 网络异常状态码："
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            r2.<init>(r3)     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            r14.d()     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
        L_0x007c:
            java.io.InputStream r0 = r1.getInputStream()     // Catch:{ Throwable -> 0x0169, all -> 0x015a }
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
        L_0x0084:
            boolean r3 = java.lang.Thread.interrupted()     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            if (r3 != 0) goto L_0x00f4
            boolean r3 = r10.f     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            if (r3 != 0) goto L_0x00f4
            r3 = 0
            r4 = 1024(0x400, float:1.435E-42)
            int r3 = r0.read(r2, r3, r4)     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            if (r3 <= 0) goto L_0x00f4
            long r4 = r10.g     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            r6 = -1
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L_0x00a7
            long r4 = r10.h     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            long r6 = r10.g     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 >= 0) goto L_0x00f4
        L_0x00a7:
            if (r3 != r8) goto L_0x00d8
            long r4 = r10.h     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            r14.a(r2, r4)     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
        L_0x00ae:
            long r4 = r10.h     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            long r6 = (long) r3     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            long r4 = r4 + r6
            r10.h = r4     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            goto L_0x0084
        L_0x00b5:
            r2 = move-exception
            r9 = r1
            r1 = r0
            r0 = r9
        L_0x00b9:
            r14.d()     // Catch:{ all -> 0x015f }
            if (r1 == 0) goto L_0x00c1
            r1.close()     // Catch:{ IOException -> 0x0127, Throwable -> 0x0130 }
        L_0x00c1:
            if (r0 == 0) goto L_0x0007
            r0.disconnect()     // Catch:{ Throwable -> 0x00c8 }
            goto L_0x0007
        L_0x00c8:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r2 = "mdr"
            com.amap.api.col.sl.cj.a(r0, r1, r2)
            goto L_0x0007
        L_0x00d2:
            r4 = r3
            goto L_0x0050
        L_0x00d5:
            r2 = r3
            goto L_0x0054
        L_0x00d8:
            byte[] r4 = new byte[r3]     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            r5 = 0
            r6 = 0
            java.lang.System.arraycopy(r2, r5, r4, r6, r3)     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            long r6 = r10.h     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            r14.a(r4, r6)     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            goto L_0x00ae
        L_0x00e5:
            r2 = move-exception
            r9 = r2
            r2 = r0
            r0 = r9
        L_0x00e9:
            if (r2 == 0) goto L_0x00ee
            r2.close()     // Catch:{ IOException -> 0x0139, Throwable -> 0x0142 }
        L_0x00ee:
            if (r1 == 0) goto L_0x00f3
            r1.disconnect()     // Catch:{ Throwable -> 0x014b }
        L_0x00f3:
            throw r0
        L_0x00f4:
            boolean r2 = r10.f     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            if (r2 == 0) goto L_0x0111
            r14.c()     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
        L_0x00fb:
            if (r0 == 0) goto L_0x0100
            r0.close()     // Catch:{ IOException -> 0x0115, Throwable -> 0x011e }
        L_0x0100:
            if (r1 == 0) goto L_0x0007
            r1.disconnect()     // Catch:{ Throwable -> 0x0107 }
            goto L_0x0007
        L_0x0107:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r2 = "mdr"
            com.amap.api.col.sl.cj.a(r0, r1, r2)
            goto L_0x0007
        L_0x0111:
            r14.b()     // Catch:{ Throwable -> 0x00b5, all -> 0x00e5 }
            goto L_0x00fb
        L_0x0115:
            r0 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.col.sl.cj.a(r0, r2, r3)
            goto L_0x0100
        L_0x011e:
            r0 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.col.sl.cj.a(r0, r2, r3)
            goto L_0x0100
        L_0x0127:
            r1 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.col.sl.cj.a(r1, r2, r3)
            goto L_0x00c1
        L_0x0130:
            r1 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.col.sl.cj.a(r1, r2, r3)
            goto L_0x00c1
        L_0x0139:
            r2 = move-exception
            java.lang.String r3 = "ht"
            java.lang.String r4 = "mdr"
            com.amap.api.col.sl.cj.a(r2, r3, r4)
            goto L_0x00ee
        L_0x0142:
            r2 = move-exception
            java.lang.String r3 = "ht"
            java.lang.String r4 = "mdr"
            com.amap.api.col.sl.cj.a(r2, r3, r4)
            goto L_0x00ee
        L_0x014b:
            r1 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.col.sl.cj.a(r1, r2, r3)
            goto L_0x00f3
        L_0x0154:
            r1 = move-exception
            r2 = r0
            r9 = r0
            r0 = r1
            r1 = r9
            goto L_0x00e9
        L_0x015a:
            r2 = move-exception
            r9 = r2
            r2 = r0
            r0 = r9
            goto L_0x00e9
        L_0x015f:
            r2 = move-exception
            r9 = r2
            r2 = r1
            r1 = r0
            r0 = r9
            goto L_0x00e9
        L_0x0165:
            r1 = move-exception
            r1 = r0
            goto L_0x00b9
        L_0x0169:
            r2 = move-exception
            r9 = r1
            r1 = r0
            r0 = r9
            goto L_0x00b9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.dq.a(java.lang.String, java.util.Map, java.util.Map, com.amap.api.col.sl.dp$a):void");
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003c, code lost:
        throw new com.amap.api.col.sl.bo(com.amap.api.maps.AMapException.ERROR_CONNECTION);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        r1.disconnect();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004f, code lost:
        throw new com.amap.api.col.sl.bo("url异常 - MalformedURLException");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0058, code lost:
        throw new com.amap.api.col.sl.bo("未知主机 - UnKnowHostException");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0061, code lost:
        throw new com.amap.api.col.sl.bo(com.amap.api.maps.AMapException.ERROR_SOCKET);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x006a, code lost:
        throw new com.amap.api.col.sl.bo("socket 连接超时 - SocketTimeoutException");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0073, code lost:
        throw new com.amap.api.col.sl.bo(com.amap.api.maps.AMapException.ERROR_UNKNOWN);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x007c, code lost:
        throw new com.amap.api.col.sl.bo("IO 操作异常 - IOException");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x007d, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x007e, code lost:
        r4 = r1;
        r1 = r0;
        r0 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0082, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0084, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0085, code lost:
        r4 = r1;
        r1 = r0;
        r0 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0093, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0094, code lost:
        com.amap.api.col.sl.cj.a(r1, "ht", "mgr");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x009c, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x009d, code lost:
        r4 = r1;
        r1 = r0;
        r0 = r4;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0034 A[ExcHandler: ConnectException (e java.net.ConnectException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0043 A[SYNTHETIC, Splitter:B:21:0x0043] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0047 A[ExcHandler: MalformedURLException (e java.net.MalformedURLException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0050 A[Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x00a6, Throwable -> 0x00a1, all -> 0x003d }, ExcHandler: UnknownHostException (e java.net.UnknownHostException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0059 A[Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x00a6, Throwable -> 0x00a1, all -> 0x003d }, ExcHandler: SocketException (e java.net.SocketException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0062 A[Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x00a6, Throwable -> 0x00a1, all -> 0x003d }, ExcHandler: SocketTimeoutException (e java.net.SocketTimeoutException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x006b A[Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x00a6, Throwable -> 0x00a1, all -> 0x003d }, ExcHandler: InterruptedIOException (e java.io.InterruptedIOException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0074 A[Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x00a6, Throwable -> 0x00a1, all -> 0x003d }, ExcHandler: IOException (e java.io.IOException), Splitter:B:1:0x0001] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.amap.api.col.sl.du a(java.lang.String r6, java.util.Map<java.lang.String, java.lang.String> r7, java.util.Map<java.lang.String, java.lang.String> r8) throws com.amap.api.col.sl.bo {
        /*
            r5 = this;
            r0 = 0
            java.lang.String r1 = a(r8)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            java.lang.StringBuffer r2 = new java.lang.StringBuffer     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            r2.<init>()     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            r2.append(r6)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            if (r1 == 0) goto L_0x0018
            java.lang.String r3 = "?"
            java.lang.StringBuffer r3 = r2.append(r3)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            r3.append(r1)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
        L_0x0018:
            java.lang.String r1 = r2.toString()     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            r2 = 0
            java.net.HttpURLConnection r0 = r5.a(r1, r7, r2)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            com.amap.api.col.sl.du r1 = r5.a(r0)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, bo -> 0x00a6, Throwable -> 0x00a1 }
            if (r0 == 0) goto L_0x002a
            r0.disconnect()     // Catch:{ Throwable -> 0x002b }
        L_0x002a:
            return r1
        L_0x002b:
            r0 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mgr"
            com.amap.api.col.sl.cj.a(r0, r2, r3)
            goto L_0x002a
        L_0x0034:
            r1 = move-exception
            com.amap.api.col.sl.bo r1 = new com.amap.api.col.sl.bo     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "http连接失败 - ConnectionException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x003d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0041:
            if (r1 == 0) goto L_0x0046
            r1.disconnect()     // Catch:{ Throwable -> 0x0093 }
        L_0x0046:
            throw r0
        L_0x0047:
            r1 = move-exception
            com.amap.api.col.sl.bo r1 = new com.amap.api.col.sl.bo     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "url异常 - MalformedURLException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x0050:
            r1 = move-exception
            com.amap.api.col.sl.bo r1 = new com.amap.api.col.sl.bo     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "未知主机 - UnKnowHostException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x0059:
            r1 = move-exception
            com.amap.api.col.sl.bo r1 = new com.amap.api.col.sl.bo     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "socket 连接异常 - SocketException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x0062:
            r1 = move-exception
            com.amap.api.col.sl.bo r1 = new com.amap.api.col.sl.bo     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "socket 连接超时 - SocketTimeoutException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x006b:
            r1 = move-exception
            com.amap.api.col.sl.bo r1 = new com.amap.api.col.sl.bo     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "未知的错误"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x0074:
            r1 = move-exception
            com.amap.api.col.sl.bo r1 = new com.amap.api.col.sl.bo     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "IO 操作异常 - IOException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x007d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0081:
            throw r0     // Catch:{ all -> 0x0082 }
        L_0x0082:
            r0 = move-exception
            goto L_0x0041
        L_0x0084:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0088:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0082 }
            com.amap.api.col.sl.bo r0 = new com.amap.api.col.sl.bo     // Catch:{ all -> 0x0082 }
            java.lang.String r2 = "未知的错误"
            r0.<init>(r2)     // Catch:{ all -> 0x0082 }
            throw r0     // Catch:{ all -> 0x0082 }
        L_0x0093:
            r1 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mgr"
            com.amap.api.col.sl.cj.a(r1, r2, r3)
            goto L_0x0046
        L_0x009c:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x0041
        L_0x00a1:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x0088
        L_0x00a6:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x0081
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.dq.a(java.lang.String, java.util.Map, java.util.Map):com.amap.api.col.sl.du");
    }

    /* access modifiers changed from: 0000 */
    public final du a(String str, Map<String, String> map, byte[] bArr) throws bo {
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection a2 = a(str, map, true);
            if (bArr != null && bArr.length > 0) {
                DataOutputStream dataOutputStream = new DataOutputStream(a2.getOutputStream());
                dataOutputStream.write(bArr);
                dataOutputStream.close();
            }
            du a3 = a(a2);
            if (a2 != null) {
                try {
                    a2.disconnect();
                } catch (Throwable th) {
                    cj.a(th, "ht", "mPt");
                }
            }
            return a3;
        } catch (ConnectException e2) {
            ThrowableExtension.printStackTrace(e2);
            throw new bo(AMapException.ERROR_CONNECTION);
        } catch (MalformedURLException e3) {
            ThrowableExtension.printStackTrace(e3);
            throw new bo("url异常 - MalformedURLException");
        } catch (UnknownHostException e4) {
            ThrowableExtension.printStackTrace(e4);
            throw new bo("未知主机 - UnKnowHostException");
        } catch (SocketException e5) {
            ThrowableExtension.printStackTrace(e5);
            throw new bo(AMapException.ERROR_SOCKET);
        } catch (SocketTimeoutException e6) {
            ThrowableExtension.printStackTrace(e6);
            throw new bo("socket 连接超时 - SocketTimeoutException");
        } catch (InterruptedIOException e7) {
            throw new bo(AMapException.ERROR_UNKNOWN);
        } catch (IOException e8) {
            ThrowableExtension.printStackTrace(e8);
            throw new bo("IO 操作异常 - IOException");
        } catch (bo e9) {
            cj.a((Throwable) e9, "ht", "mPt");
            throw e9;
        } catch (Throwable th2) {
            if (httpURLConnection != null) {
                try {
                    httpURLConnection.disconnect();
                } catch (Throwable th3) {
                    cj.a(th3, "ht", "mPt");
                }
            }
            throw th2;
        }
    }

    private HttpURLConnection a(String str, Map<String, String> map, boolean z) throws IOException {
        HttpURLConnection httpURLConnection;
        bu.b();
        URLConnection uRLConnection = null;
        URL url = new URL(str);
        if (this.j != null) {
            a aVar = this.j;
            Proxy proxy = this.e;
            uRLConnection = aVar.a();
        }
        if (uRLConnection == null) {
            if (this.e != null) {
                uRLConnection = url.openConnection(this.e);
            } else {
                uRLConnection = url.openConnection();
            }
        }
        if (this.c) {
            httpURLConnection = (HttpsURLConnection) uRLConnection;
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(this.d.getSocketFactory());
            ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(this.k);
        } else {
            httpURLConnection = (HttpURLConnection) uRLConnection;
        }
        if (VERSION.SDK != null && VERSION.SDK_INT > 13) {
            httpURLConnection.setRequestProperty("Connection", "close");
        }
        a(map, httpURLConnection);
        if (z) {
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
        } else {
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setDoInput(true);
        }
        return httpURLConnection;
    }

    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r1v1 */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r1v3, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r1v5 */
    /* JADX WARNING: type inference failed for: r9v0 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: type inference failed for: r1v12 */
    /* JADX WARNING: type inference failed for: r1v13 */
    /* JADX WARNING: type inference failed for: r9v1 */
    /* JADX WARNING: type inference failed for: r1v15 */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r2v8, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r5v11, types: [java.util.zip.GZIPInputStream] */
    /* JADX WARNING: type inference failed for: r1v19 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: type inference failed for: r1v21 */
    /* JADX WARNING: type inference failed for: r2v18 */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0068, code lost:
        r1 = 0;
        r3 = null;
        r4 = null;
        r2 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x00f7, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x00f8, code lost:
        com.amap.api.col.sl.cj.a(r4, "ht", "par");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x0101, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x0102, code lost:
        com.amap.api.col.sl.cj.a(r3, "ht", "par");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x010b, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x010c, code lost:
        com.amap.api.col.sl.cj.a(r2, "ht", "par");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x0115, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x0116, code lost:
        com.amap.api.col.sl.cj.a(r1, "ht", "par");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0143, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x0144, code lost:
        r1 = 0;
        r3 = null;
        r4 = null;
        r2 = r2;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x002b A[SYNTHETIC, Splitter:B:11:0x002b] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0079 A[SYNTHETIC, Splitter:B:22:0x0079] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x007e A[SYNTHETIC, Splitter:B:25:0x007e] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0083 A[SYNTHETIC, Splitter:B:28:0x0083] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0088 A[SYNTHETIC, Splitter:B:31:0x0088] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008c A[SYNTHETIC, Splitter:B:34:0x008c] */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0143 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:1:0x0003] */
    /* JADX WARNING: Unknown variable types count: 8 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.amap.api.col.sl.du a(java.net.HttpURLConnection r11) throws com.amap.api.col.sl.bo, java.io.IOException {
        /*
            r10 = this;
            r2 = 0
            java.lang.String r1 = ""
            r11.connect()     // Catch:{ IOException -> 0x0158, all -> 0x0143 }
            java.util.Map r6 = r11.getHeaderFields()     // Catch:{ IOException -> 0x0158, all -> 0x0143 }
            int r3 = r11.getResponseCode()     // Catch:{ IOException -> 0x0158, all -> 0x0143 }
            if (r6 == 0) goto L_0x0168
            java.lang.String r0 = "gsid"
            java.lang.Object r0 = r6.get(r0)     // Catch:{ IOException -> 0x0158, all -> 0x0143 }
            java.util.List r0 = (java.util.List) r0     // Catch:{ IOException -> 0x0158, all -> 0x0143 }
            if (r0 == 0) goto L_0x0168
            int r4 = r0.size()     // Catch:{ IOException -> 0x0158, all -> 0x0143 }
            if (r4 <= 0) goto L_0x0168
            r4 = 0
            java.lang.Object r0 = r0.get(r4)     // Catch:{ IOException -> 0x0158, all -> 0x0143 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ IOException -> 0x0158, all -> 0x0143 }
        L_0x0027:
            r1 = 200(0xc8, float:2.8E-43)
            if (r3 == r1) goto L_0x008c
            com.amap.api.col.sl.bo r1 = new com.amap.api.col.sl.bo     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.String r5 = "网络异常原因："
            r4.<init>(r5)     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.String r5 = r11.getResponseMessage()     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.String r5 = " 网络异常状态码："
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.StringBuilder r4 = r4.append(r3)     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.String r5 = "  "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.StringBuilder r4 = r4.append(r0)     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.String r5 = " "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.String r5 = r10.i     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.lang.String r4 = r4.toString()     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            r1.<init>(r4, r0)     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            r1.a(r3)     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            throw r1     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
        L_0x0067:
            r1 = move-exception
            r1 = r2
            r3 = r2
            r4 = r2
        L_0x006b:
            com.amap.api.col.sl.bo r5 = new com.amap.api.col.sl.bo     // Catch:{ all -> 0x0073 }
            java.lang.String r6 = "IO 操作异常 - IOException"
            r5.<init>(r6, r0)     // Catch:{ all -> 0x0073 }
            throw r5     // Catch:{ all -> 0x0073 }
        L_0x0073:
            r0 = move-exception
            r9 = r1
            r1 = r2
            r2 = r9
        L_0x0077:
            if (r4 == 0) goto L_0x007c
            r4.close()     // Catch:{ Throwable -> 0x00f7 }
        L_0x007c:
            if (r3 == 0) goto L_0x0081
            r3.close()     // Catch:{ Throwable -> 0x0101 }
        L_0x0081:
            if (r2 == 0) goto L_0x0086
            r2.close()     // Catch:{ Throwable -> 0x010b }
        L_0x0086:
            if (r1 == 0) goto L_0x008b
            r1.close()     // Catch:{ Throwable -> 0x0115 }
        L_0x008b:
            throw r0
        L_0x008c:
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            r4.<init>()     // Catch:{ IOException -> 0x0067, all -> 0x0143 }
            java.io.InputStream r3 = r11.getInputStream()     // Catch:{ IOException -> 0x015f, all -> 0x0149 }
            java.io.PushbackInputStream r1 = new java.io.PushbackInputStream     // Catch:{ IOException -> 0x0164, all -> 0x014e }
            r5 = 2
            r1.<init>(r3, r5)     // Catch:{ IOException -> 0x0164, all -> 0x014e }
            r5 = 2
            byte[] r5 = new byte[r5]     // Catch:{ all -> 0x0152 }
            r1.read(r5)     // Catch:{ all -> 0x0152 }
            r1.unread(r5)     // Catch:{ all -> 0x0152 }
            r7 = 0
            byte r7 = r5[r7]     // Catch:{ all -> 0x0152 }
            r8 = 31
            if (r7 != r8) goto L_0x00ca
            r7 = 1
            byte r5 = r5[r7]     // Catch:{ all -> 0x0152 }
            r7 = -117(0xffffffffffffff8b, float:NaN)
            if (r5 != r7) goto L_0x00ca
            java.util.zip.GZIPInputStream r5 = new java.util.zip.GZIPInputStream     // Catch:{ all -> 0x0152 }
            r5.<init>(r1)     // Catch:{ all -> 0x0152 }
            r2 = r5
        L_0x00b8:
            r5 = 1024(0x400, float:1.435E-42)
            byte[] r5 = new byte[r5]     // Catch:{ IOException -> 0x00c8 }
        L_0x00bc:
            int r7 = r2.read(r5)     // Catch:{ IOException -> 0x00c8 }
            r8 = -1
            if (r7 == r8) goto L_0x00cc
            r8 = 0
            r4.write(r5, r8, r7)     // Catch:{ IOException -> 0x00c8 }
            goto L_0x00bc
        L_0x00c8:
            r5 = move-exception
            goto L_0x006b
        L_0x00ca:
            r2 = r1
            goto L_0x00b8
        L_0x00cc:
            com.amap.api.col.sl.cm.c()     // Catch:{ IOException -> 0x00c8 }
            com.amap.api.col.sl.du r5 = new com.amap.api.col.sl.du     // Catch:{ IOException -> 0x00c8 }
            r5.<init>()     // Catch:{ IOException -> 0x00c8 }
            byte[] r7 = r4.toByteArray()     // Catch:{ IOException -> 0x00c8 }
            r5.a = r7     // Catch:{ IOException -> 0x00c8 }
            r5.b = r6     // Catch:{ IOException -> 0x00c8 }
            java.lang.String r6 = r10.i     // Catch:{ IOException -> 0x00c8 }
            r5.c = r6     // Catch:{ IOException -> 0x00c8 }
            r5.d = r0     // Catch:{ IOException -> 0x00c8 }
            if (r4 == 0) goto L_0x00e7
            r4.close()     // Catch:{ Throwable -> 0x011f }
        L_0x00e7:
            if (r3 == 0) goto L_0x00ec
            r3.close()     // Catch:{ Throwable -> 0x0128 }
        L_0x00ec:
            if (r1 == 0) goto L_0x00f1
            r1.close()     // Catch:{ Throwable -> 0x0131 }
        L_0x00f1:
            if (r2 == 0) goto L_0x00f6
            r2.close()     // Catch:{ Throwable -> 0x013a }
        L_0x00f6:
            return r5
        L_0x00f7:
            r4 = move-exception
            java.lang.String r5 = "ht"
            java.lang.String r6 = "par"
            com.amap.api.col.sl.cj.a(r4, r5, r6)
            goto L_0x007c
        L_0x0101:
            r3 = move-exception
            java.lang.String r4 = "ht"
            java.lang.String r5 = "par"
            com.amap.api.col.sl.cj.a(r3, r4, r5)
            goto L_0x0081
        L_0x010b:
            r2 = move-exception
            java.lang.String r3 = "ht"
            java.lang.String r4 = "par"
            com.amap.api.col.sl.cj.a(r2, r3, r4)
            goto L_0x0086
        L_0x0115:
            r1 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "par"
            com.amap.api.col.sl.cj.a(r1, r2, r3)
            goto L_0x008b
        L_0x011f:
            r0 = move-exception
            java.lang.String r4 = "ht"
            java.lang.String r6 = "par"
            com.amap.api.col.sl.cj.a(r0, r4, r6)
            goto L_0x00e7
        L_0x0128:
            r0 = move-exception
            java.lang.String r3 = "ht"
            java.lang.String r4 = "par"
            com.amap.api.col.sl.cj.a(r0, r3, r4)
            goto L_0x00ec
        L_0x0131:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r3 = "par"
            com.amap.api.col.sl.cj.a(r0, r1, r3)
            goto L_0x00f1
        L_0x013a:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r2 = "par"
            com.amap.api.col.sl.cj.a(r0, r1, r2)
            goto L_0x00f6
        L_0x0143:
            r0 = move-exception
            r1 = r2
            r3 = r2
            r4 = r2
            goto L_0x0077
        L_0x0149:
            r0 = move-exception
            r1 = r2
            r3 = r2
            goto L_0x0077
        L_0x014e:
            r0 = move-exception
            r1 = r2
            goto L_0x0077
        L_0x0152:
            r0 = move-exception
            r9 = r1
            r1 = r2
            r2 = r9
            goto L_0x0077
        L_0x0158:
            r0 = move-exception
            r0 = r1
            r3 = r2
            r4 = r2
            r1 = r2
            goto L_0x006b
        L_0x015f:
            r1 = move-exception
            r1 = r2
            r3 = r2
            goto L_0x006b
        L_0x0164:
            r1 = move-exception
            r1 = r2
            goto L_0x006b
        L_0x0168:
            r0 = r1
            goto L_0x0027
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.dq.a(java.net.HttpURLConnection):com.amap.api.col.sl.du");
    }

    private void a(Map<String, String> map, HttpURLConnection httpURLConnection) {
        if (map != null) {
            for (String str : map.keySet()) {
                httpURLConnection.addRequestProperty(str, (String) map.get(str));
            }
        }
        try {
            httpURLConnection.addRequestProperty("csid", this.i);
        } catch (Throwable th) {
            cj.a(th, "ht", "adh");
        }
        httpURLConnection.setConnectTimeout(this.a);
        httpURLConnection.setReadTimeout(this.b);
    }

    static String a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (str2 == null) {
                str2 = "";
            }
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(URLEncoder.encode(str));
            sb.append("=");
            sb.append(URLEncoder.encode(str2));
        }
        return sb.toString();
    }
}
