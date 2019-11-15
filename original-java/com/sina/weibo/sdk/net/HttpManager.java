package com.sina.weibo.sdk.net;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.account.UserInfo;
import com.mi.milinkforgame.sdk.data.Const.ServerPort;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.exception.WeiboHttpException;
import com.sina.weibo.sdk.utils.c;
import com.sina.weibo.sdk.utils.i;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

public class HttpManager {
    private static final String a = b();
    private static final String b = ("--" + a);
    private static final String c = ("--" + a + "--");
    private static SSLSocketFactory d;

    private static native String calcOauthSignNative(Context context, String str, String str2);

    static {
        System.loadLibrary("weibosdkcore");
    }

    public static String a(Context context, String str, String str2, f fVar) throws WeiboException {
        String a2 = a(c(context, str, str2, fVar));
        c.a("HttpManager", "Response : " + a2);
        return a2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x007a A[SYNTHETIC, Splitter:B:19:0x007a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static org.apache.http.HttpResponse c(android.content.Context r7, java.lang.String r8, java.lang.String r9, com.sina.weibo.sdk.net.f r10) {
        /*
            r1 = 0
            org.apache.http.client.HttpClient r3 = a()     // Catch:{ IOException -> 0x0145, all -> 0x0141 }
            org.apache.http.params.HttpParams r0 = r3.getParams()     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r2 = "http.route.default-proxy"
            org.apache.http.HttpHost r4 = com.sina.weibo.sdk.net.NetStateManager.a()     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            r0.setParameter(r2, r4)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            a(r7, r10)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r0 = "GET"
            boolean r0 = r9.equals(r0)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            if (r0 == 0) goto L_0x0081
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r2 = java.lang.String.valueOf(r8)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            r0.<init>(r2)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r2 = "?"
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r2 = r10.c()     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r2 = r0.toString()     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            org.apache.http.client.methods.HttpGet r0 = new org.apache.http.client.methods.HttpGet     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            r0.<init>(r2)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r4 = "HttpManager"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r6 = "requestHttpExecute GET Url : "
            r5.<init>(r6)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.StringBuilder r2 = r5.append(r2)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r2 = r2.toString()     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            com.sina.weibo.sdk.utils.c.a(r4, r2)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
        L_0x0051:
            org.apache.http.HttpResponse r0 = r3.execute(r0)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            org.apache.http.StatusLine r2 = r0.getStatusLine()     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            int r2 = r2.getStatusCode()     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            r4 = 200(0xc8, float:2.8E-43)
            if (r2 == r4) goto L_0x0133
            java.lang.String r0 = a(r0)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            com.sina.weibo.sdk.exception.WeiboHttpException r4 = new com.sina.weibo.sdk.exception.WeiboHttpException     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            r4.<init>(r0, r2)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            throw r4     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
        L_0x006b:
            r0 = move-exception
            r2 = r3
        L_0x006d:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0076 }
            com.sina.weibo.sdk.exception.WeiboException r3 = new com.sina.weibo.sdk.exception.WeiboException     // Catch:{ all -> 0x0076 }
            r3.<init>(r0)     // Catch:{ all -> 0x0076 }
            throw r3     // Catch:{ all -> 0x0076 }
        L_0x0076:
            r0 = move-exception
            r3 = r2
        L_0x0078:
            if (r1 == 0) goto L_0x007d
            r1.close()     // Catch:{ IOException -> 0x013c }
        L_0x007d:
            a(r3)
            throw r0
        L_0x0081:
            java.lang.String r0 = "POST"
            boolean r0 = r9.equals(r0)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            if (r0 == 0) goto L_0x0121
            java.lang.String r0 = "HttpManager"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r4 = "requestHttpExecute POST Url : "
            r2.<init>(r4)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.StringBuilder r2 = r2.append(r8)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.lang.String r2 = r2.toString()     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            com.sina.weibo.sdk.utils.c.a(r0, r2)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            org.apache.http.client.methods.HttpPost r4 = new org.apache.http.client.methods.HttpPost     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            r4.<init>(r8)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            r2.<init>()     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            boolean r0 = r10.d()     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            if (r0 == 0) goto L_0x00d6
            java.lang.String r0 = "Content-Type"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            java.lang.String r5 = "multipart/form-data; boundary="
            r1.<init>(r5)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            java.lang.String r5 = a     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            java.lang.StringBuilder r1 = r1.append(r5)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            java.lang.String r1 = r1.toString()     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            r4.setHeader(r0, r1)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            a(r2, r10)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
        L_0x00c6:
            org.apache.http.entity.ByteArrayEntity r0 = new org.apache.http.entity.ByteArrayEntity     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            byte[] r1 = r2.toByteArray()     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            r0.<init>(r1)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            r4.setEntity(r0)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            r0 = r4
            r1 = r2
            goto L_0x0051
        L_0x00d6:
            java.lang.String r0 = "content-type"
            java.lang.Object r0 = r10.a(r0)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            if (r0 == 0) goto L_0x0115
            boolean r1 = r0 instanceof java.lang.String     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            if (r1 == 0) goto L_0x0115
            java.lang.String r1 = "content-type"
            r10.b(r1)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            java.lang.String r1 = "Content-Type"
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            r4.setHeader(r1, r0)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
        L_0x00ee:
            java.lang.String r0 = r10.c()     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            java.lang.String r1 = "HttpManager"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            java.lang.String r6 = "requestHttpExecute POST postParam : "
            r5.<init>(r6)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            java.lang.StringBuilder r5 = r5.append(r0)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            java.lang.String r5 = r5.toString()     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            com.sina.weibo.sdk.utils.c.a(r1, r5)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            java.lang.String r1 = "UTF-8"
            byte[] r0 = r0.getBytes(r1)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            r2.write(r0)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            goto L_0x00c6
        L_0x0110:
            r0 = move-exception
            r1 = r2
            r2 = r3
            goto L_0x006d
        L_0x0115:
            java.lang.String r0 = "Content-Type"
            java.lang.String r1 = "application/x-www-form-urlencoded"
            r4.setHeader(r0, r1)     // Catch:{ IOException -> 0x0110, all -> 0x011d }
            goto L_0x00ee
        L_0x011d:
            r0 = move-exception
            r1 = r2
            goto L_0x0078
        L_0x0121:
            java.lang.String r0 = "DELETE"
            boolean r0 = r9.equals(r0)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            if (r0 == 0) goto L_0x0149
            org.apache.http.client.methods.HttpDelete r0 = new org.apache.http.client.methods.HttpDelete     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            r0.<init>(r8)     // Catch:{ IOException -> 0x006b, all -> 0x0130 }
            goto L_0x0051
        L_0x0130:
            r0 = move-exception
            goto L_0x0078
        L_0x0133:
            if (r1 == 0) goto L_0x0138
            r1.close()     // Catch:{ IOException -> 0x013f }
        L_0x0138:
            a(r3)
            return r0
        L_0x013c:
            r1 = move-exception
            goto L_0x007d
        L_0x013f:
            r1 = move-exception
            goto L_0x0138
        L_0x0141:
            r0 = move-exception
            r3 = r1
            goto L_0x0078
        L_0x0145:
            r0 = move-exception
            r2 = r1
            goto L_0x006d
        L_0x0149:
            r0 = r1
            goto L_0x0051
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.net.HttpManager.c(android.content.Context, java.lang.String, java.lang.String, com.sina.weibo.sdk.net.f):org.apache.http.HttpResponse");
    }

    private static void a(Context context, f fVar) {
        String str = "";
        if (!TextUtils.isEmpty(fVar.a())) {
            str = i.b(context, fVar.a());
            if (!TextUtils.isEmpty(str)) {
                fVar.a("aid", str);
            }
        }
        String str2 = str;
        String d2 = d();
        fVar.a("oauth_timestamp", d2);
        String str3 = "";
        Object a2 = fVar.a("access_token");
        Object a3 = fVar.a("refresh_token");
        Object a4 = fVar.a(UserInfo.TYPE_PHONE);
        String str4 = (a2 == null || !(a2 instanceof String)) ? (a3 == null || !(a3 instanceof String)) ? (a4 == null || !(a4 instanceof String)) ? str3 : (String) a4 : (String) a3 : (String) a2;
        fVar.a("oauth_sign", a(context, str2, str4, fVar.a(), d2));
    }

    public static void a(HttpClient httpClient) {
        if (httpClient != null) {
            try {
                httpClient.getConnectionManager().closeExpiredConnections();
            } catch (Exception e) {
            }
        }
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r1v1, types: [org.apache.http.client.HttpClient] */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r0v5, types: [org.apache.http.impl.client.DefaultHttpClient, org.apache.http.client.HttpClient] */
    /* JADX WARNING: type inference failed for: r1v4 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r1v7, types: [org.apache.http.client.methods.HttpPost] */
    /* JADX WARNING: type inference failed for: r1v8, types: [org.apache.http.client.methods.HttpUriRequest] */
    /* JADX WARNING: type inference failed for: r1v13, types: [org.apache.http.client.methods.HttpGet] */
    /* JADX WARNING: type inference failed for: r1v14 */
    /* JADX WARNING: type inference failed for: r1v15 */
    /* JADX WARNING: type inference failed for: r1v16 */
    /* JADX WARNING: type inference failed for: r1v17 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r1v2
  assigns: []
  uses: []
  mth insns count: 50
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
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 6 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String b(android.content.Context r7, java.lang.String r8, java.lang.String r9, com.sina.weibo.sdk.net.f r10) {
        /*
            r1 = 0
            com.sina.weibo.sdk.net.HttpManager$1 r2 = new com.sina.weibo.sdk.net.HttpManager$1     // Catch:{ IOException -> 0x007d }
            r2.<init>()     // Catch:{ IOException -> 0x007d }
            org.apache.http.client.HttpClient r0 = a()     // Catch:{ IOException -> 0x007d }
            org.apache.http.impl.client.DefaultHttpClient r0 = (org.apache.http.impl.client.DefaultHttpClient) r0     // Catch:{ IOException -> 0x007d }
            r0.setRedirectHandler(r2)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            a(r7, r10)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            org.apache.http.params.HttpParams r3 = r0.getParams()     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            java.lang.String r4 = "http.route.default-proxy"
            org.apache.http.HttpHost r5 = com.sina.weibo.sdk.net.NetStateManager.a()     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            r3.setParameter(r4, r5)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            java.lang.String r3 = "GET"
            boolean r3 = r9.equals(r3)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            if (r3 == 0) goto L_0x005b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            java.lang.String r3 = java.lang.String.valueOf(r8)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            r1.<init>(r3)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            java.lang.String r3 = "?"
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            java.lang.String r3 = r10.c()     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            java.lang.String r3 = r1.toString()     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            org.apache.http.client.methods.HttpGet r1 = new org.apache.http.client.methods.HttpGet     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            r1.<init>(r3)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
        L_0x0047:
            java.lang.String r3 = "User-Agent"
            java.lang.String r4 = com.sina.weibo.sdk.utils.e.e(r7)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            r1.setHeader(r3, r4)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            r0.execute(r1)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            java.lang.String r1 = r2.b()     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            a(r0)
            return r1
        L_0x005b:
            java.lang.String r3 = "POST"
            boolean r3 = r9.equals(r3)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            if (r3 == 0) goto L_0x0047
            org.apache.http.client.methods.HttpPost r1 = new org.apache.http.client.methods.HttpPost     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            r1.<init>(r8)     // Catch:{ IOException -> 0x0069, all -> 0x0078 }
            goto L_0x0047
        L_0x0069:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L_0x006d:
            com.sina.weibo.sdk.exception.WeiboException r2 = new com.sina.weibo.sdk.exception.WeiboException     // Catch:{ all -> 0x0073 }
            r2.<init>(r0)     // Catch:{ all -> 0x0073 }
            throw r2     // Catch:{ all -> 0x0073 }
        L_0x0073:
            r0 = move-exception
        L_0x0074:
            a(r1)
            throw r0
        L_0x0078:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L_0x0074
        L_0x007d:
            r0 = move-exception
            goto L_0x006d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.net.HttpManager.b(android.content.Context, java.lang.String, java.lang.String, com.sina.weibo.sdk.net.f):java.lang.String");
    }

    public static synchronized String a(Context context, String str, String str2, String str3) throws WeiboException {
        String str4;
        long j;
        long j2;
        InputStream content;
        synchronized (HttpManager.class) {
            File file = new File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, str3);
            if (file2.exists()) {
                str4 = file2.getPath();
            } else if (!URLUtil.isValidUrl(str)) {
                str4 = "";
            } else {
                HttpClient a2 = a();
                long j3 = 0;
                File file3 = new File(str2, new StringBuilder(String.valueOf(str3)).append("_temp").toString());
                try {
                    if (file3.exists()) {
                        j3 = file3.length();
                    } else {
                        file3.createNewFile();
                    }
                    HttpGet httpGet = new HttpGet(str);
                    httpGet.setHeader("RANGE", "bytes=" + j3 + "-");
                    HttpResponse execute = a2.execute(httpGet);
                    int statusCode = execute.getStatusLine().getStatusCode();
                    if (statusCode == 206) {
                        Header[] headers = execute.getHeaders(Names.CONTENT_RANGE);
                        if (!(headers == null || headers.length == 0)) {
                            String value = headers[0].getValue();
                            j = Long.parseLong(value.substring(value.indexOf(47) + 1));
                            j2 = j3;
                        }
                        j = 0;
                        j2 = j3;
                    } else if (statusCode == 200) {
                        j3 = 0;
                        Header firstHeader = execute.getFirstHeader("Content-Length");
                        if (firstHeader != null) {
                            j = (long) Integer.valueOf(firstHeader.getValue()).intValue();
                            j2 = 0;
                        }
                        j = 0;
                        j2 = j3;
                    } else {
                        throw new WeiboHttpException(a(execute), statusCode);
                    }
                    HttpEntity entity = execute.getEntity();
                    Header firstHeader2 = execute.getFirstHeader("Content-Encoding");
                    if (firstHeader2 == null || firstHeader2.getValue().toLowerCase().indexOf("gzip") <= -1) {
                        content = entity.getContent();
                    } else {
                        content = new GZIPInputStream(entity.getContent());
                    }
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
                    randomAccessFile.seek(j2);
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = content.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        randomAccessFile.write(bArr, 0, read);
                    }
                    randomAccessFile.close();
                    content.close();
                    if (j == 0 || file3.length() < j) {
                        file3.delete();
                        if (a2 != null) {
                            a2.getConnectionManager().closeExpiredConnections();
                            a2.getConnectionManager().closeIdleConnections(300, TimeUnit.SECONDS);
                        }
                        str4 = "";
                    } else {
                        file3.renameTo(file2);
                        str4 = file2.getPath();
                        if (a2 != null) {
                            a2.getConnectionManager().closeExpiredConnections();
                            a2.getConnectionManager().closeIdleConnections(300, TimeUnit.SECONDS);
                        }
                    }
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                    file3.delete();
                    if (a2 != null) {
                        a2.getConnectionManager().closeExpiredConnections();
                        a2.getConnectionManager().closeIdleConnections(300, TimeUnit.SECONDS);
                    }
                } catch (Throwable th) {
                    if (a2 != null) {
                        a2.getConnectionManager().closeExpiredConnections();
                        a2.getConnectionManager().closeIdleConnections(300, TimeUnit.SECONDS);
                    }
                    throw th;
                }
            }
        }
        return str4;
    }

    public static HttpClient a() {
        try {
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme(HttpHost.DEFAULT_SCHEME_NAME, PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", c(), ServerPort.PORT_443));
            ThreadSafeClientConnManager threadSafeClientConnManager = new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 25000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
            return new DefaultHttpClient(threadSafeClientConnManager, basicHttpParams);
        } catch (Exception e) {
            return new DefaultHttpClient();
        }
    }

    public static void a(OutputStream outputStream, f fVar) throws WeiboException {
        try {
            Set<String> b2 = fVar.b();
            for (String str : b2) {
                if (fVar.a(str) instanceof String) {
                    StringBuilder sb = new StringBuilder(100);
                    sb.setLength(0);
                    sb.append(b).append("\r\n");
                    sb.append("content-disposition: form-data; name=\"").append(str).append("\"\r\n\r\n");
                    sb.append(fVar.a(str)).append("\r\n");
                    outputStream.write(sb.toString().getBytes());
                }
            }
            for (String str2 : b2) {
                Object a2 = fVar.a(str2);
                if (a2 instanceof Bitmap) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(b).append("\r\n");
                    sb2.append("content-disposition: form-data; name=\"").append(str2).append("\"; filename=\"file\"\r\n");
                    sb2.append("Content-Type: application/octet-stream; charset=utf-8\r\n\r\n");
                    outputStream.write(sb2.toString().getBytes());
                    Bitmap bitmap = (Bitmap) a2;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(CompressFormat.PNG, 100, byteArrayOutputStream);
                    outputStream.write(byteArrayOutputStream.toByteArray());
                    outputStream.write("\r\n".getBytes());
                } else if (a2 instanceof ByteArrayOutputStream) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(b).append("\r\n");
                    sb3.append("content-disposition: form-data; name=\"").append(str2).append("\"; filename=\"file\"\r\n");
                    sb3.append("Content-Type: application/octet-stream; charset=utf-8\r\n\r\n");
                    outputStream.write(sb3.toString().getBytes());
                    ByteArrayOutputStream byteArrayOutputStream2 = (ByteArrayOutputStream) a2;
                    outputStream.write(byteArrayOutputStream2.toByteArray());
                    outputStream.write("\r\n".getBytes());
                    byteArrayOutputStream2.close();
                }
            }
            outputStream.write(("\r\n" + c).getBytes());
        } catch (IOException e) {
            throw new WeiboException((Throwable) e);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0078 A[SYNTHETIC, Splitter:B:34:0x0078] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x007d A[SYNTHETIC, Splitter:B:37:0x007d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(org.apache.http.HttpResponse r7) throws com.sina.weibo.sdk.exception.WeiboException {
        /*
            r0 = 0
            r5 = -1
            if (r7 != 0) goto L_0x0005
        L_0x0004:
            return r0
        L_0x0005:
            org.apache.http.HttpEntity r1 = r7.getEntity()
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream
            r2.<init>()
            java.io.InputStream r1 = r1.getContent()     // Catch:{ IOException -> 0x0095, all -> 0x0090 }
            java.lang.String r0 = "Content-Encoding"
            org.apache.http.Header r0 = r7.getFirstHeader(r0)     // Catch:{ IOException -> 0x006e }
            if (r0 == 0) goto L_0x0030
            java.lang.String r0 = r0.getValue()     // Catch:{ IOException -> 0x006e }
            java.lang.String r0 = r0.toLowerCase()     // Catch:{ IOException -> 0x006e }
            java.lang.String r3 = "gzip"
            int r0 = r0.indexOf(r3)     // Catch:{ IOException -> 0x006e }
            if (r0 <= r5) goto L_0x0030
            java.util.zip.GZIPInputStream r0 = new java.util.zip.GZIPInputStream     // Catch:{ IOException -> 0x006e }
            r0.<init>(r1)     // Catch:{ IOException -> 0x006e }
            r1 = r0
        L_0x0030:
            r0 = 8192(0x2000, float:1.14794E-41)
            byte[] r0 = new byte[r0]     // Catch:{ IOException -> 0x006e }
        L_0x0034:
            int r3 = r1.read(r0)     // Catch:{ IOException -> 0x006e }
            if (r3 != r5) goto L_0x0069
            java.lang.String r0 = new java.lang.String     // Catch:{ IOException -> 0x006e }
            byte[] r3 = r2.toByteArray()     // Catch:{ IOException -> 0x006e }
            java.lang.String r4 = "UTF-8"
            r0.<init>(r3, r4)     // Catch:{ IOException -> 0x006e }
            java.lang.String r3 = "HttpManager"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x006e }
            java.lang.String r5 = "readRsponse result : "
            r4.<init>(r5)     // Catch:{ IOException -> 0x006e }
            java.lang.StringBuilder r4 = r4.append(r0)     // Catch:{ IOException -> 0x006e }
            java.lang.String r4 = r4.toString()     // Catch:{ IOException -> 0x006e }
            com.sina.weibo.sdk.utils.c.a(r3, r4)     // Catch:{ IOException -> 0x006e }
            if (r1 == 0) goto L_0x005e
            r1.close()     // Catch:{ IOException -> 0x0081 }
        L_0x005e:
            if (r2 == 0) goto L_0x0004
            r2.close()     // Catch:{ IOException -> 0x0064 }
            goto L_0x0004
        L_0x0064:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0004
        L_0x0069:
            r4 = 0
            r2.write(r0, r4, r3)     // Catch:{ IOException -> 0x006e }
            goto L_0x0034
        L_0x006e:
            r0 = move-exception
        L_0x006f:
            com.sina.weibo.sdk.exception.WeiboException r3 = new com.sina.weibo.sdk.exception.WeiboException     // Catch:{ all -> 0x0075 }
            r3.<init>(r0)     // Catch:{ all -> 0x0075 }
            throw r3     // Catch:{ all -> 0x0075 }
        L_0x0075:
            r0 = move-exception
        L_0x0076:
            if (r1 == 0) goto L_0x007b
            r1.close()     // Catch:{ IOException -> 0x0086 }
        L_0x007b:
            if (r2 == 0) goto L_0x0080
            r2.close()     // Catch:{ IOException -> 0x008b }
        L_0x0080:
            throw r0
        L_0x0081:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x005e
        L_0x0086:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x007b
        L_0x008b:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0080
        L_0x0090:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L_0x0076
        L_0x0095:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L_0x006f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.net.HttpManager.a(org.apache.http.HttpResponse):java.lang.String");
    }

    public static String b() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 1; i < 12; i++) {
            long currentTimeMillis = System.currentTimeMillis() + ((long) i);
            if (currentTimeMillis % 3 == 0) {
                stringBuffer.append(((char) ((int) currentTimeMillis)) % 9);
            } else if (currentTimeMillis % 3 == 1) {
                stringBuffer.append((char) ((int) ((currentTimeMillis % 26) + 65)));
            } else {
                stringBuffer.append((char) ((int) ((currentTimeMillis % 26) + 97)));
            }
        }
        return stringBuffer.toString();
    }

    private static SSLSocketFactory c() {
        if (d == null) {
            try {
                KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
                instance.load(null, null);
                Certificate a2 = a("cacert_cn.cer");
                Certificate a3 = a("cacert_com.cer");
                instance.setCertificateEntry("cnca", a2);
                instance.setCertificateEntry("comca", a3);
                d = new e(instance);
                c.a("HttpManager", "getSSLSocketFactory noraml !!!!!");
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
                d = SSLSocketFactory.getSocketFactory();
                c.a("HttpManager", "getSSLSocketFactory error default !!!!!");
            }
        }
        return d;
    }

    private static Certificate a(String str) throws CertificateException, IOException {
        CertificateFactory instance = CertificateFactory.getInstance("X.509");
        InputStream resourceAsStream = HttpManager.class.getResourceAsStream(str);
        try {
            return instance.generateCertificate(resourceAsStream);
        } finally {
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
        }
    }

    private static String d() {
        return String.valueOf(System.currentTimeMillis() / 1000);
    }

    private static String a(Context context, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder("");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
        }
        return calcOauthSignNative(context, sb.toString(), str4);
    }
}
