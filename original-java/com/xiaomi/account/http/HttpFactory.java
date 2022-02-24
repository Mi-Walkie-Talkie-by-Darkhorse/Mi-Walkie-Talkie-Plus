package com.xiaomi.account.http;

import android.net.Network;
import com.xiaomi.account.http.HttpClientConfig;

/* loaded from: classes2.dex */
public abstract class HttpFactory {
    public HttpClient createHttpClient() {
        return createHttpClient(new HttpClientConfig.Builder().build());
    }

    public abstract HttpClient createHttpClient(HttpClientConfig httpClientConfig);

    public HttpClient createHttpClient(Network network) {
        return createHttpClient(new HttpClientConfig.Builder().network(network).build());
    }
}
