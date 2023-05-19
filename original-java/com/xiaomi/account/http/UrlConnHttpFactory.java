package com.xiaomi.account.http;

import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.connect.common.Constants;
import com.xiaomi.account.http.Response;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* loaded from: classes2.dex */
public class UrlConnHttpFactory extends HttpFactory {

    /* loaded from: classes2.dex */
    private class HttpUrlConnClient implements HttpClient {
        private static final String BODY_STRING_SPLIT = "&";
        private static final String TAG = "HttpUrlConnClient";
        HttpClientConfig config;

        @Override // com.xiaomi.account.http.HttpClient
        public Response excute(Request request) throws IOException {
            BufferedReader bufferedReader;
            Throwable th;
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(request.url).openConnection();
            try {
                httpURLConnection.setConnectTimeout((int) this.config.connectTimeoutMs);
                httpURLConnection.setReadTimeout((int) this.config.readTimeoutMs);
                if (request.formBody != null) {
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod(Constants.HTTP_POST);
                } else {
                    httpURLConnection.setRequestMethod(Constants.HTTP_GET);
                }
                httpURLConnection.setInstanceFollowRedirects(request.followRedirects);
                Map<String, String> map = request.headers;
                if (map != null) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                httpURLConnection.connect();
                if (request.formBody != null) {
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                    bufferedWriter.write(UrlConnHttpFactory.joinToQuery(request.formBody));
                    bufferedWriter.flush();
                    bufferedWriter.close();
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                Response.Builder headers = new Response.Builder().code(responseCode).location(httpURLConnection.getHeaderField("Location")).setCookie(httpURLConnection.getHeaderField(HttpHeaders.SET_COOKIE)).headers(httpURLConnection.getHeaderFields());
                if (responseCode == 200) {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()), 1024);
                    } catch (Throwable th2) {
                        bufferedReader = null;
                        th = th2;
                    }
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine != null) {
                                sb.append(readLine);
                            } else {
                                Response build = headers.body(sb.toString()).build();
                                bufferedReader.close();
                                return build;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        throw th;
                    }
                } else {
                    return headers.build();
                }
            } finally {
                httpURLConnection.disconnect();
            }
        }

        private HttpUrlConnClient(HttpClientConfig httpClientConfig) {
            this.config = httpClientConfig;
            CookieHandler.setDefault(new CookieManager());
            ((CookieManager) CookieHandler.getDefault()).setCookiePolicy(CookiePolicy.ACCEPT_ORIGINAL_SERVER);
        }
    }

    public static String joinToQuery(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                if (z) {
                    z = false;
                } else {
                    sb.append(ContainerUtils.FIELD_DELIMITER);
                }
                sb.append(key);
                sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb.append(value);
            }
        }
        return sb.toString();
    }

    @Override // com.xiaomi.account.http.HttpFactory
    public HttpClient createHttpClient(HttpClientConfig httpClientConfig) {
        return new HttpUrlConnClient(httpClientConfig);
    }
}
