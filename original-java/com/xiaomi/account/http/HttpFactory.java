package com.xiaomi.account.http;

import android.net.Network;
import com.xiaomi.account.http.HttpClientConfig.Builder;

public abstract class HttpFactory {
    public abstract HttpClient createHttpClient(HttpClientConfig httpClientConfig);

    public HttpClient createHttpClient() {
        return createHttpClient(new Builder().build());
    }

    public HttpClient createHttpClient(Network network) {
        return createHttpClient(new Builder().network(network).build());
    }
}
