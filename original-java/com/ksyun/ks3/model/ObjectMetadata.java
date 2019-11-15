package com.ksyun.ks3.model;

import java.util.HashMap;
import java.util.Map;

public class ObjectMetadata {
    private Map<String, String> a = new HashMap();
    private Map<Meta, String> b = new HashMap();

    public enum Meta {
        ContentType(HttpHeaders.ContentType),
        CacheControl(HttpHeaders.CacheControl),
        ContentLength(HttpHeaders.ContentLength),
        ContentDisposition(HttpHeaders.ContentDisposition),
        ContentEncoding(HttpHeaders.ContentEncoding),
        Expires(HttpHeaders.Expires),
        LastModified(HttpHeaders.LastModified),
        Etag(HttpHeaders.ETag),
        ContentMD5(HttpHeaders.ContentMD5);
        
        private HttpHeaders j;

        private Meta(HttpHeaders httpHeaders) {
            this.j = httpHeaders;
        }

        public String toString() {
            return this.j.toString();
        }
    }

    public String toString() {
        return "ObjectMetadata[metadata=" + this.b + ";userMetadata=" + this.a + "]";
    }

    public Map<Meta, String> a() {
        return this.b;
    }

    public void a(String str) {
        this.b.put(Meta.ContentType, str);
    }

    public void b(String str) {
        this.b.put(Meta.ContentLength, str);
    }

    public Map<String, String> b() {
        return this.a;
    }
}
