package com.mi.milinkforgame.sdk.base.os;

import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public final class SimpleRequest {
    private static final String ENC = "utf-8";
    private static final String TAG = "SimpleRequest";
    private static final int TIMEOUT = 20000;

    public static class HeaderContent {
        private final Map<String, String> cookies = new HashMap();
        private final Map<String, String> headers = new HashMap();

        public void putHeader(String str, String str2) {
            this.headers.put(str, str2);
        }

        public String getHeader(String str) {
            return (String) this.headers.get(str);
        }

        public void putCookie(String str, String str2) {
            this.cookies.put(str, str2);
        }

        public String getCookie(String str) {
            return (String) this.cookies.get(str);
        }

        public Map<String, String> getHeaders() {
            return this.headers;
        }

        public void putHeaders(Map<String, String> map) {
            this.headers.putAll(map);
        }

        public Map<String, String> getCookies() {
            return this.cookies;
        }

        public void putCookies(Map<String, String> map) {
            this.cookies.putAll(map);
        }

        public String toString() {
            return "HeaderContent{headers=" + this.headers + '}';
        }
    }

    public static class LengthPair {
        public int compressLength;
        public int originLength;
    }

    public static class MapContent extends HeaderContent {
        private Map<String, Object> bodies;

        public MapContent(Map<String, Object> map) {
            this.bodies = map;
        }

        public Object getFromBody(String str) {
            return this.bodies.get(str);
        }

        public String toString() {
            return "MapContent{bodies=" + this.bodies + '}';
        }
    }

    public static class StreamContent extends HeaderContent {
        private InputStream stream;

        public StreamContent(InputStream inputStream) {
            this.stream = inputStream;
        }

        public InputStream getStream() {
            return this.stream;
        }
    }

    public static class StringContent extends HeaderContent {
        private String body;

        public StringContent(String str) {
            this.body = str;
        }

        public String getBody() {
            return this.body;
        }

        public String toString() {
            return "StringContent{body='" + this.body + '\'' + '}';
        }
    }

    protected static String appendUrl(String str, List<NameValuePair> list) {
        if (str == null) {
            throw new NullPointerException("origin is not allowed null");
        }
        StringBuilder sb = new StringBuilder(str);
        if (list != null) {
            String format = URLEncodedUtils.format(list, ENC);
            if (format != null && format.length() > 0) {
                if (str.contains("?")) {
                    sb.append("&");
                } else {
                    sb.append("?");
                }
                sb.append(format);
            }
        }
        return sb.toString();
    }

    public static List<NameValuePair> mapToPairs(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (str2 == null) {
                str2 = "";
            }
            arrayList.add(new BasicNameValuePair(str, str2));
        }
        return arrayList;
    }

    public static Map<String, String> listToMap(Map<String, List<String>> map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                if (!(str == null || list == null || list.size() <= 0)) {
                    hashMap.put(str, list.get(0));
                }
            }
        }
        return hashMap;
    }

    public static StringContent postAsString(String str, Map<String, String> map, Map<String, String> map2, boolean z, LengthPair lengthPair) throws IOException {
        return postAsString(str, map, map2, z, null, lengthPair);
    }

    public static StringContent postAsString(String str, Map<String, String> map, Map<String, String> map2, boolean z, String str2, LengthPair lengthPair) throws IOException {
        return postAsString(str, map, map2, z, str2, lengthPair, true);
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:65:0x0161=Splitter:B:65:0x0161, B:19:0x0093=Splitter:B:19:0x0093, B:37:0x0108=Splitter:B:37:0x0108, B:50:0x0148=Splitter:B:50:0x0148} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.mi.milinkforgame.sdk.base.os.SimpleRequest.StringContent postAsString(java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10, java.util.Map<java.lang.String, java.lang.String> r11, boolean r12, java.lang.String r13, com.mi.milinkforgame.sdk.base.os.SimpleRequest.LengthPair r14, boolean r15) throws java.io.IOException {
        /*
            java.net.HttpURLConnection r6 = makeConn(r9, r11)
            if (r6 != 0) goto L_0x0008
            r0 = 0
        L_0x0007:
            return r0
        L_0x0008:
            r0 = 1
            r6.setDoInput(r0)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r0 = 1
            r6.setDoOutput(r0)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r0 = "POST"
            r6.setRequestMethod(r0)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            boolean r0 = android.text.TextUtils.isEmpty(r13)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            if (r0 != 0) goto L_0x0020
            java.lang.String r0 = "Host"
            r6.addRequestProperty(r0, r13)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
        L_0x0020:
            java.lang.String r0 = "Content-Encoding"
            java.lang.String r1 = "gzip"
            r6.addRequestProperty(r0, r1)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r6.connect()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.util.List r0 = mapToPairs(r10)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            if (r0 == 0) goto L_0x0093
            java.lang.String r1 = "utf-8"
            java.lang.String r0 = org.apache.http.client.utils.URLEncodedUtils.format(r0, r1)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.io.OutputStream r1 = r6.getOutputStream()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.io.BufferedOutputStream r2 = new java.io.BufferedOutputStream     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r2.<init>(r1)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r1 = "utf-8"
            byte[] r1 = r0.getBytes(r1)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r0 = "SimpleRequest"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r3.<init>()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r4 = "originByteArray.length="
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            int r4 = r1.length     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r3 = r3.toString()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r0, r3)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            if (r15 == 0) goto L_0x017a
            r0 = 1
            com.mi.milinkforgame.sdk.util.compress.ICompression r0 = com.mi.milinkforgame.sdk.util.compress.CompressionFactory.createCompression(r0)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            byte[] r0 = r0.compress(r1)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r3 = "SimpleRequest"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r4.<init>()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r5 = "compressByteArray.length="
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            int r5 = r0.length     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r4 = r4.toString()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r3, r4)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
        L_0x0082:
            r2.write(r0)     // Catch:{ Exception -> 0x0130 }
            if (r14 == 0) goto L_0x008d
            int r1 = r1.length     // Catch:{ Exception -> 0x0130 }
            r14.originLength = r1     // Catch:{ Exception -> 0x0130 }
            int r0 = r0.length     // Catch:{ Exception -> 0x0130 }
            r14.compressLength = r0     // Catch:{ Exception -> 0x0130 }
        L_0x008d:
            r2.flush()     // Catch:{ IOException -> 0x0177 }
            r2.close()     // Catch:{ IOException -> 0x0177 }
        L_0x0093:
            int r0 = r6.getResponseCode()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r1 = "SimpleRequest"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r2.<init>()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r3 = "getResponseCode="
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.StringBuilder r2 = r2.append(r0)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r2 = r2.toString()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r1, r2)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 == r1) goto L_0x00b7
            r1 = 302(0x12e, float:4.23E-43)
            if (r0 != r1) goto L_0x0169
        L_0x00b7:
            java.util.Map r7 = r6.getHeaderFields()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.net.CookieManager r8 = new java.net.CookieManager     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r8.<init>()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.net.URL r4 = new java.net.URL     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r4.<init>(r9)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.net.URI r0 = new java.net.URI     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r1 = r4.getProtocol()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r2 = r4.getHost()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r3 = r4.getPath()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r4 = r4.getQuery()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r8.put(r0, r7)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r2.<init>()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            if (r12 == 0) goto L_0x0108
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.io.InputStream r4 = r6.getInputStream()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r1.<init>(r4)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r4 = 1024(0x400, float:1.435E-42)
            r3.<init>(r1, r4)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
        L_0x00f5:
            java.lang.String r1 = r3.readLine()     // Catch:{ IOException -> 0x00ff }
            if (r1 == 0) goto L_0x0157
            r2.append(r1)     // Catch:{ IOException -> 0x00ff }
            goto L_0x00f5
        L_0x00ff:
            r1 = move-exception
            java.lang.String r4 = "SimpleRequest"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r4, r1)     // Catch:{ all -> 0x015d }
            r3.close()     // Catch:{ IOException -> 0x0171 }
        L_0x0108:
            com.mi.milinkforgame.sdk.base.os.SimpleRequest$StringContent r1 = new com.mi.milinkforgame.sdk.base.os.SimpleRequest$StringContent     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.lang.String r2 = r2.toString()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r1.<init>(r2)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.net.CookieStore r2 = r8.getCookieStore()     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.util.List r0 = r2.get(r0)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.util.Map r0 = parseCookies(r0)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r1.putCookies(r0)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            java.util.Map r2 = listToMap(r7)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r0.putAll(r2)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r1.putHeaders(r0)     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
            r6.disconnect()
            r0 = r1
            goto L_0x0007
        L_0x0130:
            r0 = move-exception
            java.lang.String r1 = "SimpleRequest"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r1, r0)     // Catch:{ all -> 0x0141 }
            r2.flush()     // Catch:{ IOException -> 0x013e }
            r2.close()     // Catch:{ IOException -> 0x013e }
            goto L_0x0093
        L_0x013e:
            r0 = move-exception
            goto L_0x0093
        L_0x0141:
            r0 = move-exception
            r2.flush()     // Catch:{ IOException -> 0x0175 }
            r2.close()     // Catch:{ IOException -> 0x0175 }
        L_0x0148:
            throw r0     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
        L_0x0149:
            r0 = move-exception
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0152 }
            java.lang.String r1 = "protocol error"
            r0.<init>(r1)     // Catch:{ all -> 0x0152 }
            throw r0     // Catch:{ all -> 0x0152 }
        L_0x0152:
            r0 = move-exception
            r6.disconnect()
            throw r0
        L_0x0157:
            r3.close()     // Catch:{ IOException -> 0x015b }
            goto L_0x0108
        L_0x015b:
            r1 = move-exception
            goto L_0x0108
        L_0x015d:
            r0 = move-exception
            r3.close()     // Catch:{ IOException -> 0x0173 }
        L_0x0161:
            throw r0     // Catch:{ ProtocolException -> 0x0149, URISyntaxException -> 0x0162 }
        L_0x0162:
            r0 = move-exception
            r6.disconnect()
        L_0x0166:
            r0 = 0
            goto L_0x0007
        L_0x0169:
            r1 = 403(0x193, float:5.65E-43)
            if (r0 != r1) goto L_0x016d
        L_0x016d:
            r6.disconnect()
            goto L_0x0166
        L_0x0171:
            r1 = move-exception
            goto L_0x0108
        L_0x0173:
            r1 = move-exception
            goto L_0x0161
        L_0x0175:
            r1 = move-exception
            goto L_0x0148
        L_0x0177:
            r0 = move-exception
            goto L_0x0093
        L_0x017a:
            r0 = r1
            goto L_0x0082
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.base.os.SimpleRequest.postAsString(java.lang.String, java.util.Map, java.util.Map, boolean, java.lang.String, com.mi.milinkforgame.sdk.base.os.SimpleRequest$LengthPair, boolean):com.mi.milinkforgame.sdk.base.os.SimpleRequest$StringContent");
    }

    protected static HttpURLConnection makeConn(String str, Map<String, String> map) {
        URL url;
        try {
            url = new URL(str);
        } catch (MalformedURLException e) {
            MiLinkLog.e(TAG, (Throwable) e);
            url = null;
        }
        if (url == null) {
            return null;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(20000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            if (map == null) {
                return httpURLConnection;
            }
            httpURLConnection.setRequestProperty("Cookie", joinMap(map, "; "));
            return httpURLConnection;
        } catch (Exception e2) {
            MiLinkLog.e(TAG, (Throwable) e2);
            return null;
        }
    }

    public static String joinMap(Map<String, String> map, String str) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        Iterator it = map.entrySet().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return sb.toString();
            }
            Entry entry = (Entry) it.next();
            if (i2 > 0) {
                sb.append(str);
            }
            String str2 = (String) entry.getKey();
            String str3 = (String) entry.getValue();
            sb.append(str2);
            sb.append("=");
            sb.append(str3);
            i = i2 + 1;
        }
    }

    protected static Map<String, String> parseCookies(List<HttpCookie> list) {
        HashMap hashMap = new HashMap();
        for (HttpCookie httpCookie : list) {
            if (!httpCookie.hasExpired()) {
                String name = httpCookie.getName();
                String value = httpCookie.getValue();
                if (name != null) {
                    hashMap.put(name, value);
                }
            }
        }
        return hashMap;
    }
}
