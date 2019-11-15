package com.mi.milinkforgame.sdk.base.os;

import android.net.Proxy;

public class Http {
    public static final int DEFAULT_CONNECT_TIMEOUT = 60000;
    public static final int DEFAULT_READ_TIMEOUT = 60000;
    public static final String GET = "GET";
    public static final String GZIP = "gzip";
    public static final String HEADER_CONTENT_ENCODING = "Content-Encoding";
    public static final String HEADER_HOST = "Host";
    public static final String HEADER_X_ONLINE_HOST = "X-Online-Host";
    public static final int HTTP_CLIENT_ERROR = 400;
    public static final int HTTP_CODE_ERROR = 4096;
    public static final int HTTP_CONNECT_ERROR = 1024;
    public static final int HTTP_REDIRECT = 300;
    public static final int HTTP_SERVER_ERROR = 500;
    public static final int HTTP_SUCCESS = 200;
    public static final int HTTP_URL_NOT_AVALIBLE = 2048;
    public static final String POST = "POST";
    public static final char PROTOCOL_HOST_SPLITTER = '/';
    public static final char PROTOCOL_PORT_SPLITTER = ':';
    public static final String PROTOCOL_PREFIX = "http://";
    public static final int PROTOCOL_PREFIX_LENGTH = PROTOCOL_PREFIX.length();

    public static abstract class HttpProxy {
        public static HttpProxy Default = new HttpProxy() {
            public int getPort() {
                return Proxy.getDefaultPort();
            }

            public String getHost() {
                return Proxy.getDefaultHost();
            }
        };

        public abstract String getHost();

        public abstract int getPort();

        public String toString() {
            return getHost() + Http.PROTOCOL_PORT_SPLITTER + getPort();
        }
    }

    public enum HttpProxyMode {
        NeverTry,
        Direct,
        ViaProxy
    }

    public static boolean isSuccess(int i) {
        return i >= 200 && i < 299;
    }

    public static String[] splitUrl(String str) {
        String[] strArr = new String[2];
        if (str == null || str.length() < PROTOCOL_PREFIX_LENGTH) {
            return strArr;
        }
        if (!str.toLowerCase().startsWith(PROTOCOL_PREFIX)) {
            str = PROTOCOL_PREFIX.concat(str);
        }
        int indexOf = str.indexOf(47, PROTOCOL_PREFIX_LENGTH);
        if (indexOf <= PROTOCOL_PREFIX_LENGTH) {
            indexOf = str.length();
        }
        strArr[0] = str.substring(PROTOCOL_PREFIX_LENGTH, indexOf);
        if (indexOf < str.length()) {
            strArr[1] = str.substring(indexOf, str.length());
        } else {
            strArr[1] = "";
        }
        return strArr;
    }

    public static int doRequest(String str, String str2, String str3, boolean z, HttpProxy httpProxy) {
        return doRequest(str, str2, str3, z, httpProxy, 60000, 60000);
    }

    public static int doRequest(String str, String str2, byte[] bArr, boolean z, HttpProxy httpProxy) {
        return doRequest(str, str2, bArr, z, httpProxy, 60000, 60000);
    }

    public static int doRequest(String str, String str2, String str3, boolean z, HttpProxy httpProxy, int i, int i2) {
        return doRequest(str, str2, str3 == null ? null : str3.getBytes(), z, httpProxy, i, i2);
    }

    public static int doRequest(String str, String str2, byte[] bArr, boolean z, HttpProxy httpProxy, int i, int i2) {
        return doRequest(str, str2, bArr, z, httpProxy, i, i2, (String) null);
    }

    public static int doRequest(String str, String str2, String str3, boolean z, HttpProxy httpProxy, int i, int i2, String str4) {
        return doRequest(str, str2, str3 == null ? null : str3.getBytes(), z, httpProxy, i, i2, str4);
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00bd  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int doRequest(java.lang.String r6, java.lang.String r7, byte[] r8, boolean r9, com.mi.milinkforgame.sdk.base.os.Http.HttpProxy r10, int r11, int r12, java.lang.String r13) {
        /*
            r1 = 0
            if (r10 == 0) goto L_0x00d6
            java.lang.String[] r0 = splitUrl(r6)     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            r2.<init>()     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            java.lang.String r3 = r10.toString()     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            r3 = 1
            r3 = r0[r3]     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            java.lang.String r6 = r2.toString()     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            r2 = r0
            r0 = r6
        L_0x0021:
            java.lang.String r3 = r0.toLowerCase()     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            java.lang.String r4 = "http://"
            boolean r3 = r3.startsWith(r4)     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            if (r3 == 0) goto L_0x008e
        L_0x002d:
            java.net.URL r3 = new java.net.URL     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            r3.<init>(r0)     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            java.net.URLConnection r0 = r3.openConnection()     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            r0.setReadTimeout(r12)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r0.setConnectTimeout(r11)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r1 = 0
            r0.setUseCaches(r1)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r0.setRequestMethod(r7)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r1 = 1
            r0.setDoInput(r1)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            if (r13 == 0) goto L_0x0056
            int r1 = r13.length()     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            if (r1 <= 0) goto L_0x0056
            java.lang.String r1 = "Host"
            r0.setRequestProperty(r1, r13)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
        L_0x0056:
            if (r9 == 0) goto L_0x005f
            java.lang.String r1 = "Content-Encoding"
            java.lang.String r3 = "gzip"
            r0.setRequestProperty(r1, r3)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
        L_0x005f:
            if (r10 == 0) goto L_0x0069
            java.lang.String r1 = "X-Online-Host"
            r3 = 0
            r2 = r2[r3]     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r0.setRequestProperty(r1, r2)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
        L_0x0069:
            if (r8 == 0) goto L_0x00a9
            r1 = 1
            r0.setDoOutput(r1)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            java.io.OutputStream r1 = r0.getOutputStream()     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            if (r9 == 0) goto L_0x0095
            java.util.zip.GZIPOutputStream r2 = new java.util.zip.GZIPOutputStream     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r2.<init>(r1)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r2.write(r8)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r2.flush()     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r2.close()     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
        L_0x0083:
            int r1 = r0.getResponseCode()     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            if (r0 == 0) goto L_0x00d4
            r0.disconnect()
            r0 = r1
        L_0x008d:
            return r0
        L_0x008e:
            java.lang.String r3 = "http://"
            java.lang.String r0 = r3.concat(r0)     // Catch:{ MalformedURLException -> 0x00d2, IOException -> 0x00d0, Exception -> 0x00b8, all -> 0x00c1 }
            goto L_0x002d
        L_0x0095:
            r1.write(r8)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r1.flush()     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            r1.close()     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            goto L_0x0083
        L_0x009f:
            r1 = move-exception
            r1 = r0
        L_0x00a1:
            r0 = 2048(0x800, float:2.87E-42)
            if (r1 == 0) goto L_0x008d
            r1.disconnect()
            goto L_0x008d
        L_0x00a9:
            r1 = 0
            r0.setDoOutput(r1)     // Catch:{ MalformedURLException -> 0x009f, IOException -> 0x00ae, Exception -> 0x00cd, all -> 0x00c8 }
            goto L_0x0083
        L_0x00ae:
            r1 = move-exception
            r1 = r0
        L_0x00b0:
            r0 = 1024(0x400, float:1.435E-42)
            if (r1 == 0) goto L_0x008d
            r1.disconnect()
            goto L_0x008d
        L_0x00b8:
            r0 = move-exception
        L_0x00b9:
            r0 = 4096(0x1000, float:5.74E-42)
            if (r1 == 0) goto L_0x008d
            r1.disconnect()
            goto L_0x008d
        L_0x00c1:
            r0 = move-exception
        L_0x00c2:
            if (r1 == 0) goto L_0x00c7
            r1.disconnect()
        L_0x00c7:
            throw r0
        L_0x00c8:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L_0x00c2
        L_0x00cd:
            r1 = move-exception
            r1 = r0
            goto L_0x00b9
        L_0x00d0:
            r0 = move-exception
            goto L_0x00b0
        L_0x00d2:
            r0 = move-exception
            goto L_0x00a1
        L_0x00d4:
            r0 = r1
            goto L_0x008d
        L_0x00d6:
            r2 = r1
            r0 = r6
            goto L_0x0021
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.base.os.Http.doRequest(java.lang.String, java.lang.String, byte[], boolean, com.mi.milinkforgame.sdk.base.os.Http$HttpProxy, int, int, java.lang.String):int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00e8  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00f3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int download(java.lang.String r10, java.io.File r11) {
        /*
            r2 = 0
            boolean r0 = com.mi.milinkforgame.sdk.base.os.Device.Network.isWap()
            if (r0 == 0) goto L_0x00ba
            com.mi.milinkforgame.sdk.base.os.Http$HttpProxy r0 = com.mi.milinkforgame.sdk.base.os.Http.HttpProxy.Default
            r1 = r0
        L_0x000a:
            if (r1 == 0) goto L_0x011c
            java.lang.String[] r0 = splitUrl(r10)     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            r3.<init>()     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            java.lang.String r4 = r1.toString()     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            r4 = 1
            r4 = r0[r4]     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            java.lang.String r10 = r3.toString()     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            r3 = r0
            r0 = r10
        L_0x002a:
            java.lang.String r4 = r0.toLowerCase()     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            java.lang.String r5 = "http://"
            boolean r4 = r4.startsWith(r5)     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            if (r4 == 0) goto L_0x00bd
        L_0x0036:
            java.net.URL r4 = new java.net.URL     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            r4.<init>(r0)     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            java.net.URLConnection r0 = r4.openConnection()     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            r4 = 30000(0x7530, float:4.2039E-41)
            r0.setReadTimeout(r4)     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            r4 = 15000(0x3a98, float:2.102E-41)
            r0.setConnectTimeout(r4)     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            java.lang.String r4 = "GET"
            r0.setRequestMethod(r4)     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            r4 = 1
            r0.setDoInput(r4)     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            if (r1 == 0) goto L_0x005e
            java.lang.String r1 = "X-Online-Host"
            r4 = 0
            r3 = r3[r4]     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            r0.setRequestProperty(r1, r3)     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
        L_0x005e:
            int r3 = r0.getResponseCode()     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            boolean r1 = isSuccess(r3)     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            if (r1 == 0) goto L_0x011a
            java.io.BufferedOutputStream r1 = new java.io.BufferedOutputStream     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            r5 = 1
            r4.<init>(r11, r5)     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            r1.<init>(r4)     // Catch:{ IOException -> 0x0112, Exception -> 0x0103, all -> 0x00f7 }
            java.io.InputStream r4 = r0.getInputStream()     // Catch:{ IOException -> 0x0089, Exception -> 0x0108, all -> 0x00fb }
            r5 = 8192(0x2000, float:1.14794E-41)
            byte[] r5 = new byte[r5]     // Catch:{ IOException -> 0x0089, Exception -> 0x0108, all -> 0x00fb }
        L_0x007b:
            r6 = -1
            r7 = 0
            int r8 = r5.length     // Catch:{ IOException -> 0x0089, Exception -> 0x0108, all -> 0x00fb }
            int r7 = r4.read(r5, r7, r8)     // Catch:{ IOException -> 0x0089, Exception -> 0x0108, all -> 0x00fb }
            if (r6 == r7) goto L_0x00c5
            r6 = 0
            r1.write(r5, r6, r7)     // Catch:{ IOException -> 0x0089, Exception -> 0x0108, all -> 0x00fb }
            goto L_0x007b
        L_0x0089:
            r3 = move-exception
            r9 = r3
            r3 = r0
            r0 = r9
        L_0x008d:
            r4 = 16
            java.lang.String r5 = "Http"
            java.lang.String r6 = "Download Failed"
            com.mi.milinkforgame.sdk.debug.MiLinkTracer.autoTrace(r4, r5, r6, r0)     // Catch:{ all -> 0x0100 }
            r0 = 1024(0x400, float:1.435E-42)
            com.mi.milinkforgame.sdk.util.CommonUtils.closeDataObject(r1)
            if (r3 == 0) goto L_0x00a0
            r3.disconnect()
        L_0x00a0:
            r1 = 4
            java.lang.String r3 = "Http"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Download Result = "
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.StringBuilder r4 = r4.append(r0)
            java.lang.String r4 = r4.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkTracer.autoTrace(r1, r3, r4, r2)
            return r0
        L_0x00ba:
            r1 = r2
            goto L_0x000a
        L_0x00bd:
            java.lang.String r4 = "http://"
            java.lang.String r0 = r4.concat(r0)     // Catch:{ IOException -> 0x010d, Exception -> 0x00d5, all -> 0x00ec }
            goto L_0x0036
        L_0x00c5:
            r1.flush()     // Catch:{ IOException -> 0x0089, Exception -> 0x0108, all -> 0x00fb }
            r1.close()     // Catch:{ IOException -> 0x0089, Exception -> 0x0108, all -> 0x00fb }
        L_0x00cb:
            com.mi.milinkforgame.sdk.util.CommonUtils.closeDataObject(r1)
            if (r0 == 0) goto L_0x0118
            r0.disconnect()
            r0 = r3
            goto L_0x00a0
        L_0x00d5:
            r0 = move-exception
            r1 = r2
            r3 = r2
        L_0x00d8:
            r4 = 16
            java.lang.String r5 = "Http"
            java.lang.String r6 = "Download Failed"
            com.mi.milinkforgame.sdk.debug.MiLinkTracer.autoTrace(r4, r5, r6, r0)     // Catch:{ all -> 0x0100 }
            r0 = 4096(0x1000, float:5.74E-42)
            com.mi.milinkforgame.sdk.util.CommonUtils.closeDataObject(r1)
            if (r3 == 0) goto L_0x00a0
            r3.disconnect()
            goto L_0x00a0
        L_0x00ec:
            r0 = move-exception
            r3 = r2
        L_0x00ee:
            com.mi.milinkforgame.sdk.util.CommonUtils.closeDataObject(r2)
            if (r3 == 0) goto L_0x00f6
            r3.disconnect()
        L_0x00f6:
            throw r0
        L_0x00f7:
            r1 = move-exception
            r3 = r0
            r0 = r1
            goto L_0x00ee
        L_0x00fb:
            r2 = move-exception
            r3 = r0
            r0 = r2
            r2 = r1
            goto L_0x00ee
        L_0x0100:
            r0 = move-exception
            r2 = r1
            goto L_0x00ee
        L_0x0103:
            r1 = move-exception
            r3 = r0
            r0 = r1
            r1 = r2
            goto L_0x00d8
        L_0x0108:
            r3 = move-exception
            r9 = r3
            r3 = r0
            r0 = r9
            goto L_0x00d8
        L_0x010d:
            r0 = move-exception
            r1 = r2
            r3 = r2
            goto L_0x008d
        L_0x0112:
            r1 = move-exception
            r3 = r0
            r0 = r1
            r1 = r2
            goto L_0x008d
        L_0x0118:
            r0 = r3
            goto L_0x00a0
        L_0x011a:
            r1 = r2
            goto L_0x00cb
        L_0x011c:
            r3 = r2
            r0 = r10
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.base.os.Http.download(java.lang.String, java.io.File):int");
    }
}
