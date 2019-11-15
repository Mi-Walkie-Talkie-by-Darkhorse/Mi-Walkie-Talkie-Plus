package com.ksyun.ks3.model;

import com.ksyun.ks3.a.d;
import com.loopj.android.http.RequestParams;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

/* compiled from: AsyncHttpRequsetParam */
public class a {
    private String a;
    private Header[] b;
    private RequestParams c;
    private String d;
    private HttpEntity e;

    public a() {
    }

    public a(String str, Map<String, String> map, Map<String, String> map2) {
        this.a = str;
        this.b = d.a(map);
        this.c = d.b(map2);
    }

    public a(String str, String str2, Map<String, String> map, Map<String, String> map2, HttpEntity httpEntity) {
        this.a = str;
        this.d = str2;
        this.b = d.a(map);
        this.c = d.b(map2);
        this.e = httpEntity;
    }

    public String a() {
        return this.a;
    }

    public Header[] b() {
        return this.b;
    }

    public RequestParams c() {
        return this.c;
    }
}
