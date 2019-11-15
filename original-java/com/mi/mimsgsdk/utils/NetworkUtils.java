package com.mi.mimsgsdk.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.ifengyu.im.account.UserInfo;
import java.io.BufferedReader;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
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
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class NetworkUtils {
    public static final int CHINA_MOBILE = 1;
    public static final int CHINA_TELECOM = 3;
    public static final int CHINA_UNICOM = 2;
    public static final String CMWAP_GATEWAY = "10.0.0.172";
    public static final String CMWAP_HEADER_HOST_KEY = "X-Online-Host";
    public static final int CMWAP_PORT = 80;
    public static final int CONNECTION_TIMEOUT = 10000;
    public static final Pattern ContentTypePattern_Charset = Pattern.compile("(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
    public static final Pattern ContentTypePattern_MimeType = Pattern.compile("([^\\s;]+)(.*)");
    public static final Pattern ContentTypePattern_XmlEncoding = Pattern.compile("(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
    public static String KEY_SUFFIX = "#XiaomiKey123";
    private static final String LogTag = NetworkUtils.class.getName();
    public static final int READ_TIMEOUT = 15000;
    public static final String RESPONSE_BODY = "RESPONSE_BODY";
    public static final String RESPONSE_CODE = "RESPONSE_CODE";
    public static final int UNKNOWN = 0;
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

    public static class HttpHeaderInfo {
        public Map<String, String> AllHeaders;
        public String ContentType;
        public int ResponseCode;
        public String UserAgent;
        public String realUrl;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0122  */
    /* JADX WARNING: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String tryDetectCharsetEncoding(java.net.URL r10, java.lang.String r11) throws java.io.IOException {
        /*
            r2 = 0
            r9 = 3
            r8 = 1
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
            java.lang.String r1 = "http.useragent"
            r0.setRequestProperty(r1, r11)
        L_0x002c:
            java.lang.String r3 = r0.getContentType()
            boolean r1 = android.text.TextUtils.isEmpty(r3)
            if (r1 != 0) goto L_0x012c
            java.util.regex.Pattern r1 = ContentTypePattern_Charset
            java.util.regex.Matcher r1 = r1.matcher(r3)
            boolean r4 = r1.matches()
            if (r4 == 0) goto L_0x0129
            int r4 = r1.groupCount()
            if (r4 < r9) goto L_0x0129
            java.lang.String r1 = r1.group(r7)
            boolean r4 = android.text.TextUtils.isEmpty(r1)
            if (r4 != 0) goto L_0x0129
            java.lang.String r4 = LogTag
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "HTTP charset detected is: "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r1)
            java.lang.String r5 = r5.toString()
            android.util.Log.v(r4, r5)
        L_0x006a:
            boolean r4 = android.text.TextUtils.isEmpty(r1)
            if (r4 == 0) goto L_0x011e
            java.util.regex.Pattern r4 = ContentTypePattern_MimeType
            java.util.regex.Matcher r3 = r4.matcher(r3)
            boolean r4 = r3.matches()
            if (r4 == 0) goto L_0x011e
            int r4 = r3.groupCount()
            if (r4 < r7) goto L_0x011e
            java.lang.String r3 = r3.group(r8)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 != 0) goto L_0x011e
            java.lang.String r3 = r3.toLowerCase()
            java.lang.String r4 = "application/"
            boolean r4 = r3.startsWith(r4)
            if (r4 == 0) goto L_0x011e
            java.lang.String r4 = "application/xml"
            boolean r4 = r3.startsWith(r4)
            if (r4 != 0) goto L_0x00a8
            java.lang.String r4 = "+xml"
            boolean r3 = r3.endsWith(r4)
            if (r3 == 0) goto L_0x011e
        L_0x00a8:
            java.lang.String r3 = LogTag     // Catch:{ all -> 0x011f }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x011f }
            r4.<init>()     // Catch:{ all -> 0x011f }
            java.lang.String r5 = "tryDetectCharsetEncoding, getInputStream from http request "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x011f }
            java.lang.StringBuilder r4 = r4.append(r10)     // Catch:{ all -> 0x011f }
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x011f }
            android.util.Log.i(r3, r4)     // Catch:{ all -> 0x011f }
            com.mi.mimsgsdk.utils.NetworkUtils$DoneHandlerInputStream r3 = new com.mi.mimsgsdk.utils.NetworkUtils$DoneHandlerInputStream     // Catch:{ all -> 0x011f }
            java.io.InputStream r0 = r0.getInputStream()     // Catch:{ all -> 0x011f }
            r3.<init>(r0)     // Catch:{ all -> 0x011f }
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch:{ all -> 0x0126 }
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch:{ all -> 0x0126 }
            r2.<init>(r3)     // Catch:{ all -> 0x0126 }
            r0.<init>(r2)     // Catch:{ all -> 0x0126 }
        L_0x00d3:
            java.lang.String r2 = r0.readLine()     // Catch:{ all -> 0x0126 }
            if (r2 == 0) goto L_0x0119
            java.lang.String r2 = r2.trim()     // Catch:{ all -> 0x0126 }
            int r4 = r2.length()     // Catch:{ all -> 0x0126 }
            if (r4 == 0) goto L_0x00d3
            java.util.regex.Pattern r0 = ContentTypePattern_XmlEncoding     // Catch:{ all -> 0x0126 }
            java.util.regex.Matcher r0 = r0.matcher(r2)     // Catch:{ all -> 0x0126 }
            boolean r2 = r0.matches()     // Catch:{ all -> 0x0126 }
            if (r2 == 0) goto L_0x0119
            int r2 = r0.groupCount()     // Catch:{ all -> 0x0126 }
            if (r2 < r9) goto L_0x0119
            r2 = 2
            java.lang.String r0 = r0.group(r2)     // Catch:{ all -> 0x0126 }
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch:{ all -> 0x0126 }
            if (r2 != 0) goto L_0x0119
            java.lang.String r1 = LogTag     // Catch:{ all -> 0x0126 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0126 }
            r2.<init>()     // Catch:{ all -> 0x0126 }
            java.lang.String r4 = "XML charset detected is: "
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ all -> 0x0126 }
            java.lang.StringBuilder r2 = r2.append(r0)     // Catch:{ all -> 0x0126 }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x0126 }
            android.util.Log.v(r1, r2)     // Catch:{ all -> 0x0126 }
            r1 = r0
        L_0x0119:
            if (r3 == 0) goto L_0x011e
            r3.close()
        L_0x011e:
            return r1
        L_0x011f:
            r0 = move-exception
        L_0x0120:
            if (r2 == 0) goto L_0x0125
            r2.close()
        L_0x0125:
            throw r0
        L_0x0126:
            r0 = move-exception
            r2 = r3
            goto L_0x0120
        L_0x0129:
            r1 = r2
            goto L_0x006a
        L_0x012c:
            r1 = r2
            goto L_0x011e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.NetworkUtils.tryDetectCharsetEncoding(java.net.URL, java.lang.String):java.lang.String");
    }

    public static InputStream getHttpPostAsStream(URL url, String str, Map<String, String> map, String str2, String str3) throws IOException {
        if (url == null) {
            throw new IllegalArgumentException("url");
        }
        HttpURLConnection.setFollowRedirects(true);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(5000);
        httpURLConnection.setReadTimeout(15000);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        if (!TextUtils.isEmpty(str2)) {
            httpURLConnection.setRequestProperty(CoreProtocolPNames.USER_AGENT, str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            httpURLConnection.setRequestProperty("Cookie", str3);
        }
        httpURLConnection.getOutputStream().write(str.getBytes());
        httpURLConnection.getOutputStream().flush();
        httpURLConnection.getOutputStream().close();
        map.put("ResponseCode", httpURLConnection.getResponseCode() + "");
        int i = 0;
        while (true) {
            String headerFieldKey = httpURLConnection.getHeaderFieldKey(i);
            String headerField = httpURLConnection.getHeaderField(i);
            if (headerFieldKey == null && headerField == null) {
                Log.i(LogTag, "getHttpPostAsStream, getInputStream from http request " + url);
                return httpURLConnection.getInputStream();
            }
            map.put(headerFieldKey, headerField);
            i++;
        }
    }

    public static HttpHeaderInfo getHttpHeaderInfo(String str, String str2, String str3) {
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
                httpURLConnection.setRequestProperty(CoreProtocolPNames.USER_AGENT, str2);
            }
            if (str3 != null) {
                httpURLConnection.setRequestProperty("Cookie", str3);
            }
            HttpHeaderInfo httpHeaderInfo = new HttpHeaderInfo();
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
                Log.i(LogTag, "Failed to convert from param list to string: " + e.toString());
                Log.i(LogTag, "pair: " + nameValuePair.toString());
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
                if (isCmwap(context)) {
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
                Log.i(LogTag, "execute http request " + httpPost.getURI());
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

    public static String doHttpPost(Context context, String str, List<NameValuePair> list, Map<String, String> map, String str2, String str3) throws IOException {
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("url");
        }
        HttpURLConnection httpUrlConnection = getHttpUrlConnection(context, new URL(str));
        httpUrlConnection.setConnectTimeout(10000);
        httpUrlConnection.setReadTimeout(15000);
        httpUrlConnection.setRequestMethod("POST");
        if (!TextUtils.isEmpty(str2)) {
            httpUrlConnection.setRequestProperty(CoreProtocolPNames.USER_AGENT, str2);
        }
        if (str3 != null) {
            httpUrlConnection.setRequestProperty("Cookie", str3);
        }
        String fromParamListToString = fromParamListToString(list);
        Log.i("Dozen", " url : " + str + ", str params : " + fromParamListToString);
        if (fromParamListToString == null) {
            throw new IllegalArgumentException("nameValuePairs");
        }
        httpUrlConnection.setDoOutput(true);
        byte[] bytes = fromParamListToString.getBytes();
        httpUrlConnection.getOutputStream().write(bytes, 0, bytes.length);
        httpUrlConnection.getOutputStream().flush();
        httpUrlConnection.getOutputStream().close();
        Log.i(LogTag, "http POST Response Code: " + httpUrlConnection.getResponseCode());
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new DoneHandlerInputStream(httpUrlConnection.getInputStream())));
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
            stringBuffer.append(readLine);
            stringBuffer.append(property);
        }
        String stringBuffer2 = stringBuffer.toString();
        bufferedReader.close();
        if (map != null) {
            while (true) {
                String headerFieldKey = httpUrlConnection.getHeaderFieldKey(i);
                String headerField = httpUrlConnection.getHeaderField(i);
                if (headerFieldKey == null && headerField == null) {
                    break;
                }
                map.put(headerFieldKey, headerField);
                i = i + 1 + 1;
            }
        }
        return stringBuffer2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x00bb A[SYNTHETIC, Splitter:B:18:0x00bb] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x00c0 A[Catch:{ IOException -> 0x0147 }] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00c5 A[Catch:{ IOException -> 0x0147 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String uploadFile(java.lang.String r9, java.io.File r10, java.lang.String r11) throws java.io.IOException {
        /*
            r1 = 0
            boolean r0 = r10.exists()
            if (r0 != 0) goto L_0x0009
            r0 = r1
        L_0x0008:
            return r0
        L_0x0009:
            java.lang.String r2 = r10.getName()
            java.lang.String r0 = "\r\n"
            java.lang.String r0 = "--"
            java.lang.String r0 = "*****"
            java.net.URL r0 = new java.net.URL     // Catch:{ all -> 0x0151 }
            r0.<init>(r9)     // Catch:{ all -> 0x0151 }
            java.net.URLConnection r0 = r0.openConnection()     // Catch:{ all -> 0x0151 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ all -> 0x0151 }
            r3 = 15000(0x3a98, float:2.102E-41)
            r0.setReadTimeout(r3)     // Catch:{ all -> 0x0151 }
            r3 = 10000(0x2710, float:1.4013E-41)
            r0.setConnectTimeout(r3)     // Catch:{ all -> 0x0151 }
            r3 = 1
            r0.setDoInput(r3)     // Catch:{ all -> 0x0151 }
            r3 = 1
            r0.setDoOutput(r3)     // Catch:{ all -> 0x0151 }
            r3 = 0
            r0.setUseCaches(r3)     // Catch:{ all -> 0x0151 }
            java.lang.String r3 = "POST"
            r0.setRequestMethod(r3)     // Catch:{ all -> 0x0151 }
            java.lang.String r3 = "Connection"
            java.lang.String r4 = "Keep-Alive"
            r0.setRequestProperty(r3, r4)     // Catch:{ all -> 0x0151 }
            java.lang.String r3 = "Content-Type"
            java.lang.String r4 = "multipart/form-data;boundary=*****"
            r0.setRequestProperty(r3, r4)     // Catch:{ all -> 0x0151 }
            int r2 = r2.length()     // Catch:{ all -> 0x0151 }
            int r2 = r2 + 77
            long r4 = r10.length()     // Catch:{ all -> 0x0151 }
            int r3 = (int) r4     // Catch:{ all -> 0x0151 }
            int r2 = r2 + r3
            int r3 = r11.length()     // Catch:{ all -> 0x0151 }
            int r2 = r2 + r3
            r0.setFixedLengthStreamingMode(r2)     // Catch:{ all -> 0x0151 }
            java.io.DataOutputStream r3 = new java.io.DataOutputStream     // Catch:{ all -> 0x0151 }
            java.io.OutputStream r2 = r0.getOutputStream()     // Catch:{ all -> 0x0151 }
            r3.<init>(r2)     // Catch:{ all -> 0x0151 }
            java.lang.String r2 = "--*****\r\n"
            r3.writeBytes(r2)     // Catch:{ all -> 0x0156 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0156 }
            r2.<init>()     // Catch:{ all -> 0x0156 }
            java.lang.String r4 = "Content-Disposition: form-data; name=\""
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ all -> 0x0156 }
            java.lang.StringBuilder r2 = r2.append(r11)     // Catch:{ all -> 0x0156 }
            java.lang.String r4 = "\";filename=\""
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ all -> 0x0156 }
            java.lang.String r4 = r10.getName()     // Catch:{ all -> 0x0156 }
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ all -> 0x0156 }
            java.lang.String r4 = "\""
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ all -> 0x0156 }
            java.lang.String r4 = "\r\n"
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ all -> 0x0156 }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x0156 }
            r3.writeBytes(r2)     // Catch:{ all -> 0x0156 }
            java.lang.String r2 = "\r\n"
            r3.writeBytes(r2)     // Catch:{ all -> 0x0156 }
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch:{ all -> 0x0156 }
            r4.<init>(r10)     // Catch:{ all -> 0x0156 }
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r2]     // Catch:{ all -> 0x00b6 }
        L_0x00a7:
            int r5 = r4.read(r2)     // Catch:{ all -> 0x00b6 }
            r6 = -1
            if (r5 == r6) goto L_0x00c9
            r6 = 0
            r3.write(r2, r6, r5)     // Catch:{ all -> 0x00b6 }
            r3.flush()     // Catch:{ all -> 0x00b6 }
            goto L_0x00a7
        L_0x00b6:
            r0 = move-exception
            r2 = r3
            r3 = r4
        L_0x00b9:
            if (r3 == 0) goto L_0x00be
            r3.close()     // Catch:{ IOException -> 0x0147 }
        L_0x00be:
            if (r2 == 0) goto L_0x00c3
            r2.close()     // Catch:{ IOException -> 0x0147 }
        L_0x00c3:
            if (r1 == 0) goto L_0x00c8
            r1.close()     // Catch:{ IOException -> 0x0147 }
        L_0x00c8:
            throw r0
        L_0x00c9:
            java.lang.String r2 = "\r\n"
            r3.writeBytes(r2)     // Catch:{ all -> 0x00b6 }
            java.lang.String r2 = "--"
            r3.writeBytes(r2)     // Catch:{ all -> 0x00b6 }
            java.lang.String r2 = "*****"
            r3.writeBytes(r2)     // Catch:{ all -> 0x00b6 }
            java.lang.String r2 = "--"
            r3.writeBytes(r2)     // Catch:{ all -> 0x00b6 }
            java.lang.String r2 = "\r\n"
            r3.writeBytes(r2)     // Catch:{ all -> 0x00b6 }
            r3.flush()     // Catch:{ all -> 0x00b6 }
            java.lang.StringBuffer r5 = new java.lang.StringBuffer     // Catch:{ all -> 0x00b6 }
            r5.<init>()     // Catch:{ all -> 0x00b6 }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ all -> 0x00b6 }
            java.io.InputStreamReader r6 = new java.io.InputStreamReader     // Catch:{ all -> 0x00b6 }
            com.mi.mimsgsdk.utils.NetworkUtils$DoneHandlerInputStream r7 = new com.mi.mimsgsdk.utils.NetworkUtils$DoneHandlerInputStream     // Catch:{ all -> 0x00b6 }
            java.io.InputStream r8 = r0.getInputStream()     // Catch:{ all -> 0x00b6 }
            r7.<init>(r8)     // Catch:{ all -> 0x00b6 }
            r6.<init>(r7)     // Catch:{ all -> 0x00b6 }
            r2.<init>(r6)     // Catch:{ all -> 0x00b6 }
            java.lang.String r1 = LogTag     // Catch:{ all -> 0x0123 }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x0123 }
            r6.<init>()     // Catch:{ all -> 0x0123 }
            java.lang.String r7 = "uploadFile, getInputStream from http request "
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch:{ all -> 0x0123 }
            java.net.URL r0 = r0.getURL()     // Catch:{ all -> 0x0123 }
            java.lang.StringBuilder r0 = r6.append(r0)     // Catch:{ all -> 0x0123 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0123 }
            android.util.Log.i(r1, r0)     // Catch:{ all -> 0x0123 }
        L_0x0119:
            java.lang.String r0 = r2.readLine()     // Catch:{ all -> 0x0123 }
            if (r0 == 0) goto L_0x0128
            r5.append(r0)     // Catch:{ all -> 0x0123 }
            goto L_0x0119
        L_0x0123:
            r0 = move-exception
            r1 = r2
            r2 = r3
            r3 = r4
            goto L_0x00b9
        L_0x0128:
            java.lang.String r0 = r5.toString()     // Catch:{ all -> 0x0123 }
            if (r4 == 0) goto L_0x0131
            r4.close()     // Catch:{ IOException -> 0x013d }
        L_0x0131:
            if (r3 == 0) goto L_0x0136
            r3.close()     // Catch:{ IOException -> 0x013d }
        L_0x0136:
            if (r2 == 0) goto L_0x0008
            r2.close()     // Catch:{ IOException -> 0x013d }
            goto L_0x0008
        L_0x013d:
            r1 = move-exception
            java.lang.String r2 = LogTag
            java.lang.String r3 = "error while closing strean"
            android.util.Log.e(r2, r3, r1)
            goto L_0x0008
        L_0x0147:
            r1 = move-exception
            java.lang.String r2 = LogTag
            java.lang.String r3 = "error while closing strean"
            android.util.Log.e(r2, r3, r1)
            goto L_0x00c8
        L_0x0151:
            r0 = move-exception
            r2 = r1
            r3 = r1
            goto L_0x00b9
        L_0x0156:
            r0 = move-exception
            r2 = r3
            r3 = r1
            goto L_0x00b9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.utils.NetworkUtils.uploadFile(java.lang.String, java.io.File, java.lang.String):java.lang.String");
    }

    public static int getActiveNetworkType(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return -1;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return -1;
        }
        return activeNetworkInfo.getType();
    }

    public static String getActiveNetworkName(Context context) {
        String str = "null";
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return str;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return str;
        }
        if (TextUtils.isEmpty(activeNetworkInfo.getSubtypeName())) {
            return activeNetworkInfo.getTypeName();
        }
        return String.format("%s-%s", new Object[]{activeNetworkInfo.getTypeName(), activeNetworkInfo.getSubtypeName()});
    }

    public static boolean isWifi(Context context) {
        return getActiveNetworkType(context) == 1;
    }

    public static boolean hasNetwork(Context context) {
        return getActiveNetworkType(context) != -1;
    }

    public static boolean isCmwap(Context context) {
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getSimCountryIso())) {
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        String extraInfo = activeNetworkInfo.getExtraInfo();
        if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3 || extraInfo.contains("ctwap")) {
            return false;
        }
        return extraInfo.regionMatches(true, extraInfo.length() - 3, "wap", 0, 3);
    }

    public static boolean isCtwap(Context context) {
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getSimCountryIso())) {
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        String extraInfo = activeNetworkInfo.getExtraInfo();
        if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3) {
            return false;
        }
        return extraInfo.contains("ctwap");
    }

    public static HttpURLConnection getHttpUrlConnection(Context context, URL url) throws IOException {
        if (isCtwap(context)) {
            return (HttpURLConnection) url.openConnection(new Proxy(Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
        }
        if (!isCmwap(context)) {
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

    public static int getNetType(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return 0;
        }
        return activeNetworkInfo.getType() + 1;
    }

    public static int getNetSubType(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE);
        if (telephonyManager == null) {
            return 0;
        }
        return telephonyManager.getNetworkType();
    }

    public static int getCarrier(Context context) {
        String subscriberId;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE);
        if (telephonyManager.getSubscriberId() == null) {
            subscriberId = "";
        } else {
            subscriberId = telephonyManager.getSubscriberId();
        }
        if (subscriberId.startsWith("46000") || subscriberId.startsWith("46002") || subscriberId.startsWith("46007")) {
            return 1;
        }
        if (subscriberId.startsWith("46001") || subscriberId.startsWith("46006")) {
            return 2;
        }
        if (subscriberId.startsWith("46003") || subscriberId.startsWith("46005")) {
            return 3;
        }
        return 0;
    }
}
