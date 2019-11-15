package com.xiaomi.account.http;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

public class Request {
    public final boolean followRedirects;
    public final Map<String, String> formBody;
    public final Map<String, String> headers;
    public final URI uri;
    public final String url;

    public static class Builder {
        boolean followRedirects = true;
        Map<String, String> formBody;
        Map<String, String> headers;
        URI uri;

        public Builder url(String str) {
            try {
                this.uri = new URI(str);
                return this;
            } catch (URISyntaxException e) {
                throw new IllegalArgumentException("unexpected url: " + str);
            }
        }

        public Builder appendQuery(@Nullable String str) {
            String str2;
            if (!TextUtils.isEmpty(str)) {
                URI uri2 = this.uri;
                String query = uri2.getQuery();
                if (query == null) {
                    str2 = str;
                } else {
                    str2 = query + "&" + str;
                }
                try {
                    this.uri = new URI(uri2.getScheme(), uri2.getAuthority(), uri2.getPath(), str2, uri2.getFragment());
                } catch (URISyntaxException e) {
                    throw new IllegalArgumentException("unexpected newQuery: " + str);
                }
            }
            return this;
        }

        public Builder headers(@Nullable Map<String, String> map) {
            this.headers = map;
            return this;
        }

        public Builder formBody(@Nullable Map<String, String> map) {
            this.formBody = map;
            return this;
        }

        public Builder followRedirects(boolean z) {
            this.followRedirects = z;
            return this;
        }

        public Request build() {
            return new Request(this);
        }
    }

    private Request(Builder builder) {
        this.uri = builder.uri;
        this.url = builder.uri.toString();
        this.headers = builder.headers;
        this.formBody = builder.formBody;
        this.followRedirects = builder.followRedirects;
    }
}
