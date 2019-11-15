package com.ifengyu.intercom.a.c;

import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.a.d.a;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Request.Builder;
import okhttp3.RequestBody;

/* compiled from: OkHttpRequest */
public abstract class c {
    protected String a;
    protected Object b;
    protected Map<String, String> c;
    protected Map<String, String> d;
    protected int e;
    protected Builder f = new Builder();

    /* access modifiers changed from: protected */
    public abstract Request a(RequestBody requestBody);

    /* access modifiers changed from: protected */
    public abstract RequestBody a();

    protected c(String str, Object obj, Map<String, String> map, Map<String, String> map2, int i) {
        this.a = str;
        this.b = obj;
        this.c = map;
        this.d = map2;
        this.e = i;
        if (str == null) {
            a.a("url can not be null.", new Object[0]);
        }
        e();
    }

    private void e() {
        this.f.url(this.a).tag(this.b);
        c();
    }

    /* access modifiers changed from: protected */
    public RequestBody a(RequestBody requestBody, b bVar) {
        return requestBody;
    }

    public e b() {
        return new e(this);
    }

    public Request a(b bVar) {
        return a(a(a(), bVar));
    }

    /* access modifiers changed from: protected */
    public void c() {
        Headers.Builder builder = new Headers.Builder();
        if (this.d != null && !this.d.isEmpty()) {
            for (String str : this.d.keySet()) {
                builder.add(str, (String) this.d.get(str));
            }
            this.f.headers(builder.build());
        }
    }

    public int d() {
        return this.e;
    }
}
