package com.tencent.open.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.data.Const.ServerPort;
import com.tencent.connect.auth.QQToken;
import com.tencent.open.a.f;
import com.tencent.tauth.IRequestListener;
import com.xiaomi.mipush.sdk.Constants;
import java.io.ByteArrayOutputStream;
import java.io.CharConversionException;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.InvalidObjectException;
import java.io.NotActiveException;
import java.io.NotSerializableException;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;
import java.io.SyncFailedException;
import java.io.UTFDataFormatException;
import java.io.UnsupportedEncodingException;
import java.io.WriteAbortedException;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileLockInterruptionException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.InvalidPropertiesFormatException;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.ConnectionClosedException;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HTTP;
import org.jboss.netty.handler.codec.spdy.SpdyHeaders.Spdy2HttpNames;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class HttpUtils {

    /* compiled from: ProGuard */
    public static class HttpStatusException extends Exception {
        public static final String ERROR_INFO = "http status code error:";

        public HttpStatusException(String str) {
            super(str);
        }
    }

    /* compiled from: ProGuard */
    public static class NetworkUnavailableException extends Exception {
        public static final String ERROR_INFO = "network unavailable";

        public NetworkUnavailableException(String str) {
            super(str);
        }
    }

    /* compiled from: ProGuard */
    public static class a extends SSLSocketFactory {
        private final SSLContext a = SSLContext.getInstance("TLS");

        public a(KeyStore keyStore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
            b bVar;
            super(keyStore);
            try {
                bVar = new b();
            } catch (Exception e) {
                bVar = null;
            }
            this.a.init(null, new TrustManager[]{bVar}, null);
        }

        public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException, UnknownHostException {
            return this.a.getSocketFactory().createSocket(socket, str, i, z);
        }

        public Socket createSocket() throws IOException {
            return this.a.getSocketFactory().createSocket();
        }
    }

    /* compiled from: ProGuard */
    public static class b implements X509TrustManager {
        X509TrustManager a;

        b() throws Exception {
            KeyStore keyStore;
            TrustManager[] trustManagers;
            FileInputStream fileInputStream;
            Throwable th;
            try {
                keyStore = KeyStore.getInstance("JKS");
            } catch (Exception e) {
                keyStore = null;
            }
            TrustManager[] trustManagerArr = new TrustManager[0];
            if (keyStore != null) {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream("trustedCerts");
                    try {
                        keyStore.load(fileInputStream2, "passphrase".toCharArray());
                        TrustManagerFactory instance = TrustManagerFactory.getInstance("SunX509", "SunJSSE");
                        instance.init(keyStore);
                        trustManagers = instance.getTrustManagers();
                        if (fileInputStream2 != null) {
                            fileInputStream2.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = fileInputStream2;
                    }
                } catch (Throwable th3) {
                    Throwable th4 = th3;
                    fileInputStream = null;
                    th = th4;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } else {
                TrustManagerFactory instance2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                instance2.init(null);
                trustManagers = instance2.getTrustManagers();
            }
            for (int i = 0; i < trustManagers.length; i++) {
                if (trustManagers[i] instanceof X509TrustManager) {
                    this.a = (X509TrustManager) trustManagers[i];
                    return;
                }
            }
            throw new Exception("Couldn't initialize");
        }

        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            this.a.checkClientTrusted(x509CertificateArr, str);
        }

        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            this.a.checkServerTrusted(x509CertificateArr, str);
        }

        public X509Certificate[] getAcceptedIssuers() {
            return this.a.getAcceptedIssuers();
        }
    }

    /* compiled from: ProGuard */
    public static class c {
        public final String a;
        public final int b;

        private c(String str, int i) {
            this.a = str;
            this.b = i;
        }
    }

    private HttpUtils() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0104, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0105, code lost:
        r16 = r15;
        r15 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x011e, code lost:
        r13 = r8;
        r8 = r16;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x012a, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x012b, code lost:
        r16 = r15;
        r15 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x012e, code lost:
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r15);
        r12 = -8;
        r10 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0136, code lost:
        if (r14 >= r13) goto L_0x0143;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0138, code lost:
        r6 = android.os.SystemClock.elapsedRealtime();
        r8 = r16;
        r16 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0143, code lost:
        com.tencent.open.b.g.a().a(r5, r6, 0, 0, -8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x014a, code lost:
        throw r15;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x014b, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x014c, code lost:
        r13 = r4;
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:?, code lost:
        r12 = java.lang.Integer.parseInt(r13.getMessage().replace(com.tencent.open.utils.HttpUtils.HttpStatusException.ERROR_INFO, ""));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x016c, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x016d, code lost:
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r4);
        r12 = -9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0173, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0174, code lost:
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0177, code lost:
        throw r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0178, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0179, code lost:
        r13 = r4;
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r13);
        com.tencent.open.b.g.a().a(r5, r6, 0, 0, -3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0189, code lost:
        throw r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x018a, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x018b, code lost:
        r13 = r4;
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r13);
        com.tencent.open.b.g.a().a(r5, r6, 0, 0, getErrorCodeFromException(r13));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x019e, code lost:
        throw r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x019f, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x01a0, code lost:
        r13 = r4;
        com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r13);
        com.tencent.open.b.g.a().a(r5, r6, 0, 0, -4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x01b0, code lost:
        throw r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x01b1, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x01b2, code lost:
        r15 = r8;
        r16 = r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x01b7, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x01b8, code lost:
        r15 = r8;
        r16 = r9;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0104 A[ExcHandler: ConnectTimeoutException (r8v21 'e' org.apache.http.conn.ConnectTimeoutException A[CUSTOM_DECLARE]), Splitter:B:11:0x00ee] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x012a A[ExcHandler: SocketTimeoutException (r8v20 'e' java.net.SocketTimeoutException A[CUSTOM_DECLARE]), Splitter:B:11:0x00ee] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0138  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x014b A[ExcHandler: HttpStatusException (r4v12 'e' com.tencent.open.utils.HttpUtils$HttpStatusException A[CUSTOM_DECLARE]), Splitter:B:8:0x00e2] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0173 A[ExcHandler: NetworkUnavailableException (r4v11 'e' com.tencent.open.utils.HttpUtils$NetworkUnavailableException A[CUSTOM_DECLARE]), Splitter:B:8:0x00e2] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0178 A[ExcHandler: MalformedURLException (r4v9 'e' java.net.MalformedURLException A[CUSTOM_DECLARE]), Splitter:B:8:0x00e2] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x018a A[ExcHandler: IOException (r4v7 'e' java.io.IOException A[CUSTOM_DECLARE]), Splitter:B:8:0x00e2] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x019f A[ExcHandler: JSONException (r4v5 'e' org.json.JSONException A[CUSTOM_DECLARE]), Splitter:B:8:0x00e2] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x01bd A[LOOP:0: B:7:0x00da->B:61:0x01bd, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x011e A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0143 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.json.JSONObject request(com.tencent.connect.auth.QQToken r20, android.content.Context r21, java.lang.String r22, android.os.Bundle r23, java.lang.String r24) throws java.io.IOException, org.json.JSONException, com.tencent.open.utils.HttpUtils.NetworkUnavailableException, com.tencent.open.utils.HttpUtils.HttpStatusException {
        /*
            java.lang.String r4 = "openSDK_LOG.HttpUtils"
            java.lang.String r5 = "OpenApi request"
            com.tencent.open.a.f.a(r4, r5)
            java.lang.String r4 = r22.toLowerCase()
            java.lang.String r5 = "http"
            boolean r4 = r4.startsWith(r5)
            if (r4 != 0) goto L_0x01c1
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            com.tencent.open.utils.f r5 = com.tencent.open.utils.f.a()
            java.lang.String r6 = "https://openmobile.qq.com/"
            r0 = r21
            java.lang.String r5 = r5.a(r0, r6)
            java.lang.StringBuilder r4 = r4.append(r5)
            r0 = r22
            java.lang.StringBuilder r4 = r4.append(r0)
            java.lang.String r4 = r4.toString()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            com.tencent.open.utils.f r6 = com.tencent.open.utils.f.a()
            java.lang.String r7 = "https://openmobile.qq.com/"
            r0 = r21
            java.lang.String r6 = r6.a(r0, r7)
            java.lang.StringBuilder r5 = r5.append(r6)
            r0 = r22
            java.lang.StringBuilder r5 = r5.append(r0)
            java.lang.String r5 = r5.toString()
        L_0x0051:
            r0 = r21
            r1 = r20
            r2 = r22
            a(r0, r1, r2)
            r10 = 0
            long r8 = android.os.SystemClock.elapsedRealtime()
            r7 = 0
            java.lang.String r6 = r20.getAppId()
            r0 = r21
            com.tencent.open.utils.e r6 = com.tencent.open.utils.e.a(r0, r6)
            java.lang.String r11 = "Common_HttpRetryCount"
            int r6 = r6.a(r11)
            java.lang.String r11 = "OpenConfig_test"
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "config 1:Common_HttpRetryCount            config_value:"
            java.lang.StringBuilder r12 = r12.append(r13)
            java.lang.StringBuilder r12 = r12.append(r6)
            java.lang.String r13 = "   appid:"
            java.lang.StringBuilder r12 = r12.append(r13)
            java.lang.String r13 = r20.getAppId()
            java.lang.StringBuilder r12 = r12.append(r13)
            java.lang.String r13 = "     url:"
            java.lang.StringBuilder r12 = r12.append(r13)
            java.lang.StringBuilder r12 = r12.append(r5)
            java.lang.String r12 = r12.toString()
            com.tencent.open.a.f.a(r11, r12)
            if (r6 != 0) goto L_0x00ff
            r6 = 3
            r13 = r6
        L_0x00a4:
            java.lang.String r6 = "OpenConfig_test"
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "config 1:Common_HttpRetryCount            result_value:"
            java.lang.StringBuilder r11 = r11.append(r12)
            java.lang.StringBuilder r11 = r11.append(r13)
            java.lang.String r12 = "   appid:"
            java.lang.StringBuilder r11 = r11.append(r12)
            java.lang.String r12 = r20.getAppId()
            java.lang.StringBuilder r11 = r11.append(r12)
            java.lang.String r12 = "     url:"
            java.lang.StringBuilder r11 = r11.append(r12)
            java.lang.StringBuilder r11 = r11.append(r5)
            java.lang.String r11 = r11.toString()
            com.tencent.open.a.f.a(r6, r11)
            r18 = r7
            r6 = r8
            r8 = r18
            r9 = r10
        L_0x00da:
            int r14 = r8 + 1
            r0 = r21
            r1 = r24
            r2 = r23
            com.tencent.open.utils.i$a r10 = openUrl2(r0, r4, r1, r2)     // Catch:{ ConnectTimeoutException -> 0x01b7, SocketTimeoutException -> 0x01b1, HttpStatusException -> 0x014b, NetworkUnavailableException -> 0x0173, MalformedURLException -> 0x0178, IOException -> 0x018a, JSONException -> 0x019f }
            java.lang.String r8 = r10.a     // Catch:{ ConnectTimeoutException -> 0x01b7, SocketTimeoutException -> 0x01b1, HttpStatusException -> 0x014b, NetworkUnavailableException -> 0x0173, MalformedURLException -> 0x0178, IOException -> 0x018a, JSONException -> 0x019f }
            org.json.JSONObject r15 = com.tencent.open.utils.i.d(r8)     // Catch:{ ConnectTimeoutException -> 0x01b7, SocketTimeoutException -> 0x01b1, HttpStatusException -> 0x014b, NetworkUnavailableException -> 0x0173, MalformedURLException -> 0x0178, IOException -> 0x018a, JSONException -> 0x019f }
            java.lang.String r8 = "ret"
            int r12 = r15.getInt(r8)     // Catch:{ JSONException -> 0x0101, ConnectTimeoutException -> 0x0104, SocketTimeoutException -> 0x012a, HttpStatusException -> 0x014b, NetworkUnavailableException -> 0x0173, MalformedURLException -> 0x0178, IOException -> 0x018a }
        L_0x00f2:
            long r8 = r10.b     // Catch:{ ConnectTimeoutException -> 0x0104, SocketTimeoutException -> 0x012a, HttpStatusException -> 0x014b, NetworkUnavailableException -> 0x0173, MalformedURLException -> 0x0178, IOException -> 0x018a, JSONException -> 0x019f }
            long r10 = r10.c     // Catch:{ ConnectTimeoutException -> 0x0104, SocketTimeoutException -> 0x012a, HttpStatusException -> 0x014b, NetworkUnavailableException -> 0x0173, MalformedURLException -> 0x0178, IOException -> 0x018a, JSONException -> 0x019f }
            r13 = r15
        L_0x00f7:
            com.tencent.open.b.g r4 = com.tencent.open.b.g.a()
            r4.a(r5, r6, r8, r10, r12)
            return r13
        L_0x00ff:
            r13 = r6
            goto L_0x00a4
        L_0x0101:
            r8 = move-exception
            r12 = -4
            goto L_0x00f2
        L_0x0104:
            r8 = move-exception
            r16 = r15
            r15 = r8
        L_0x0108:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r15)
            r12 = -7
            r8 = 0
            r10 = 0
            if (r14 >= r13) goto L_0x0122
            long r6 = android.os.SystemClock.elapsedRealtime()
            r18 = r8
            r8 = r16
            r16 = r18
        L_0x011c:
            if (r14 < r13) goto L_0x01bd
            r13 = r8
            r8 = r16
            goto L_0x00f7
        L_0x0122:
            com.tencent.open.b.g r4 = com.tencent.open.b.g.a()
            r4.a(r5, r6, r8, r10, r12)
            throw r15
        L_0x012a:
            r8 = move-exception
            r16 = r15
            r15 = r8
        L_0x012e:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r15)
            r12 = -8
            r8 = 0
            r10 = 0
            if (r14 >= r13) goto L_0x0143
            long r6 = android.os.SystemClock.elapsedRealtime()
            r18 = r8
            r8 = r16
            r16 = r18
            goto L_0x011c
        L_0x0143:
            com.tencent.open.b.g r4 = com.tencent.open.b.g.a()
            r4.a(r5, r6, r8, r10, r12)
            throw r15
        L_0x014b:
            r4 = move-exception
            r13 = r4
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r13)
            java.lang.String r4 = r13.getMessage()
            java.lang.String r8 = "http status code error:"
            java.lang.String r9 = ""
            java.lang.String r4 = r4.replace(r8, r9)     // Catch:{ Exception -> 0x016c }
            int r12 = java.lang.Integer.parseInt(r4)     // Catch:{ Exception -> 0x016c }
        L_0x0160:
            r8 = 0
            r10 = 0
            com.tencent.open.b.g r4 = com.tencent.open.b.g.a()
            r4.a(r5, r6, r8, r10, r12)
            throw r13
        L_0x016c:
            r4 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r4)
            r12 = -9
            goto L_0x0160
        L_0x0173:
            r4 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r4)
            throw r4
        L_0x0178:
            r4 = move-exception
            r13 = r4
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r13)
            r12 = -3
            r8 = 0
            r10 = 0
            com.tencent.open.b.g r4 = com.tencent.open.b.g.a()
            r4.a(r5, r6, r8, r10, r12)
            throw r13
        L_0x018a:
            r4 = move-exception
            r13 = r4
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r13)
            int r12 = getErrorCodeFromException(r13)
            r8 = 0
            r10 = 0
            com.tencent.open.b.g r4 = com.tencent.open.b.g.a()
            r4.a(r5, r6, r8, r10, r12)
            throw r13
        L_0x019f:
            r4 = move-exception
            r13 = r4
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r13)
            r12 = -4
            r8 = 0
            r10 = 0
            com.tencent.open.b.g r4 = com.tencent.open.b.g.a()
            r4.a(r5, r6, r8, r10, r12)
            throw r13
        L_0x01b1:
            r8 = move-exception
            r15 = r8
            r16 = r9
            goto L_0x012e
        L_0x01b7:
            r8 = move-exception
            r15 = r8
            r16 = r9
            goto L_0x0108
        L_0x01bd:
            r9 = r8
            r8 = r14
            goto L_0x00da
        L_0x01c1:
            r5 = r22
            r4 = r22
            goto L_0x0051
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.HttpUtils.request(com.tencent.connect.auth.QQToken, android.content.Context, java.lang.String, android.os.Bundle, java.lang.String):org.json.JSONObject");
    }

    public static void requestAsync(QQToken qQToken, Context context, String str, Bundle bundle, String str2, IRequestListener iRequestListener) {
        f.a("openSDK_LOG.HttpUtils", "OpenApi requestAsync");
        final QQToken qQToken2 = qQToken;
        final Context context2 = context;
        final String str3 = str;
        final Bundle bundle2 = bundle;
        final String str4 = str2;
        final IRequestListener iRequestListener2 = iRequestListener;
        new Thread() {
            public void run() {
                try {
                    JSONObject request = HttpUtils.request(qQToken2, context2, str3, bundle2, str4);
                    if (iRequestListener2 != null) {
                        iRequestListener2.onComplete(request);
                        f.b("openSDK_LOG.HttpUtils", "OpenApi onComplete");
                    }
                } catch (MalformedURLException e2) {
                    if (iRequestListener2 != null) {
                        iRequestListener2.onMalformedURLException(e2);
                        f.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync MalformedURLException", e2);
                    }
                } catch (ConnectTimeoutException e3) {
                    if (iRequestListener2 != null) {
                        iRequestListener2.onConnectTimeoutException(e3);
                        f.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onConnectTimeoutException", e3);
                    }
                } catch (SocketTimeoutException e4) {
                    if (iRequestListener2 != null) {
                        iRequestListener2.onSocketTimeoutException(e4);
                        f.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onSocketTimeoutException", e4);
                    }
                } catch (NetworkUnavailableException e5) {
                    if (iRequestListener2 != null) {
                        iRequestListener2.onNetworkUnavailableException(e5);
                        f.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onNetworkUnavailableException", e5);
                    }
                } catch (HttpStatusException e6) {
                    if (iRequestListener2 != null) {
                        iRequestListener2.onHttpStatusException(e6);
                        f.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onHttpStatusException", e6);
                    }
                } catch (IOException e7) {
                    if (iRequestListener2 != null) {
                        iRequestListener2.onIOException(e7);
                        f.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync IOException", e7);
                    }
                } catch (JSONException e8) {
                    if (iRequestListener2 != null) {
                        iRequestListener2.onJSONException(e8);
                        f.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync JSONException", e8);
                    }
                } catch (Exception e9) {
                    if (iRequestListener2 != null) {
                        iRequestListener2.onUnknowException(e9);
                        f.b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onUnknowException", e9);
                    }
                }
            }
        }.start();
    }

    private static void a(Context context, QQToken qQToken, String str) {
        if (str.indexOf("add_share") > -1 || str.indexOf("upload_pic") > -1 || str.indexOf("add_topic") > -1 || str.indexOf("set_user_face") > -1 || str.indexOf("add_t") > -1 || str.indexOf("add_pic_t") > -1 || str.indexOf("add_pic_url") > -1 || str.indexOf("add_video") > -1) {
            com.tencent.connect.a.a.a(context, qQToken, "requireApi", str);
        }
    }

    public static int getErrorCodeFromException(IOException iOException) {
        if (iOException instanceof CharConversionException) {
            return -20;
        }
        if (iOException instanceof MalformedInputException) {
            return -21;
        }
        if (iOException instanceof UnmappableCharacterException) {
            return -22;
        }
        if (iOException instanceof HttpResponseException) {
            return -23;
        }
        if (iOException instanceof ClosedChannelException) {
            return -24;
        }
        if (iOException instanceof ConnectionClosedException) {
            return -25;
        }
        if (iOException instanceof EOFException) {
            return -26;
        }
        if (iOException instanceof FileLockInterruptionException) {
            return -27;
        }
        if (iOException instanceof FileNotFoundException) {
            return -28;
        }
        if (iOException instanceof HttpRetryException) {
            return -29;
        }
        if (iOException instanceof ConnectTimeoutException) {
            return -7;
        }
        if (iOException instanceof SocketTimeoutException) {
            return -8;
        }
        if (iOException instanceof InvalidPropertiesFormatException) {
            return -30;
        }
        if (iOException instanceof MalformedChunkCodingException) {
            return -31;
        }
        if (iOException instanceof MalformedURLException) {
            return -3;
        }
        if (iOException instanceof NoHttpResponseException) {
            return -32;
        }
        if (iOException instanceof InvalidClassException) {
            return -33;
        }
        if (iOException instanceof InvalidObjectException) {
            return -34;
        }
        if (iOException instanceof NotActiveException) {
            return -35;
        }
        if (iOException instanceof NotSerializableException) {
            return -36;
        }
        if (iOException instanceof OptionalDataException) {
            return -37;
        }
        if (iOException instanceof StreamCorruptedException) {
            return -38;
        }
        if (iOException instanceof WriteAbortedException) {
            return -39;
        }
        if (iOException instanceof ProtocolException) {
            return -40;
        }
        if (iOException instanceof SSLHandshakeException) {
            return -41;
        }
        if (iOException instanceof SSLKeyException) {
            return -42;
        }
        if (iOException instanceof SSLPeerUnverifiedException) {
            return -43;
        }
        if (iOException instanceof SSLProtocolException) {
            return -44;
        }
        if (iOException instanceof BindException) {
            return -45;
        }
        if (iOException instanceof ConnectException) {
            return -46;
        }
        if (iOException instanceof NoRouteToHostException) {
            return -47;
        }
        if (iOException instanceof PortUnreachableException) {
            return -48;
        }
        if (iOException instanceof SyncFailedException) {
            return -49;
        }
        if (iOException instanceof UTFDataFormatException) {
            return -50;
        }
        if (iOException instanceof UnknownHostException) {
            return -51;
        }
        if (iOException instanceof UnknownServiceException) {
            return -52;
        }
        if (iOException instanceof UnsupportedEncodingException) {
            return -53;
        }
        if (iOException instanceof ZipException) {
            return -54;
        }
        return -2;
    }

    public static com.tencent.open.utils.i.a openUrl2(Context context, String str, String str2, Bundle bundle) throws MalformedURLException, IOException, NetworkUnavailableException, HttpStatusException {
        Bundle bundle2;
        HttpUriRequest httpUriRequest;
        int i;
        String str3;
        if (context != null) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                    throw new NetworkUnavailableException(NetworkUnavailableException.ERROR_INFO);
                }
            }
        }
        if (bundle != null) {
            bundle2 = new Bundle(bundle);
        } else {
            bundle2 = new Bundle();
        }
        String str4 = "";
        String string = bundle2.getString("appid_for_getting_config");
        bundle2.remove("appid_for_getting_config");
        HttpClient httpClient = getHttpClient(context, string, str);
        if (str2.equals("GET")) {
            String encodeUrl = encodeUrl(bundle2);
            int length = 0 + encodeUrl.length();
            f.a("openSDK_LOG.HttpUtils", "-->openUrl2 before url =" + str);
            if (str.indexOf("?") == -1) {
                str3 = str + "?";
            } else {
                str3 = str + "&";
            }
            f.a("openSDK_LOG.HttpUtils", "-->openUrl2 encodedParam =" + encodeUrl + " -- url = " + str3);
            HttpUriRequest httpGet = new HttpGet(str3 + encodeUrl);
            httpGet.addHeader("Accept-Encoding", "gzip");
            int i2 = length;
            httpUriRequest = httpGet;
            i = i2;
        } else if (str2.equals("POST")) {
            HttpPost httpPost = new HttpPost(str);
            httpPost.addHeader("Accept-Encoding", "gzip");
            Bundle bundle3 = new Bundle();
            for (String str5 : bundle2.keySet()) {
                Object obj = bundle2.get(str5);
                if (obj instanceof byte[]) {
                    bundle3.putByteArray(str5, (byte[]) obj);
                }
            }
            if (!bundle2.containsKey(Spdy2HttpNames.METHOD)) {
                bundle2.putString(Spdy2HttpNames.METHOD, str2);
            }
            httpPost.setHeader("Content-Type", "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
            httpPost.setHeader("Connection", HTTP.CONN_KEEP_ALIVE);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(i.i("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
            byteArrayOutputStream.write(i.i(encodePostBody(bundle2, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f")));
            if (!bundle3.isEmpty()) {
                int size = bundle3.size();
                byteArrayOutputStream.write(i.i("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
                int i3 = -1;
                for (String str6 : bundle3.keySet()) {
                    i3++;
                    byteArrayOutputStream.write(i.i("Content-Disposition: form-data; name=\"" + str6 + "\"; filename=\"" + str6 + "\"" + "\r\n"));
                    byteArrayOutputStream.write(i.i("Content-Type: content/unknown\r\n\r\n"));
                    byte[] byteArray = bundle3.getByteArray(str6);
                    if (byteArray != null) {
                        byteArrayOutputStream.write(byteArray);
                    }
                    if (i3 < size - 1) {
                        byteArrayOutputStream.write(i.i("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
                    }
                }
            }
            byteArrayOutputStream.write(i.i("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n"));
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            i = byteArray2.length + 0;
            byteArrayOutputStream.close();
            httpPost.setEntity(new ByteArrayEntity(byteArray2));
            httpUriRequest = httpPost;
        } else {
            httpUriRequest = 0;
            i = 0;
        }
        HttpResponse execute = httpClient.execute(httpUriRequest);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode == 200) {
            return new com.tencent.open.utils.i.a(a(execute), i);
        }
        throw new HttpStatusException(HttpStatusException.ERROR_INFO + statusCode);
    }

    private static String a(HttpResponse httpResponse) throws IllegalStateException, IOException {
        InputStream inputStream;
        String str = "";
        InputStream content = httpResponse.getEntity().getContent();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Header firstHeader = httpResponse.getFirstHeader("Content-Encoding");
        if (firstHeader == null || firstHeader.getValue().toLowerCase().indexOf("gzip") <= -1) {
            inputStream = content;
        } else {
            inputStream = new GZIPInputStream(content);
        }
        byte[] bArr = new byte[512];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                String str2 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                inputStream.close();
                return str2;
            }
        }
    }

    public static HttpClient getHttpClient(Context context, String str, String str2) {
        e eVar;
        int i;
        int i2 = 0;
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(HttpHost.DEFAULT_SCHEME_NAME, PlainSocketFactory.getSocketFactory(), 80));
        if (VERSION.SDK_INT < 16) {
            try {
                KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
                instance.load(null, null);
                a aVar = new a(instance);
                aVar.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                schemeRegistry.register(new Scheme("https", aVar, ServerPort.PORT_443));
            } catch (Exception e) {
                schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), ServerPort.PORT_443));
            }
        } else {
            schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), ServerPort.PORT_443));
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        if (context != null) {
            eVar = e.a(context, str);
        } else {
            eVar = null;
        }
        if (eVar != null) {
            i = eVar.a("Common_HttpConnectionTimeout");
            i2 = eVar.a("Common_SocketConnectionTimeout");
        } else {
            i = 0;
        }
        if (i == 0) {
            i = 15000;
        }
        if (i2 == 0) {
            i2 = 30000;
        }
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, i);
        HttpConnectionParams.setSoTimeout(basicHttpParams, i2);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        HttpProtocolParams.setUserAgent(basicHttpParams, "AndroidSDK_" + VERSION.SDK + "_" + Build.DEVICE + "_" + VERSION.RELEASE);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        c proxy = getProxy(context);
        if (proxy != null) {
            defaultHttpClient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, new HttpHost(proxy.a, proxy.b));
        }
        return defaultHttpClient;
    }

    public static String encodeUrl(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if ((obj instanceof String) || (obj instanceof String[])) {
                if (obj instanceof String[]) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append("&");
                    }
                    sb.append(URLEncoder.encode(str) + "=");
                    String[] stringArray = bundle.getStringArray(str);
                    if (stringArray != null) {
                        for (int i = 0; i < stringArray.length; i++) {
                            if (i == 0) {
                                sb.append(URLEncoder.encode(stringArray[i]));
                            } else {
                                sb.append(URLEncoder.encode(Constants.ACCEPT_TIME_SEPARATOR_SP + stringArray[i]));
                            }
                        }
                    }
                } else {
                    if (z) {
                        z = false;
                    } else {
                        sb.append("&");
                    }
                    sb.append(URLEncoder.encode(str) + "=" + URLEncoder.encode(bundle.getString(str)));
                }
                z = z;
            }
        }
        return sb.toString();
    }

    public static String encodePostBody(Bundle bundle, String str) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = bundle.size();
        int i = -1;
        for (String str2 : bundle.keySet()) {
            int i2 = i + 1;
            Object obj = bundle.get(str2);
            if (!(obj instanceof String)) {
                i = i2;
            } else {
                sb.append("Content-Disposition: form-data; name=\"" + str2 + "\"" + "\r\n" + "\r\n" + ((String) obj));
                if (i2 < size - 1) {
                    sb.append("\r\n--" + str + "\r\n");
                }
                i = i2;
            }
        }
        return sb.toString();
    }

    public static c getProxy(Context context) {
        if (context == null) {
            return null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return null;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return null;
        }
        if (activeNetworkInfo.getType() == 0) {
            String b2 = b(context);
            int a2 = a(context);
            if (!TextUtils.isEmpty(b2) && a2 >= 0) {
                return new c(b2, a2);
            }
        }
        return null;
    }

    private static int a(Context context) {
        int i = -1;
        if (VERSION.SDK_INT >= 11) {
            String property = System.getProperty("http.proxyPort");
            if (TextUtils.isEmpty(property)) {
                return i;
            }
            try {
                return Integer.parseInt(property);
            } catch (NumberFormatException e) {
                return i;
            }
        } else if (context == null) {
            return Proxy.getDefaultPort();
        } else {
            int port = Proxy.getPort(context);
            if (port < 0) {
                return Proxy.getDefaultPort();
            }
            return port;
        }
    }

    private static String b(Context context) {
        if (VERSION.SDK_INT >= 11) {
            return System.getProperty("http.proxyHost");
        }
        if (context == null) {
            return Proxy.getDefaultHost();
        }
        String host = Proxy.getHost(context);
        if (TextUtils.isEmpty(host)) {
            return Proxy.getDefaultHost();
        }
        return host;
    }
}
