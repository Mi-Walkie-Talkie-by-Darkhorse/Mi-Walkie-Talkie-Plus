package com.mi.mimsgsdk.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.account.UserInfo;
import com.mi.milinkforgame.sdk.client.ClientLog;
import java.io.BufferedReader;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class Network {
    public static final String CMWAP_GATEWAY = "10.0.0.172";
    public static final String CMWAP_HEADER_HOST_KEY = "X-Online-Host";
    public static final int CMWAP_PORT = 80;
    public static final int CONNECTION_TIMEOUT = 10000;
    public static final Pattern ContentTypePattern_Charset = Pattern.compile("(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
    public static final Pattern ContentTypePattern_MimeType = Pattern.compile("([^\\s;]+)(.*)");
    public static final Pattern ContentTypePattern_XmlEncoding = Pattern.compile("(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
    static final HostnameVerifier DO_NOT_VERIFY = new HostnameVerifier() {
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    };
    private static final String LogTag = "Network";
    public static final String NETWORK_TYPE_3GNET = "3gnet";
    public static final String NETWORK_TYPE_3GWAP = "3gwap";
    public static final String NETWORK_TYPE_CHINATELECOM = "#777";
    public static final String NETWORK_TYPE_WIFI = "wifi";
    public static final int READ_TIMEOUT = 15000;
    public static final String RESPONSE_BODY = "RESPONSE_BODY";
    public static final String RESPONSE_CODE = "RESPONSE_CODE";
    public static final String USER_AGENT = "User-Agent";
    public static final String UserAgent_PC_Chrome = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3";
    public static final String UserAgent_PC_Chrome_6_0_464_0 = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3";

    public static final class DoneHandlerInputStream extends FilterInputStream {
        private boolean done;

        public DoneHandlerInputStream(InputStream inputStream) {
            super(inputStream);
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (!this.done) {
                int read = super.read(bArr, i, i2);
                if (read != -1) {
                    return read;
                }
            }
            this.done = true;
            return -1;
        }
    }

    private static class DownloadTask extends AsyncTask<Void, Void, Boolean> {
        private boolean bOnlyWifi;
        private PostDownloadHandler handler;
        private Context mContext;
        private OutputStream output;
        private String url;

        public DownloadTask(String str, OutputStream outputStream, PostDownloadHandler postDownloadHandler) {
            this(str, outputStream, postDownloadHandler, false, null);
        }

        public DownloadTask(String str, OutputStream outputStream, PostDownloadHandler postDownloadHandler, boolean z, Context context) {
            this.url = str;
            this.output = outputStream;
            this.handler = postDownloadHandler;
            this.bOnlyWifi = z;
            this.mContext = context;
        }

        /* access modifiers changed from: protected */
        public Boolean doInBackground(Void... voidArr) {
            return Boolean.valueOf(Network.downloadFile(this.url, this.output, this.bOnlyWifi, this.mContext));
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(Boolean bool) {
            this.handler.OnPostDownload(bool.booleanValue());
        }
    }

    public static class HttpHeaderInfo {
        public Map<String, String> AllHeaders;
        public String ContentType;
        public int ResponseCode;
        public String UserAgent;
        public String realUrl;

        public String toString() {
            return String.format("resCode = %1$d, headers = %2$s", new Object[]{Integer.valueOf(this.ResponseCode), this.AllHeaders.toString()});
        }
    }

    public interface PostDownloadHandler {
        void OnPostDownload(boolean z);
    }

    public static InputStream downloadXmlAsStream(Context context, URL url) throws IOException {
        return downloadXmlAsStream(context, url, true, null, null, null, null);
    }

    public static InputStream downloadXmlAsStream(Context context, URL url, boolean z, String str, String str2) throws IOException {
        return downloadXmlAsStream(context, url, z, str, str2, null, null);
    }

    public static InputStream downloadXmlAsStream(Context context, URL url, boolean z, String str, String str2, Map<String, String> map, com.mi.mimsgsdk.utils.NetworkUtils.HttpHeaderInfo httpHeaderInfo) throws IOException {
        URL url2;
        if (context == null) {
            throw new IllegalArgumentException("context");
        } else if (url == null) {
            throw new IllegalArgumentException("url");
        } else {
            if (!z) {
                url2 = new URL(encryptURL(url.toString()));
            } else {
                url2 = url;
            }
            try {
                HttpURLConnection.setFollowRedirects(true);
                HttpURLConnection httpUrlConnection = getHttpUrlConnection(context, url2);
                httpUrlConnection.setConnectTimeout(10000);
                httpUrlConnection.setReadTimeout(15000);
                if (!TextUtils.isEmpty(str)) {
                    httpUrlConnection.setRequestProperty("User-Agent", str);
                }
                if (str2 != null) {
                    httpUrlConnection.setRequestProperty("Cookie", str2);
                }
                if (map != null) {
                    for (String str3 : map.keySet()) {
                        httpUrlConnection.setRequestProperty(str3, (String) map.get(str3));
                    }
                }
                if (httpHeaderInfo != null) {
                    if (url.getProtocol().equals(HttpHost.DEFAULT_SCHEME_NAME) || url.getProtocol().equals("https")) {
                        httpHeaderInfo.ResponseCode = httpUrlConnection.getResponseCode();
                        if (httpHeaderInfo.AllHeaders == null) {
                            httpHeaderInfo.AllHeaders = new HashMap();
                        }
                        int i = 0;
                        while (true) {
                            String headerFieldKey = httpUrlConnection.getHeaderFieldKey(i);
                            String headerField = httpUrlConnection.getHeaderField(i);
                            if (headerFieldKey == null && headerField == null) {
                                break;
                            }
                            if (!TextUtils.isEmpty(headerFieldKey) && !TextUtils.isEmpty(headerField)) {
                                httpHeaderInfo.AllHeaders.put(headerFieldKey, headerField);
                            }
                            i++;
                        }
                    }
                }
                return new DoneHandlerInputStream(httpUrlConnection.getInputStream());
            } catch (IOException e) {
                throw e;
            } catch (Throwable th) {
                throw new IOException(th.getMessage());
            }
        }
    }

    public static InputStream downloadXmlAsStreamWithoutRedirect(URL url, String str, String str2) throws IOException {
        InputStream inputStream;
        try {
            HttpURLConnection.setFollowRedirects(false);
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(15000);
            if (!TextUtils.isEmpty(str)) {
                httpURLConnection.setRequestProperty("User-Agent", str);
            }
            if (str2 != null) {
                httpURLConnection.setRequestProperty("Cookie", str2);
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 300 || responseCode >= 400) {
                inputStream = httpURLConnection.getInputStream();
            } else {
                inputStream = null;
            }
            return new DoneHandlerInputStream(inputStream);
        } catch (IOException e) {
            throw e;
        } catch (Throwable th) {
            throw new IOException(th.getMessage());
        }
    }

    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r1v1 */
    /* JADX WARNING: type inference failed for: r4v0 */
    /* JADX WARNING: type inference failed for: r4v1 */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r4v2 */
    /* JADX WARNING: type inference failed for: r4v3, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.OutputStream] */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r1v5 */
    /* JADX WARNING: type inference failed for: r4v4 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r4v5, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: type inference failed for: r3v7, types: [java.io.OutputStream] */
    /* JADX WARNING: type inference failed for: r1v7 */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r2v14 */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: type inference failed for: r2v16 */
    /* JADX WARNING: type inference failed for: r4v6 */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: type inference failed for: r4v7 */
    /* JADX WARNING: type inference failed for: r4v8 */
    /* JADX WARNING: type inference failed for: r4v9 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r4v1
  assigns: []
  uses: []
  mth insns count: 91
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
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x003f A[SYNTHETIC, Splitter:B:19:0x003f] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0044 A[SYNTHETIC, Splitter:B:22:0x0044] */
    /* JADX WARNING: Unknown variable types count: 9 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean doHttpPostReqOnly(android.content.Context r9, java.lang.String r10, java.util.List<org.apache.http.NameValuePair> r11) throws java.io.IOException {
        /*
            r0 = 1
            r1 = 0
            r2 = 0
            boolean r3 = android.text.TextUtils.isEmpty(r10)
            if (r3 == 0) goto L_0x0011
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "url"
            r0.<init>(r1)
            throw r0
        L_0x0011:
            java.net.URL r3 = getDefaultStreamHandlerURL(r10)     // Catch:{ IOException -> 0x00c2, Throwable -> 0x0099, all -> 0x00b7 }
            java.net.HttpURLConnection r4 = getHttpUrlConnection(r9, r3)     // Catch:{ IOException -> 0x00c2, Throwable -> 0x0099, all -> 0x00b7 }
            r3 = 10000(0x2710, float:1.4013E-41)
            r4.setConnectTimeout(r3)     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            r3 = 15000(0x3a98, float:2.102E-41)
            r4.setReadTimeout(r3)     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            java.lang.String r3 = "POST"
            r4.setRequestMethod(r3)     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            java.lang.String r3 = fromParamListToString(r11)     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            if (r3 != 0) goto L_0x0048
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            java.lang.String r1 = "nameValuePairs"
            r0.<init>(r1)     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            throw r0     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
        L_0x0036:
            r0 = move-exception
            r1 = r2
            r2 = r4
        L_0x0039:
            throw r0     // Catch:{ all -> 0x003a }
        L_0x003a:
            r0 = move-exception
            r4 = r2
            r2 = r1
        L_0x003d:
            if (r2 == 0) goto L_0x0042
            r2.close()     // Catch:{ IOException -> 0x00a7 }
        L_0x0042:
            if (r4 == 0) goto L_0x0047
            r4.disconnect()     // Catch:{ Exception -> 0x00b0 }
        L_0x0047:
            throw r0
        L_0x0048:
            r5 = 1
            r4.setDoOutput(r5)     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            byte[] r5 = r3.getBytes()     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            java.io.OutputStream r3 = r4.getOutputStream()     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            r6 = 0
            int r7 = r5.length     // Catch:{ IOException -> 0x00c6, Throwable -> 0x00bf, all -> 0x00ba }
            r3.write(r5, r6, r7)     // Catch:{ IOException -> 0x00c6, Throwable -> 0x00bf, all -> 0x00ba }
            r3.flush()     // Catch:{ IOException -> 0x00c6, Throwable -> 0x00bf, all -> 0x00ba }
            r3.close()     // Catch:{ IOException -> 0x00c6, Throwable -> 0x00bf, all -> 0x00ba }
            r3 = 0
            int r5 = r4.getResponseCode()     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            java.lang.String r6 = "Network"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            r7.<init>()     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            java.lang.String r8 = "Http POST Response Code: "
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            java.lang.StringBuilder r7 = r7.append(r5)     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            java.lang.String r7 = r7.toString()     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            com.mi.milinkforgame.sdk.client.ClientLog.d(r6, r7)     // Catch:{ IOException -> 0x0036, Throwable -> 0x00bd }
            if (r2 == 0) goto L_0x0081
            r3.close()     // Catch:{ IOException -> 0x008b }
        L_0x0081:
            if (r4 == 0) goto L_0x0086
            r4.disconnect()     // Catch:{ Exception -> 0x0094 }
        L_0x0086:
            r2 = 200(0xc8, float:2.8E-43)
            if (r5 != r2) goto L_0x00b5
        L_0x008a:
            return r0
        L_0x008b:
            r2 = move-exception
            java.lang.String r3 = "Network"
            java.lang.String r6 = "error while closing strean"
            com.mi.milinkforgame.sdk.client.ClientLog.e(r3, r6, r2)
            goto L_0x0081
        L_0x0094:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x0086
        L_0x0099:
            r0 = move-exception
            r4 = r2
        L_0x009b:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x00a5 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x00a5 }
            r1.<init>(r0)     // Catch:{ all -> 0x00a5 }
            throw r1     // Catch:{ all -> 0x00a5 }
        L_0x00a5:
            r0 = move-exception
            goto L_0x003d
        L_0x00a7:
            r1 = move-exception
            java.lang.String r2 = "Network"
            java.lang.String r3 = "error while closing strean"
            com.mi.milinkforgame.sdk.client.ClientLog.e(r2, r3, r1)
            goto L_0x0042
        L_0x00b0:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0047
        L_0x00b5:
            r0 = r1
            goto L_0x008a
        L_0x00b7:
            r0 = move-exception
            r4 = r2
            goto L_0x003d
        L_0x00ba:
            r0 = move-exception
            r2 = r3
            goto L_0x003d
        L_0x00bd:
            r0 = move-exception
            goto L_0x009b
        L_0x00bf:
            r0 = move-exception
            r2 = r3
            goto L_0x009b
        L_0x00c2:
            r0 = move-exception
            r1 = r2
            goto L_0x0039
        L_0x00c6:
            r0 = move-exception
            r1 = r3
            r2 = r4
            goto L_0x0039
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.Network.doHttpPostReqOnly(android.content.Context, java.lang.String, java.util.List):boolean");
    }

    public static String downloadXml(Context context, URL url) throws IOException {
        return downloadXml(context, url, false, (String) null, "UTF-8", (String) null);
    }

    public static String downloadXml(Context context, URL url, boolean z, String str, String str2, String str3) throws IOException {
        String str4 = null;
        try {
            InputStream downloadXmlAsStream = downloadXmlAsStream(context, url, z, str, str3);
            StringBuilder sb = new StringBuilder(1024);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(downloadXmlAsStream, str2), 1024);
            while (true) {
                str4 = bufferedReader.readLine();
                if (str4 == null) {
                    break;
                }
                sb.append(str4);
                sb.append("\r\n");
            }
            if (downloadXmlAsStream != null) {
                try {
                    downloadXmlAsStream.close();
                } catch (IOException e) {
                    Log.e(LogTag, "Failed to close responseStream" + e.toString());
                }
            }
            return sb.toString();
        } finally {
            if (str4 != null) {
                try {
                    str4.close();
                } catch (IOException e2) {
                    Log.e(LogTag, "Failed to close responseStream" + e2.toString());
                }
            }
        }
    }

    public static String downloadXml(Context context, URL url, String str, String str2, Map<String, String> map, com.mi.mimsgsdk.utils.NetworkUtils.HttpHeaderInfo httpHeaderInfo) throws IOException {
        InputStream inputStream;
        try {
            inputStream = downloadXmlAsStream(context, url, true, str, str2, map, httpHeaderInfo);
            try {
                StringBuilder sb = new StringBuilder(1024);
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"), 1024);
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append("\r\n");
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        Log.e(LogTag, "Failed to close responseStream" + e.toString());
                    }
                }
                return sb.toString();
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        Log.e(LogTag, "Failed to close responseStream" + e2.toString());
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0114  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0119  */
    /* JADX WARNING: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String tryDetectCharsetEncoding(java.net.URL r10, java.lang.String r11) throws java.io.IOException {
        /*
            r9 = 3
            r8 = 1
            r2 = 0
            r7 = 2
            if (r10 != 0) goto L_0x000e
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "url"
            r0.<init>(r1)
            throw r0
        L_0x000e:
            java.net.HttpURLConnection.setFollowRedirects(r8)
            java.net.URLConnection r0 = r10.openConnection()
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0
            r1 = 5000(0x1388, float:7.006E-42)
            r0.setConnectTimeout(r1)
            r1 = 15000(0x3a98, float:2.102E-41)
            r0.setReadTimeout(r1)
            boolean r1 = android.text.TextUtils.isEmpty(r11)
            if (r1 != 0) goto L_0x002c
            java.lang.String r1 = "User-Agent"
            r0.setRequestProperty(r1, r11)
        L_0x002c:
            java.lang.String r3 = r0.getContentType()
            boolean r1 = android.text.TextUtils.isEmpty(r3)
            if (r1 != 0) goto L_0x0143
            java.util.regex.Pattern r1 = ContentTypePattern_Charset
            java.util.regex.Matcher r1 = r1.matcher(r3)
            boolean r4 = r1.matches()
            if (r4 == 0) goto L_0x0140
            int r4 = r1.groupCount()
            if (r4 < r9) goto L_0x0140
            java.lang.String r1 = r1.group(r7)
            boolean r4 = android.text.TextUtils.isEmpty(r1)
            if (r4 != 0) goto L_0x0140
            java.lang.String r4 = "Network"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "HTTP charset detected is: "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r1)
            java.lang.String r5 = r5.toString()
            android.util.Log.v(r4, r5)
        L_0x006a:
            boolean r4 = android.text.TextUtils.isEmpty(r1)
            if (r4 == 0) goto L_0x010b
            java.util.regex.Pattern r4 = ContentTypePattern_MimeType
            java.util.regex.Matcher r3 = r4.matcher(r3)
            boolean r4 = r3.matches()
            if (r4 == 0) goto L_0x010b
            int r4 = r3.groupCount()
            if (r4 < r7) goto L_0x010b
            java.lang.String r3 = r3.group(r8)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 != 0) goto L_0x010b
            java.lang.String r3 = r3.toLowerCase()
            java.lang.String r4 = "application/"
            boolean r4 = r3.startsWith(r4)
            if (r4 == 0) goto L_0x010b
            java.lang.String r4 = "application/xml"
            boolean r4 = r3.startsWith(r4)
            if (r4 != 0) goto L_0x00a8
            java.lang.String r4 = "+xml"
            boolean r3 = r3.endsWith(r4)
            if (r3 == 0) goto L_0x010b
        L_0x00a8:
            com.mi.mimsgsdk.utils.Network$DoneHandlerInputStream r3 = new com.mi.mimsgsdk.utils.Network$DoneHandlerInputStream     // Catch:{ IOException -> 0x010c, Throwable -> 0x011d, all -> 0x012c }
            java.io.InputStream r0 = r0.getInputStream()     // Catch:{ IOException -> 0x010c, Throwable -> 0x011d, all -> 0x012c }
            r3.<init>(r0)     // Catch:{ IOException -> 0x010c, Throwable -> 0x011d, all -> 0x012c }
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch:{ IOException -> 0x0138, Throwable -> 0x0133, all -> 0x0130 }
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x0138, Throwable -> 0x0133, all -> 0x0130 }
            r0.<init>(r3)     // Catch:{ IOException -> 0x0138, Throwable -> 0x0133, all -> 0x0130 }
            r4.<init>(r0)     // Catch:{ IOException -> 0x0138, Throwable -> 0x0133, all -> 0x0130 }
        L_0x00bb:
            java.lang.String r0 = r4.readLine()     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            if (r0 == 0) goto L_0x0101
            java.lang.String r0 = r0.trim()     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            int r2 = r0.length()     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            if (r2 == 0) goto L_0x00bb
            java.util.regex.Pattern r2 = ContentTypePattern_XmlEncoding     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            java.util.regex.Matcher r0 = r2.matcher(r0)     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            boolean r2 = r0.matches()     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            if (r2 == 0) goto L_0x0101
            int r2 = r0.groupCount()     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            if (r2 < r9) goto L_0x0101
            r2 = 2
            java.lang.String r0 = r0.group(r2)     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            if (r2 != 0) goto L_0x0101
            java.lang.String r1 = "Network"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            r2.<init>()     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            java.lang.String r5 = "XML charset detected is: "
            java.lang.StringBuilder r2 = r2.append(r5)     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            java.lang.StringBuilder r2 = r2.append(r0)     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            java.lang.String r2 = r2.toString()     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            android.util.Log.v(r1, r2)     // Catch:{ IOException -> 0x013c, Throwable -> 0x0136 }
            r1 = r0
        L_0x0101:
            if (r3 == 0) goto L_0x0106
            r3.close()
        L_0x0106:
            if (r4 == 0) goto L_0x010b
            r4.close()
        L_0x010b:
            return r1
        L_0x010c:
            r0 = move-exception
            r1 = r2
        L_0x010e:
            throw r0     // Catch:{ all -> 0x010f }
        L_0x010f:
            r0 = move-exception
            r3 = r2
            r4 = r1
        L_0x0112:
            if (r3 == 0) goto L_0x0117
            r3.close()
        L_0x0117:
            if (r4 == 0) goto L_0x011c
            r4.close()
        L_0x011c:
            throw r0
        L_0x011d:
            r0 = move-exception
            r3 = r2
            r4 = r2
        L_0x0120:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x012a }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x012a }
            r1.<init>(r0)     // Catch:{ all -> 0x012a }
            throw r1     // Catch:{ all -> 0x012a }
        L_0x012a:
            r0 = move-exception
            goto L_0x0112
        L_0x012c:
            r0 = move-exception
            r3 = r2
            r4 = r2
            goto L_0x0112
        L_0x0130:
            r0 = move-exception
            r4 = r2
            goto L_0x0112
        L_0x0133:
            r0 = move-exception
            r4 = r2
            goto L_0x0120
        L_0x0136:
            r0 = move-exception
            goto L_0x0120
        L_0x0138:
            r0 = move-exception
            r1 = r2
            r2 = r3
            goto L_0x010e
        L_0x013c:
            r0 = move-exception
            r2 = r3
            r1 = r4
            goto L_0x010e
        L_0x0140:
            r1 = r2
            goto L_0x006a
        L_0x0143:
            r1 = r2
            goto L_0x010b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.Network.tryDetectCharsetEncoding(java.net.URL, java.lang.String):java.lang.String");
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:32:0x0093=Splitter:B:32:0x0093, B:40:0x009c=Splitter:B:40:0x009c} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.io.InputStream getHttpPostAsStream(java.net.URL r6, java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8, java.lang.String r9, java.lang.String r10) throws java.io.IOException {
        /*
            r1 = 0
            if (r6 != 0) goto L_0x000b
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "url"
            r0.<init>(r1)
            throw r0
        L_0x000b:
            r0 = 1
            java.net.HttpURLConnection.setFollowRedirects(r0)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            java.net.URLConnection r0 = r6.openConnection()     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            r2 = 5000(0x1388, float:7.006E-42)
            r0.setConnectTimeout(r2)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            r2 = 15000(0x3a98, float:2.102E-41)
            r0.setReadTimeout(r2)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            java.lang.String r2 = "POST"
            r0.setRequestMethod(r2)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            r2 = 1
            r0.setDoOutput(r2)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            boolean r2 = android.text.TextUtils.isEmpty(r9)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            if (r2 != 0) goto L_0x0033
            java.lang.String r2 = "User-Agent"
            r0.setRequestProperty(r2, r9)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
        L_0x0033:
            boolean r2 = android.text.TextUtils.isEmpty(r10)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            if (r2 != 0) goto L_0x003e
            java.lang.String r2 = "Cookie"
            r0.setRequestProperty(r2, r10)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
        L_0x003e:
            java.io.OutputStream r2 = r0.getOutputStream()     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            byte[] r3 = r7.getBytes()     // Catch:{ IOException -> 0x00b5, Throwable -> 0x00b2, all -> 0x00af }
            r2.write(r3)     // Catch:{ IOException -> 0x00b5, Throwable -> 0x00b2, all -> 0x00af }
            r2.flush()     // Catch:{ IOException -> 0x00b5, Throwable -> 0x00b2, all -> 0x00af }
            r2.close()     // Catch:{ IOException -> 0x00b5, Throwable -> 0x00b2, all -> 0x00af }
            r3 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            r2.<init>()     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            int r4 = r0.getResponseCode()     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            java.lang.String r4 = ""
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            java.lang.String r2 = r2.toString()     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            java.lang.String r4 = "ResponseCode"
            r8.put(r4, r2)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            r2 = 0
        L_0x006d:
            java.lang.String r4 = r0.getHeaderFieldKey(r2)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            java.lang.String r5 = r0.getHeaderField(r2)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            if (r4 != 0) goto L_0x0083
            if (r5 != 0) goto L_0x0083
            java.io.InputStream r0 = r0.getInputStream()     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            if (r1 == 0) goto L_0x0082
            r3.close()     // Catch:{ IOException -> 0x0089 }
        L_0x0082:
            return r0
        L_0x0083:
            r8.put(r4, r5)     // Catch:{ IOException -> 0x0092, Throwable -> 0x009b }
            int r2 = r2 + 1
            goto L_0x006d
        L_0x0089:
            r1 = move-exception
            java.lang.String r2 = "Network"
            java.lang.String r3 = "error while closing strean"
            android.util.Log.e(r2, r3, r1)
            goto L_0x0082
        L_0x0092:
            r0 = move-exception
        L_0x0093:
            throw r0     // Catch:{ all -> 0x0094 }
        L_0x0094:
            r0 = move-exception
        L_0x0095:
            if (r1 == 0) goto L_0x009a
            r1.close()     // Catch:{ IOException -> 0x00a6 }
        L_0x009a:
            throw r0
        L_0x009b:
            r0 = move-exception
        L_0x009c:
            java.io.IOException r2 = new java.io.IOException     // Catch:{ all -> 0x0094 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0094 }
            r2.<init>(r0)     // Catch:{ all -> 0x0094 }
            throw r2     // Catch:{ all -> 0x0094 }
        L_0x00a6:
            r1 = move-exception
            java.lang.String r2 = "Network"
            java.lang.String r3 = "error while closing strean"
            android.util.Log.e(r2, r3, r1)
            goto L_0x009a
        L_0x00af:
            r0 = move-exception
            r1 = r2
            goto L_0x0095
        L_0x00b2:
            r0 = move-exception
            r1 = r2
            goto L_0x009c
        L_0x00b5:
            r0 = move-exception
            r1 = r2
            goto L_0x0093
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.Network.getHttpPostAsStream(java.net.URL, java.lang.String, java.util.Map, java.lang.String, java.lang.String):java.io.InputStream");
    }

    public static com.mi.mimsgsdk.utils.NetworkUtils.HttpHeaderInfo getHttpHeaderInfo(String str, String str2, String str3) {
        int i = 0;
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals(HttpHost.DEFAULT_SCHEME_NAME) && !url.getProtocol().equals("https")) {
                return null;
            }
            HttpURLConnection.setFollowRedirects(false);
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            if (str.indexOf("wap") == -1) {
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
            } else {
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(15000);
            }
            if (!TextUtils.isEmpty(str2)) {
                httpURLConnection.setRequestProperty("User-Agent", str2);
            }
            if (str3 != null) {
                httpURLConnection.setRequestProperty("Cookie", str3);
            }
            com.mi.mimsgsdk.utils.NetworkUtils.HttpHeaderInfo httpHeaderInfo = new com.mi.mimsgsdk.utils.NetworkUtils.HttpHeaderInfo();
            httpHeaderInfo.ResponseCode = httpURLConnection.getResponseCode();
            httpHeaderInfo.UserAgent = str2;
            while (true) {
                int i2 = i;
                String headerFieldKey = httpURLConnection.getHeaderFieldKey(i2);
                String headerField = httpURLConnection.getHeaderField(i2);
                if (headerFieldKey == null && headerField == null) {
                    return httpHeaderInfo;
                }
                if (headerFieldKey != null) {
                    if (headerFieldKey.equals("content-type")) {
                        httpHeaderInfo.ContentType = headerField;
                    }
                }
                if (headerFieldKey != null && headerFieldKey.equals("location")) {
                    URI uri = new URI(headerField);
                    if (!uri.isAbsolute()) {
                        uri = new URI(str).resolve(uri);
                    }
                    httpHeaderInfo.realUrl = uri.toString();
                }
                i = i2 + 1;
            }
        } catch (MalformedURLException e) {
            Log.e(LogTag, "Failed to transform URL", e);
            return null;
        } catch (IOException e2) {
            Log.e(LogTag, "Failed to get mime type", e2);
            return null;
        } catch (URISyntaxException e3) {
            Log.e(LogTag, "Failed to parse URI", e3);
            return null;
        } catch (Throwable th) {
            Log.e(LogTag, "Failed to get HttpHeaderInfo", th);
            return null;
        }
    }

    public static String fromParamListToString(List<NameValuePair> list) {
        StringBuffer stringBuffer;
        StringBuffer stringBuffer2 = new StringBuffer();
        for (NameValuePair nameValuePair : list) {
            try {
                if (nameValuePair.getValue() != null) {
                    stringBuffer2.append(URLEncoder.encode(nameValuePair.getName(), "UTF-8"));
                    stringBuffer2.append("=");
                    stringBuffer2.append(URLEncoder.encode(nameValuePair.getValue(), "UTF-8"));
                    stringBuffer2.append("&");
                }
            } catch (UnsupportedEncodingException e) {
                Log.d(LogTag, "Failed to convert from param list to string: " + e.toString());
                Log.d(LogTag, "pair: " + nameValuePair.toString());
                return null;
            }
        }
        if (stringBuffer2.length() > 0) {
            stringBuffer = stringBuffer2.deleteCharAt(stringBuffer2.length() - 1);
        } else {
            stringBuffer = stringBuffer2;
        }
        return stringBuffer.toString();
    }

    public static JSONObject doHttpPostWithResponseStatus(Context context, String str, List<NameValuePair> list, Map<String, String> map, String str2, String str3) {
        HttpPost httpPost;
        if (context == null) {
            throw new IllegalArgumentException("context");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("url");
        } else {
            JSONObject jSONObject = new JSONObject();
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 15000);
            if (!TextUtils.isEmpty(str2)) {
                HttpProtocolParams.setUserAgent(basicHttpParams, str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                basicHttpParams.setParameter("Cookie", str3);
            }
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
            try {
                if (isCmwap()) {
                    URL url = new URL(str);
                    String cMWapUrl = getCMWapUrl(url);
                    String host = url.getHost();
                    httpPost = new HttpPost(cMWapUrl);
                    httpPost.addHeader("X-Online-Host", host);
                } else {
                    httpPost = new HttpPost(str);
                }
                if (!(list == null || list.size() == 0)) {
                    httpPost.setEntity(new UrlEncodedFormEntity(list, "UTF-8"));
                }
                HttpResponse execute = defaultHttpClient.execute(httpPost);
                String str4 = "";
                int statusCode = execute.getStatusLine().getStatusCode();
                HttpEntity entity = execute.getEntity();
                if (entity != null) {
                    str4 = EntityUtils.toString(entity);
                }
                jSONObject.put("RESPONSE_CODE", statusCode);
                jSONObject.put("RESPONSE_BODY", str4);
                if (!jSONObject.has("RESPONSE_CODE") || !jSONObject.has("RESPONSE_BODY")) {
                    jSONObject.remove("RESPONSE_CODE");
                    jSONObject.remove("RESPONSE_BODY");
                }
            } catch (ParseException e) {
                Log.e(LogTag, "doHttpPostWithResponseStatus", e);
                if (!jSONObject.has("RESPONSE_CODE") || !jSONObject.has("RESPONSE_BODY")) {
                    jSONObject.remove("RESPONSE_CODE");
                    jSONObject.remove("RESPONSE_BODY");
                }
            } catch (IOException e2) {
                Log.e(LogTag, "doHttpPostWithResponseStatus", e2);
                if (!jSONObject.has("RESPONSE_CODE") || !jSONObject.has("RESPONSE_BODY")) {
                    jSONObject.remove("RESPONSE_CODE");
                    jSONObject.remove("RESPONSE_BODY");
                }
            } catch (JSONException e3) {
                Log.e(LogTag, "doHttpPostWithResponseStatus", e3);
                if (!jSONObject.has("RESPONSE_CODE") || !jSONObject.has("RESPONSE_BODY")) {
                    jSONObject.remove("RESPONSE_CODE");
                    jSONObject.remove("RESPONSE_BODY");
                }
            } catch (Throwable th) {
                if (!jSONObject.has("RESPONSE_CODE") || !jSONObject.has("RESPONSE_BODY")) {
                    jSONObject.remove("RESPONSE_CODE");
                    jSONObject.remove("RESPONSE_BODY");
                }
                throw th;
            }
            return jSONObject;
        }
    }

    public static String doHttpPost(Context context, String str, List<NameValuePair> list) throws IOException {
        return doHttpPost(context, str, list, null, null, null);
    }

    private static URL getDefaultStreamHandlerURL(String str) throws MalformedURLException {
        return new URL(str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x004d A[SYNTHETIC, Splitter:B:20:0x004d] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0052 A[Catch:{ IOException -> 0x0106 }] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:16:0x0049=Splitter:B:16:0x0049, B:62:0x00fc=Splitter:B:62:0x00fc} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String doHttpPost(android.content.Context r9, java.lang.String r10, java.util.List<org.apache.http.NameValuePair> r11, com.mi.mimsgsdk.utils.Network.HttpHeaderInfo r12, java.lang.String r13, java.lang.String r14) throws java.io.IOException {
        /*
            r0 = 0
            r1 = 0
            boolean r2 = android.text.TextUtils.isEmpty(r10)
            if (r2 == 0) goto L_0x0010
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "url"
            r0.<init>(r1)
            throw r0
        L_0x0010:
            java.net.URL r2 = getDefaultStreamHandlerURL(r10)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.net.HttpURLConnection r3 = getHttpUrlConnection(r9, r2)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            r2 = 10000(0x2710, float:1.4013E-41)
            r3.setConnectTimeout(r2)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            r2 = 15000(0x3a98, float:2.102E-41)
            r3.setReadTimeout(r2)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.lang.String r2 = "POST"
            r3.setRequestMethod(r2)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            boolean r2 = android.text.TextUtils.isEmpty(r13)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            if (r2 != 0) goto L_0x0032
            java.lang.String r2 = "User-Agent"
            r3.setRequestProperty(r2, r13)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
        L_0x0032:
            if (r14 == 0) goto L_0x0039
            java.lang.String r2 = "Cookie"
            r3.setRequestProperty(r2, r14)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
        L_0x0039:
            java.lang.String r2 = fromParamListToString(r11)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            if (r2 != 0) goto L_0x0056
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.lang.String r2 = "nameValuePairs"
            r0.<init>(r2)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            throw r0     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
        L_0x0047:
            r0 = move-exception
            r2 = r1
        L_0x0049:
            throw r0     // Catch:{ all -> 0x004a }
        L_0x004a:
            r0 = move-exception
        L_0x004b:
            if (r2 == 0) goto L_0x0050
            r2.close()     // Catch:{ IOException -> 0x0106 }
        L_0x0050:
            if (r1 == 0) goto L_0x0055
            r1.close()     // Catch:{ IOException -> 0x0106 }
        L_0x0055:
            throw r0
        L_0x0056:
            r4 = 1
            r3.setDoOutput(r4)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            byte[] r4 = r2.getBytes()     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.io.OutputStream r2 = r3.getOutputStream()     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            r5 = 0
            int r6 = r4.length     // Catch:{ IOException -> 0x0121, Throwable -> 0x011a }
            r2.write(r4, r5, r6)     // Catch:{ IOException -> 0x0121, Throwable -> 0x011a }
            r2.flush()     // Catch:{ IOException -> 0x0121, Throwable -> 0x011a }
            r2.close()     // Catch:{ IOException -> 0x0121, Throwable -> 0x011a }
            r4 = 0
            int r2 = r3.getResponseCode()     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.lang.String r5 = "Network"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            r6.<init>()     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.lang.String r7 = "Http POST Response Code: "
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.lang.StringBuilder r6 = r6.append(r2)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.lang.String r6 = r6.toString()     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            android.util.Log.d(r5, r6)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            if (r12 == 0) goto L_0x00a5
            r12.ResponseCode = r2     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.util.Map<java.lang.String, java.lang.String> r2 = r12.AllHeaders     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            if (r2 != 0) goto L_0x0099
            java.util.HashMap r2 = new java.util.HashMap     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            r2.<init>()     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            r12.AllHeaders = r2     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
        L_0x0099:
            java.lang.String r2 = r3.getHeaderFieldKey(r0)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.lang.String r5 = r3.getHeaderField(r0)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            if (r2 != 0) goto L_0x00d4
            if (r5 != 0) goto L_0x00d4
        L_0x00a5:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            com.mi.mimsgsdk.utils.Network$DoneHandlerInputStream r5 = new com.mi.mimsgsdk.utils.Network$DoneHandlerInputStream     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.io.InputStream r3 = r3.getInputStream()     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            r5.<init>(r3)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            r0.<init>(r5)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            r2.<init>(r0)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            java.lang.String r0 = r2.readLine()     // Catch:{ IOException -> 0x0124, Throwable -> 0x011c, all -> 0x0114 }
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch:{ IOException -> 0x0124, Throwable -> 0x011c, all -> 0x0114 }
            r3.<init>()     // Catch:{ IOException -> 0x0124, Throwable -> 0x011c, all -> 0x0114 }
            java.lang.String r5 = "line.separator"
            java.lang.String r5 = java.lang.System.getProperty(r5)     // Catch:{ IOException -> 0x0124, Throwable -> 0x011c, all -> 0x0114 }
        L_0x00c7:
            if (r0 == 0) goto L_0x00de
            r3.append(r0)     // Catch:{ IOException -> 0x0124, Throwable -> 0x011c, all -> 0x0114 }
            r3.append(r5)     // Catch:{ IOException -> 0x0124, Throwable -> 0x011c, all -> 0x0114 }
            java.lang.String r0 = r2.readLine()     // Catch:{ IOException -> 0x0124, Throwable -> 0x011c, all -> 0x0114 }
            goto L_0x00c7
        L_0x00d4:
            java.util.Map<java.lang.String, java.lang.String> r6 = r12.AllHeaders     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            r6.put(r2, r5)     // Catch:{ IOException -> 0x0047, Throwable -> 0x00fa, all -> 0x0110 }
            int r0 = r0 + 1
            int r0 = r0 + 1
            goto L_0x0099
        L_0x00de:
            java.lang.String r3 = r3.toString()     // Catch:{ IOException -> 0x0124, Throwable -> 0x011c, all -> 0x0114 }
            r2.close()     // Catch:{ IOException -> 0x0124, Throwable -> 0x011c, all -> 0x0114 }
            r0 = 0
            if (r1 == 0) goto L_0x00eb
            r4.close()     // Catch:{ IOException -> 0x00f1 }
        L_0x00eb:
            if (r1 == 0) goto L_0x00f0
            r0.close()     // Catch:{ IOException -> 0x00f1 }
        L_0x00f0:
            return r3
        L_0x00f1:
            r0 = move-exception
            java.lang.String r1 = "Network"
            java.lang.String r2 = "error while closing strean"
            android.util.Log.e(r1, r2, r0)
            goto L_0x00f0
        L_0x00fa:
            r0 = move-exception
            r2 = r1
        L_0x00fc:
            java.io.IOException r3 = new java.io.IOException     // Catch:{ all -> 0x004a }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x004a }
            r3.<init>(r0)     // Catch:{ all -> 0x004a }
            throw r3     // Catch:{ all -> 0x004a }
        L_0x0106:
            r1 = move-exception
            java.lang.String r2 = "Network"
            java.lang.String r3 = "error while closing strean"
            android.util.Log.e(r2, r3, r1)
            goto L_0x0055
        L_0x0110:
            r0 = move-exception
            r2 = r1
            goto L_0x004b
        L_0x0114:
            r0 = move-exception
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x004b
        L_0x011a:
            r0 = move-exception
            goto L_0x00fc
        L_0x011c:
            r0 = move-exception
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x00fc
        L_0x0121:
            r0 = move-exception
            goto L_0x0049
        L_0x0124:
            r0 = move-exception
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x0049
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.Network.doHttpPost(android.content.Context, java.lang.String, java.util.List, com.mi.mimsgsdk.utils.Network$HttpHeaderInfo, java.lang.String, java.lang.String):java.lang.String");
    }

    public static String encryptURL(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        new String();
        return String.format("%s&key=%s", new Object[]{str, MD5.MD5_32(String.format("%sbe988a6134bc8254465424e5a70ef037", new Object[]{str}))});
    }

    public static void beginDownloadFile(String str, OutputStream outputStream, PostDownloadHandler postDownloadHandler) {
        new DownloadTask(str, outputStream, postDownloadHandler).execute(new Void[0]);
    }

    public static void beginDownloadFile(String str, OutputStream outputStream, Context context, boolean z, PostDownloadHandler postDownloadHandler) {
        new DownloadTask(str, outputStream, postDownloadHandler, z, context).execute(new Void[0]);
    }

    public static boolean downloadFile(String str, OutputStream outputStream) {
        return downloadFile(str, outputStream, false, null);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        r7.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0073, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:?, code lost:
        android.util.Log.e(LogTag, "error while download file" + r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x008c, code lost:
        if (r3 != null) goto L_0x008e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:?, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:?, code lost:
        r7.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0099, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x00b6, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x00b7, code lost:
        r1 = r3;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0069 A[SYNTHETIC, Splitter:B:29:0x0069] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x006e A[SYNTHETIC, Splitter:B:32:0x006e] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0073 A[ExcHandler: Throwable (r0v1 'th' java.lang.Throwable A[CUSTOM_DECLARE]), Splitter:B:1:0x0003] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0093 A[SYNTHETIC, Splitter:B:43:0x0093] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x009c A[SYNTHETIC, Splitter:B:48:0x009c] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00a1 A[SYNTHETIC, Splitter:B:51:0x00a1] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean downloadFile(java.lang.String r6, java.io.OutputStream r7, boolean r8, android.content.Context r9) {
        /*
            r1 = 1
            r2 = 0
            r3 = 0
            java.net.URL r0 = new java.net.URL     // Catch:{ IOException -> 0x004d, Throwable -> 0x0073 }
            r0.<init>(r6)     // Catch:{ IOException -> 0x004d, Throwable -> 0x0073 }
            java.net.URLConnection r0 = r0.openConnection()     // Catch:{ IOException -> 0x004d, Throwable -> 0x0073 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x004d, Throwable -> 0x0073 }
            r4 = 10000(0x2710, float:1.4013E-41)
            r0.setConnectTimeout(r4)     // Catch:{ IOException -> 0x004d, Throwable -> 0x0073 }
            r4 = 15000(0x3a98, float:2.102E-41)
            r0.setReadTimeout(r4)     // Catch:{ IOException -> 0x004d, Throwable -> 0x0073 }
            r4 = 1
            java.net.HttpURLConnection.setFollowRedirects(r4)     // Catch:{ IOException -> 0x004d, Throwable -> 0x0073 }
            r0.connect()     // Catch:{ IOException -> 0x004d, Throwable -> 0x0073 }
            java.io.InputStream r3 = r0.getInputStream()     // Catch:{ IOException -> 0x004d, Throwable -> 0x0073 }
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0073 }
        L_0x0027:
            int r4 = r3.read(r0)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0073 }
            r5 = -1
            if (r4 == r5) goto L_0x00b9
            r5 = 0
            r7.write(r0, r5, r4)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0073 }
            if (r8 == 0) goto L_0x0027
            if (r9 == 0) goto L_0x0027
            boolean r4 = isWIFIConnected(r9)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0073 }
            if (r4 != 0) goto L_0x0027
            r0 = r1
        L_0x003d:
            if (r0 != 0) goto L_0x004b
            r0 = r1
        L_0x0040:
            if (r3 == 0) goto L_0x0045
            r3.close()     // Catch:{ IOException -> 0x00a5 }
        L_0x0045:
            if (r7 == 0) goto L_0x004a
            r7.close()     // Catch:{ IOException -> 0x00a7 }
        L_0x004a:
            return r0
        L_0x004b:
            r0 = r2
            goto L_0x0040
        L_0x004d:
            r0 = move-exception
            r1 = r3
        L_0x004f:
            java.lang.String r3 = "Network"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x00b3 }
            r4.<init>()     // Catch:{ all -> 0x00b3 }
            java.lang.String r5 = "error while download file"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x00b3 }
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ all -> 0x00b3 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x00b3 }
            android.util.Log.e(r3, r0)     // Catch:{ all -> 0x00b3 }
            if (r1 == 0) goto L_0x006c
            r1.close()     // Catch:{ IOException -> 0x00a9 }
        L_0x006c:
            if (r7 == 0) goto L_0x0071
            r7.close()     // Catch:{ IOException -> 0x00ab }
        L_0x0071:
            r0 = r2
            goto L_0x004a
        L_0x0073:
            r0 = move-exception
            java.lang.String r1 = "Network"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0099 }
            r4.<init>()     // Catch:{ all -> 0x0099 }
            java.lang.String r5 = "error while download file"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0099 }
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ all -> 0x0099 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0099 }
            android.util.Log.e(r1, r0)     // Catch:{ all -> 0x0099 }
            if (r3 == 0) goto L_0x0091
            r3.close()     // Catch:{ IOException -> 0x00ad }
        L_0x0091:
            if (r7 == 0) goto L_0x0071
            r7.close()     // Catch:{ IOException -> 0x0097 }
            goto L_0x0071
        L_0x0097:
            r0 = move-exception
            goto L_0x0071
        L_0x0099:
            r0 = move-exception
        L_0x009a:
            if (r3 == 0) goto L_0x009f
            r3.close()     // Catch:{ IOException -> 0x00af }
        L_0x009f:
            if (r7 == 0) goto L_0x00a4
            r7.close()     // Catch:{ IOException -> 0x00b1 }
        L_0x00a4:
            throw r0
        L_0x00a5:
            r1 = move-exception
            goto L_0x0045
        L_0x00a7:
            r1 = move-exception
            goto L_0x004a
        L_0x00a9:
            r0 = move-exception
            goto L_0x006c
        L_0x00ab:
            r0 = move-exception
            goto L_0x0071
        L_0x00ad:
            r0 = move-exception
            goto L_0x0091
        L_0x00af:
            r1 = move-exception
            goto L_0x009f
        L_0x00b1:
            r1 = move-exception
            goto L_0x00a4
        L_0x00b3:
            r0 = move-exception
            r3 = r1
            goto L_0x009a
        L_0x00b6:
            r0 = move-exception
            r1 = r3
            goto L_0x004f
        L_0x00b9:
            r0 = r2
            goto L_0x003d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.Network.downloadFile(java.lang.String, java.io.OutputStream, boolean, android.content.Context):boolean");
    }

    public static boolean downloadFile(String str, OutputStream outputStream, Context context) {
        HttpURLConnection httpURLConnection;
        try {
            URL url = new URL(str);
            if (isCmwap()) {
                HttpURLConnection.setFollowRedirects(false);
                String cMWapUrl = getCMWapUrl(url);
                String host = url.getHost();
                httpURLConnection = (HttpURLConnection) new URL(cMWapUrl).openConnection();
                httpURLConnection.setRequestProperty("X-Online-Host", host);
                int responseCode = httpURLConnection.getResponseCode();
                while (responseCode >= 300 && responseCode < 400) {
                    String headerField = httpURLConnection.getHeaderField("location");
                    if (TextUtils.isEmpty(headerField)) {
                        break;
                    }
                    URL url2 = new URL(headerField);
                    String cMWapUrl2 = getCMWapUrl(url2);
                    String host2 = url2.getHost();
                    httpURLConnection = (HttpURLConnection) new URL(cMWapUrl2).openConnection();
                    httpURLConnection.setRequestProperty("X-Online-Host", host2);
                    responseCode = httpURLConnection.getResponseCode();
                }
            } else {
                httpURLConnection = (HttpURLConnection) url.openConnection();
                HttpURLConnection.setFollowRedirects(true);
            }
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(15000);
            httpURLConnection.connect();
            InputStream inputStream = httpURLConnection.getInputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read > 0) {
                    outputStream.write(bArr, 0, read);
                } else {
                    inputStream.close();
                    outputStream.close();
                    return true;
                }
            }
        } catch (IOException e) {
            Log.e(LogTag, "error while download file" + e);
            return false;
        } catch (Throwable th) {
            Log.e(LogTag, "error while download file" + th);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x00bf A[SYNTHETIC, Splitter:B:22:0x00bf] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00c4 A[Catch:{ IOException -> 0x013e }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00c9 A[Catch:{ IOException -> 0x013e }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String uploadFile(java.lang.String r8, java.io.File r9, java.lang.String r10) throws java.io.IOException {
        /*
            r1 = 0
            boolean r0 = r9.exists()
            if (r0 != 0) goto L_0x0009
            r0 = r1
        L_0x0008:
            return r0
        L_0x0009:
            java.lang.String r2 = r9.getName()
            java.lang.String r0 = "\r\n"
            java.lang.String r0 = "--"
            java.lang.String r0 = "*****"
            java.net.URL r0 = new java.net.URL     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            r0.<init>(r8)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            java.net.URLConnection r0 = r0.openConnection()     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            r3 = 15000(0x3a98, float:2.102E-41)
            r0.setReadTimeout(r3)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            r3 = 10000(0x2710, float:1.4013E-41)
            r0.setConnectTimeout(r3)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            r3 = 1
            r0.setDoInput(r3)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            r3 = 1
            r0.setDoOutput(r3)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            r3 = 0
            r0.setUseCaches(r3)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            java.lang.String r3 = "POST"
            r0.setRequestMethod(r3)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            java.lang.String r3 = "Connection"
            java.lang.String r4 = "Keep-Alive"
            r0.setRequestProperty(r3, r4)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            java.lang.String r3 = "Content-Type"
            java.lang.String r4 = "multipart/form-data;boundary=*****"
            r0.setRequestProperty(r3, r4)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            int r2 = r2.length()     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            int r2 = r2 + 77
            long r4 = r9.length()     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            int r3 = (int) r4     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            int r2 = r2 + r3
            int r3 = r10.length()     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            int r2 = r2 + r3
            r0.setFixedLengthStreamingMode(r2)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            java.io.DataOutputStream r3 = new java.io.DataOutputStream     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            java.io.OutputStream r2 = r0.getOutputStream()     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            r3.<init>(r2)     // Catch:{ IOException -> 0x015c, Throwable -> 0x012f, all -> 0x0147 }
            java.lang.String r2 = "--*****\r\n"
            r3.writeBytes(r2)     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            r2.<init>()     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.lang.String r4 = "Content-Disposition: form-data; name=\""
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.lang.StringBuilder r2 = r2.append(r10)     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.lang.String r4 = "\";filename=\""
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.lang.String r4 = r9.getName()     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.lang.String r4 = "\""
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.lang.String r4 = "\r\n"
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.lang.String r2 = r2.toString()     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            r3.writeBytes(r2)     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.lang.String r2 = "\r\n"
            r3.writeBytes(r2)     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            r4.<init>(r9)     // Catch:{ IOException -> 0x0161, Throwable -> 0x0154, all -> 0x014c }
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
        L_0x00a7:
            int r5 = r4.read(r2)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            r6 = -1
            if (r5 == r6) goto L_0x00cd
            r6 = 0
            r3.write(r2, r6, r5)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            r3.flush()     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            goto L_0x00a7
        L_0x00b6:
            r0 = move-exception
            r2 = r3
            r3 = r4
        L_0x00b9:
            throw r0     // Catch:{ all -> 0x00ba }
        L_0x00ba:
            r0 = move-exception
            r4 = r3
            r3 = r2
        L_0x00bd:
            if (r4 == 0) goto L_0x00c2
            r4.close()     // Catch:{ IOException -> 0x013e }
        L_0x00c2:
            if (r3 == 0) goto L_0x00c7
            r3.close()     // Catch:{ IOException -> 0x013e }
        L_0x00c7:
            if (r1 == 0) goto L_0x00cc
            r1.close()     // Catch:{ IOException -> 0x013e }
        L_0x00cc:
            throw r0
        L_0x00cd:
            java.lang.String r2 = "\r\n"
            r3.writeBytes(r2)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            java.lang.String r2 = "--"
            r3.writeBytes(r2)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            java.lang.String r2 = "*****"
            r3.writeBytes(r2)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            java.lang.String r2 = "--"
            r3.writeBytes(r2)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            java.lang.String r2 = "\r\n"
            r3.writeBytes(r2)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            r3.flush()     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            java.lang.StringBuffer r5 = new java.lang.StringBuffer     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            r5.<init>()     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            java.io.InputStreamReader r6 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            com.mi.mimsgsdk.utils.Network$DoneHandlerInputStream r7 = new com.mi.mimsgsdk.utils.Network$DoneHandlerInputStream     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            java.io.InputStream r0 = r0.getInputStream()     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            r7.<init>(r0)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            r6.<init>(r7)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
            r2.<init>(r6)     // Catch:{ IOException -> 0x00b6, Throwable -> 0x0157 }
        L_0x0101:
            java.lang.String r0 = r2.readLine()     // Catch:{ IOException -> 0x010b, Throwable -> 0x0159, all -> 0x0150 }
            if (r0 == 0) goto L_0x0110
            r5.append(r0)     // Catch:{ IOException -> 0x010b, Throwable -> 0x0159, all -> 0x0150 }
            goto L_0x0101
        L_0x010b:
            r0 = move-exception
            r1 = r2
            r2 = r3
            r3 = r4
            goto L_0x00b9
        L_0x0110:
            java.lang.String r0 = r5.toString()     // Catch:{ IOException -> 0x010b, Throwable -> 0x0159, all -> 0x0150 }
            if (r4 == 0) goto L_0x0119
            r4.close()     // Catch:{ IOException -> 0x0125 }
        L_0x0119:
            if (r3 == 0) goto L_0x011e
            r3.close()     // Catch:{ IOException -> 0x0125 }
        L_0x011e:
            if (r2 == 0) goto L_0x0008
            r2.close()     // Catch:{ IOException -> 0x0125 }
            goto L_0x0008
        L_0x0125:
            r1 = move-exception
            java.lang.String r2 = "Network"
            java.lang.String r3 = "error while closing strean"
            android.util.Log.e(r2, r3, r1)
            goto L_0x0008
        L_0x012f:
            r0 = move-exception
            r3 = r1
            r4 = r1
        L_0x0132:
            java.io.IOException r2 = new java.io.IOException     // Catch:{ all -> 0x013c }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x013c }
            r2.<init>(r0)     // Catch:{ all -> 0x013c }
            throw r2     // Catch:{ all -> 0x013c }
        L_0x013c:
            r0 = move-exception
            goto L_0x00bd
        L_0x013e:
            r1 = move-exception
            java.lang.String r2 = "Network"
            java.lang.String r3 = "error while closing strean"
            android.util.Log.e(r2, r3, r1)
            goto L_0x00cc
        L_0x0147:
            r0 = move-exception
            r3 = r1
            r4 = r1
            goto L_0x00bd
        L_0x014c:
            r0 = move-exception
            r4 = r1
            goto L_0x00bd
        L_0x0150:
            r0 = move-exception
            r1 = r2
            goto L_0x00bd
        L_0x0154:
            r0 = move-exception
            r4 = r1
            goto L_0x0132
        L_0x0157:
            r0 = move-exception
            goto L_0x0132
        L_0x0159:
            r0 = move-exception
            r1 = r2
            goto L_0x0132
        L_0x015c:
            r0 = move-exception
            r2 = r1
            r3 = r1
            goto L_0x00b9
        L_0x0161:
            r0 = move-exception
            r2 = r3
            r3 = r1
            goto L_0x00b9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.Network.uploadFile(java.lang.String, java.io.File, java.lang.String):java.lang.String");
    }

    public static int getActiveNetworkType(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return -1;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return -1;
                }
                return activeNetworkInfo.getType();
            } catch (Exception e) {
                return -1;
            }
        } catch (Exception e2) {
            return -1;
        }
    }

    public static String getActiveNetworkName(Context context) {
        String str = "null";
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return str;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return str;
                }
                if (TextUtils.isEmpty(activeNetworkInfo.getSubtypeName())) {
                    return activeNetworkInfo.getTypeName();
                }
                return String.format("%s-%s", new Object[]{activeNetworkInfo.getTypeName(), activeNetworkInfo.getSubtypeName()});
            } catch (Exception e) {
                return str;
            }
        } catch (Exception e2) {
            return str;
        }
    }

    public static boolean isCmwap() {
        if (GlobalData.app() == null) {
            ClientLog.d("NetWork", " isCmwap Globaldata.app = null ");
        }
        TelephonyManager telephonyManager = (TelephonyManager) GlobalData.app().getSystemService(UserInfo.TYPE_PHONE);
        if (telephonyManager == null) {
            ClientLog.d("NetWork", " isCmwap tm= null ");
        }
        if (!"CN".equalsIgnoreCase(telephonyManager.getSimCountryIso())) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) GlobalData.app().getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3 || extraInfo.contains("ctwap")) {
                    return false;
                }
                return extraInfo.regionMatches(true, extraInfo.length() - 3, "wap", 0, 3);
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean isCtwap(Context context) {
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getSimCountryIso())) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3) {
                    return false;
                }
                return extraInfo.contains("ctwap");
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static HttpURLConnection getHttpUrlConnection(Context context, URL url) throws IOException {
        if (!HttpHost.DEFAULT_SCHEME_NAME.equals(url.getProtocol())) {
            return (HttpURLConnection) url.openConnection();
        }
        if (isCtwap(context)) {
            return (HttpURLConnection) url.openConnection(new Proxy(Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
        }
        if (!isCmwap()) {
            return (HttpURLConnection) url.openConnection();
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(getCMWapUrl(url)).openConnection();
        httpURLConnection.addRequestProperty("X-Online-Host", url.getHost());
        return httpURLConnection;
    }

    public static String getCMWapUrl(URL url) {
        StringBuilder sb = new StringBuilder();
        sb.append(url.getProtocol()).append("://").append("10.0.0.172").append(url.getPath());
        if (!TextUtils.isEmpty(url.getQuery())) {
            sb.append("?").append(url.getQuery());
        }
        return sb.toString();
    }

    public static boolean hasNetwork(Context context) {
        return getActiveNetworkType(context) >= 0;
    }

    public static String getLocalNetworkType(Context context) {
        if (isWIFIConnected(context)) {
            return NETWORK_TYPE_WIFI;
        }
        String str = EnvironmentCompat.MEDIA_UNKNOWN;
        NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(0);
        return networkInfo != null ? networkInfo.getExtraInfo() : str;
    }

    public static boolean isWIFIConnected(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return false;
                }
                return 1 == activeNetworkInfo.getType();
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static String getActiveConnPoint(Context context) {
        if (isWIFIConnected(context)) {
            return NETWORK_TYPE_WIFI;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return "";
            }
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return "";
                }
                return (activeNetworkInfo.getTypeName() + "-" + activeNetworkInfo.getSubtypeName() + "-" + activeNetworkInfo.getExtraInfo()).toLowerCase();
            } catch (Exception e) {
                return "";
            }
        } catch (Exception e2) {
            return "";
        }
    }

    public static String doHttpGet(Context context, String str) throws IOException {
        return doHttpGet(context, str, true, null, null, null, null);
    }

    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r3v1 */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r3v2, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v4, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r3v5 */
    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r3v6 */
    /* JADX WARNING: type inference failed for: r1v11 */
    /* JADX WARNING: type inference failed for: r2v8, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r1v12 */
    /* JADX WARNING: type inference failed for: r3v7 */
    /* JADX WARNING: type inference failed for: r1v13, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r3v10 */
    /* JADX WARNING: type inference failed for: r3v15 */
    /* JADX WARNING: type inference failed for: r3v16 */
    /* JADX WARNING: type inference failed for: r3v17 */
    /* JADX WARNING: type inference failed for: r3v18 */
    /* JADX WARNING: type inference failed for: r3v19 */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: type inference failed for: r2v16 */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: type inference failed for: r2v18 */
    /* JADX WARNING: type inference failed for: r1v27 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r3v1
  assigns: []
  uses: []
  mth insns count: 151
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
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0076 A[SYNTHETIC, Splitter:B:29:0x0076] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x007b A[SYNTHETIC, Splitter:B:32:0x007b] */
    /* JADX WARNING: Unknown variable types count: 9 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String doHttpGet(android.content.Context r6, java.lang.String r7, boolean r8, java.lang.String r9, java.lang.String r10, java.util.Map<java.lang.String, java.lang.String> r11, com.mi.mimsgsdk.utils.NetworkUtils.HttpHeaderInfo r12) throws java.io.IOException {
        /*
            r3 = 0
            java.lang.String r0 = ""
            if (r6 != 0) goto L_0x000d
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "context"
            r0.<init>(r1)
            throw r0
        L_0x000d:
            if (r7 != 0) goto L_0x0017
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "url"
            r0.<init>(r1)
            throw r0
        L_0x0017:
            java.net.URL r2 = getDefaultStreamHandlerURL(r7)
            if (r8 != 0) goto L_0x018e
            java.net.URL r0 = new java.net.URL
            java.lang.String r1 = r2.toString()
            java.lang.String r1 = encryptURL(r1)
            r0.<init>(r1)
        L_0x002a:
            r1 = 1
            java.net.HttpURLConnection.setFollowRedirects(r1)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            java.net.HttpURLConnection r4 = getHttpUrlConnection(r6, r0)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            r0 = 10000(0x2710, float:1.4013E-41)
            r4.setConnectTimeout(r0)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            r0 = 15000(0x3a98, float:2.102E-41)
            r4.setReadTimeout(r0)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            boolean r0 = android.text.TextUtils.isEmpty(r9)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            if (r0 != 0) goto L_0x0047
            java.lang.String r0 = "User-Agent"
            r4.setRequestProperty(r0, r9)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
        L_0x0047:
            if (r10 == 0) goto L_0x004e
            java.lang.String r0 = "Cookie"
            r4.setRequestProperty(r0, r10)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
        L_0x004e:
            if (r11 == 0) goto L_0x007f
            java.util.Set r0 = r11.keySet()     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            java.util.Iterator r5 = r0.iterator()     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
        L_0x0058:
            boolean r0 = r5.hasNext()     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            if (r0 == 0) goto L_0x007f
            java.lang.Object r0 = r5.next()     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            java.lang.Object r1 = r11.get(r0)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            r4.setRequestProperty(r0, r1)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            goto L_0x0058
        L_0x006e:
            r0 = move-exception
            r1 = r3
        L_0x0070:
            throw r0     // Catch:{ all -> 0x0071 }
        L_0x0071:
            r0 = move-exception
            r2 = r3
            r3 = r1
        L_0x0074:
            if (r2 == 0) goto L_0x0079
            r2.close()     // Catch:{ IOException -> 0x013c }
        L_0x0079:
            if (r3 == 0) goto L_0x007e
            r3.close()     // Catch:{ IOException -> 0x015b }
        L_0x007e:
            throw r0
        L_0x007f:
            if (r12 == 0) goto L_0x00b7
            java.lang.String r0 = r2.getProtocol()     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            java.lang.String r1 = "http"
            boolean r0 = r0.equals(r1)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            if (r0 != 0) goto L_0x0099
            java.lang.String r0 = r2.getProtocol()     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            java.lang.String r1 = "https"
            boolean r0 = r0.equals(r1)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            if (r0 == 0) goto L_0x00b7
        L_0x0099:
            int r0 = r4.getResponseCode()     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            r12.ResponseCode = r0     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            java.util.Map<java.lang.String, java.lang.String> r0 = r12.AllHeaders     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            if (r0 != 0) goto L_0x00aa
            java.util.HashMap r0 = new java.util.HashMap     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            r0.<init>()     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            r12.AllHeaders = r0     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
        L_0x00aa:
            r0 = 0
        L_0x00ab:
            java.lang.String r1 = r4.getHeaderFieldKey(r0)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            java.lang.String r2 = r4.getHeaderField(r0)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            if (r1 != 0) goto L_0x00ce
            if (r2 != 0) goto L_0x00ce
        L_0x00b7:
            java.io.InputStream r2 = r4.getInputStream()     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x0189, Throwable -> 0x0182 }
            r1.<init>()     // Catch:{ IOException -> 0x0189, Throwable -> 0x0182 }
        L_0x00c0:
            int r0 = r2.read()     // Catch:{ IOException -> 0x00cb, Throwable -> 0x0185, all -> 0x017e }
            r3 = -1
            if (r0 == r3) goto L_0x00f1
            r1.write(r0)     // Catch:{ IOException -> 0x00cb, Throwable -> 0x0185, all -> 0x017e }
            goto L_0x00c0
        L_0x00cb:
            r0 = move-exception
            r3 = r2
            goto L_0x0070
        L_0x00ce:
            boolean r5 = android.text.TextUtils.isEmpty(r1)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            if (r5 != 0) goto L_0x00da
            boolean r5 = android.text.TextUtils.isEmpty(r2)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            if (r5 == 0) goto L_0x00dd
        L_0x00da:
            int r0 = r0 + 1
            goto L_0x00ab
        L_0x00dd:
            java.util.Map<java.lang.String, java.lang.String> r5 = r12.AllHeaders     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            r5.put(r1, r2)     // Catch:{ IOException -> 0x006e, Throwable -> 0x00e3, all -> 0x017a }
            goto L_0x00da
        L_0x00e3:
            r0 = move-exception
            r2 = r3
        L_0x00e5:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x00ef }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x00ef }
            r1.<init>(r0)     // Catch:{ all -> 0x00ef }
            throw r1     // Catch:{ all -> 0x00ef }
        L_0x00ef:
            r0 = move-exception
            goto L_0x0074
        L_0x00f1:
            java.lang.String r0 = r1.toString()     // Catch:{ IOException -> 0x00cb, Throwable -> 0x0185, all -> 0x017e }
            if (r2 == 0) goto L_0x00fa
            r2.close()     // Catch:{ IOException -> 0x0100 }
        L_0x00fa:
            if (r1 == 0) goto L_0x00ff
            r1.close()     // Catch:{ IOException -> 0x011e }
        L_0x00ff:
            return r0
        L_0x0100:
            r2 = move-exception
            java.lang.String r3 = "Network"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "error while closing responseStream,"
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r2 = r4.append(r2)
            java.lang.String r2 = r2.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r3, r2)
            goto L_0x00fa
        L_0x011e:
            r1 = move-exception
            java.lang.String r2 = "Network"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "error while closing baos,"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r2, r1)
            goto L_0x00ff
        L_0x013c:
            r1 = move-exception
            java.lang.String r2 = "Network"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "error while closing responseStream,"
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r1 = r4.append(r1)
            java.lang.String r1 = r1.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r2, r1)
            goto L_0x0079
        L_0x015b:
            r1 = move-exception
            java.lang.String r2 = "Network"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "error while closing baos,"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r2, r1)
            goto L_0x007e
        L_0x017a:
            r0 = move-exception
            r2 = r3
            goto L_0x0074
        L_0x017e:
            r0 = move-exception
            r3 = r1
            goto L_0x0074
        L_0x0182:
            r0 = move-exception
            goto L_0x00e5
        L_0x0185:
            r0 = move-exception
            r3 = r1
            goto L_0x00e5
        L_0x0189:
            r0 = move-exception
            r1 = r3
            r3 = r2
            goto L_0x0070
        L_0x018e:
            r0 = r2
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.Network.doHttpGet(android.content.Context, java.lang.String, boolean, java.lang.String, java.lang.String, java.util.Map, com.mi.mimsgsdk.utils.NetworkUtils$HttpHeaderInfo):java.lang.String");
    }

    private static void trustAllHosts() {
        String str = "trustAllHosts";
        TrustManager[] trustManagerArr = {new X509TrustManager() {
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }

            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                Log.i("trustAllHosts", "checkClientTrusted");
            }

            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                Log.i("trustAllHosts", "checkServerTrusted");
            }
        }};
        try {
            SSLContext instance = SSLContext.getInstance("TLS");
            instance.init(null, trustManagerArr, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(instance.getSocketFactory());
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r1v1, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r2v1, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r2v5, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: type inference failed for: r0v13, types: [javax.net.ssl.HttpsURLConnection] */
    /* JADX WARNING: type inference failed for: r0v15, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r2v8, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r1v3 */
    /* JADX WARNING: type inference failed for: r2v10 */
    /* JADX WARNING: type inference failed for: r1v4 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r2v12 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r2v14 */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: type inference failed for: r2v16 */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: type inference failed for: r2v18 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r2v6
  assigns: []
  uses: []
  mth insns count: 86
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
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x004e A[SYNTHETIC, Splitter:B:20:0x004e] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0070 A[SYNTHETIC, Splitter:B:36:0x0070] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0075  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0082 A[SYNTHETIC, Splitter:B:45:0x0082] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0090  */
    /* JADX WARNING: Unknown variable types count: 9 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String httpGet(java.lang.String r6) {
        /*
            r1 = 0
            java.net.URL r2 = new java.net.URL     // Catch:{ MalformedURLException -> 0x0067, all -> 0x007e }
            r2.<init>(r6)     // Catch:{ MalformedURLException -> 0x0067, all -> 0x007e }
            trustAllHosts()     // Catch:{ IOException -> 0x00a5 }
            java.net.URLConnection r0 = r2.openConnection()     // Catch:{ IOException -> 0x00a5 }
            javax.net.ssl.HttpsURLConnection r0 = (javax.net.ssl.HttpsURLConnection) r0     // Catch:{ IOException -> 0x00a5 }
            java.lang.String r3 = r2.getProtocol()     // Catch:{ IOException -> 0x00a5 }
            java.lang.String r3 = r3.toLowerCase()     // Catch:{ IOException -> 0x00a5 }
            java.lang.String r4 = "https"
            boolean r3 = r3.equals(r4)     // Catch:{ IOException -> 0x00a5 }
            if (r3 == 0) goto L_0x005a
            javax.net.ssl.HostnameVerifier r2 = DO_NOT_VERIFY     // Catch:{ IOException -> 0x00a5 }
            r0.setHostnameVerifier(r2)     // Catch:{ IOException -> 0x00a5 }
            r2 = r0
        L_0x0025:
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch:{ IOException -> 0x00aa, MalformedURLException -> 0x009c, all -> 0x0095 }
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x00aa, MalformedURLException -> 0x009c, all -> 0x0095 }
            java.io.InputStream r3 = r2.getInputStream()     // Catch:{ IOException -> 0x00aa, MalformedURLException -> 0x009c, all -> 0x0095 }
            r0.<init>(r3)     // Catch:{ IOException -> 0x00aa, MalformedURLException -> 0x009c, all -> 0x0095 }
            r4.<init>(r0)     // Catch:{ IOException -> 0x00aa, MalformedURLException -> 0x009c, all -> 0x0095 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x00ae, MalformedURLException -> 0x00a0 }
            r3.<init>()     // Catch:{ IOException -> 0x00ae, MalformedURLException -> 0x00a0 }
        L_0x0038:
            java.lang.String r0 = r4.readLine()     // Catch:{ IOException -> 0x0048 }
            if (r0 == 0) goto L_0x004c
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ IOException -> 0x0048 }
            java.lang.String r5 = "\n"
            r0.append(r5)     // Catch:{ IOException -> 0x0048 }
            goto L_0x0038
        L_0x0048:
            r0 = move-exception
        L_0x0049:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ MalformedURLException -> 0x00a3 }
        L_0x004c:
            if (r4 == 0) goto L_0x0051
            r4.close()     // Catch:{ IOException -> 0x0062 }
        L_0x0051:
            if (r2 == 0) goto L_0x0056
            r2.disconnect()
        L_0x0056:
            if (r3 != 0) goto L_0x0090
            r0 = r1
        L_0x0059:
            return r0
        L_0x005a:
            java.net.URLConnection r0 = r2.openConnection()     // Catch:{ IOException -> 0x00a5 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x00a5 }
            r2 = r0
            goto L_0x0025
        L_0x0062:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0051
        L_0x0067:
            r0 = move-exception
            r2 = r1
            r3 = r1
            r4 = r1
        L_0x006b:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0099 }
            if (r4 == 0) goto L_0x0073
            r4.close()     // Catch:{ IOException -> 0x0079 }
        L_0x0073:
            if (r2 == 0) goto L_0x0056
            r2.disconnect()
            goto L_0x0056
        L_0x0079:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0073
        L_0x007e:
            r0 = move-exception
            r4 = r1
        L_0x0080:
            if (r4 == 0) goto L_0x0085
            r4.close()     // Catch:{ IOException -> 0x008b }
        L_0x0085:
            if (r1 == 0) goto L_0x008a
            r1.disconnect()
        L_0x008a:
            throw r0
        L_0x008b:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x0085
        L_0x0090:
            java.lang.String r0 = r3.toString()
            goto L_0x0059
        L_0x0095:
            r0 = move-exception
            r4 = r1
            r1 = r2
            goto L_0x0080
        L_0x0099:
            r0 = move-exception
            r1 = r2
            goto L_0x0080
        L_0x009c:
            r0 = move-exception
            r3 = r1
            r4 = r1
            goto L_0x006b
        L_0x00a0:
            r0 = move-exception
            r3 = r1
            goto L_0x006b
        L_0x00a3:
            r0 = move-exception
            goto L_0x006b
        L_0x00a5:
            r0 = move-exception
            r2 = r1
            r3 = r1
            r4 = r1
            goto L_0x0049
        L_0x00aa:
            r0 = move-exception
            r3 = r1
            r4 = r1
            goto L_0x0049
        L_0x00ae:
            r0 = move-exception
            r3 = r1
            goto L_0x0049
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.Network.httpGet(java.lang.String):java.lang.String");
    }
}
