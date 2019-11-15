package com.xiaomi.account.http;

import java.util.List;
import java.util.Map;

public class Response {
    public final String body;
    public final int code;
    public final Map<String, List<String>> headers;
    public final String location;
    public final String setCookie;

    public static class Builder {
        String body;
        int code;
        Map<String, List<String>> headers;
        String location;
        String setCookie;

        public Builder() {
        }

        public Builder(Response response) {
            this.code = response.code;
            this.body = response.body;
            this.headers = response.headers;
            this.setCookie = response.setCookie;
            this.location = response.location;
        }

        public Builder headers(Map<String, List<String>> map) {
            this.headers = map;
            return this;
        }

        public Builder body(String str) {
            this.body = str;
            return this;
        }

        public Builder code(int i) {
            this.code = i;
            return this;
        }

        public Builder setCookie(String str) {
            this.setCookie = str;
            return this;
        }

        public Builder location(String str) {
            this.location = str;
            return this;
        }

        public Response build() {
            return new Response(this);
        }
    }

    public Response(Builder builder) {
        this.code = builder.code;
        this.body = builder.body;
        this.headers = builder.headers;
        this.setCookie = builder.setCookie;
        this.location = builder.location;
    }

    public String toString() {
        return "{code:" + this.code + ", body:" + this.body + "}";
    }
}
