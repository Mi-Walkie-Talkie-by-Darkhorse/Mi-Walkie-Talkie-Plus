package com.ifengyu.intercom.g.e;

import com.ifengyu.intercom.g.d.b;
import com.ifengyu.intercom.g.f.a;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;

/* compiled from: OkHttpRequest.java */
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    protected String f5265a;

    /* renamed from: b  reason: collision with root package name */
    protected Object f5266b;

    /* renamed from: c  reason: collision with root package name */
    protected Map<String, String> f5267c;
    protected Map<String, String> d;
    protected int e;
    protected Request.Builder f = new Request.Builder();

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str, Object obj, Map<String, String> map, Map<String, String> map2, int i) {
        this.f5265a = str;
        this.f5266b = obj;
        this.f5267c = map;
        this.d = map2;
        this.e = i;
        if (str != null) {
            e();
        } else {
            a.a("url can not be null.", new Object[0]);
            throw null;
        }
    }

    private void e() {
        this.f.url(this.f5265a).tag(this.f5266b);
        a();
    }

    public Request a(b bVar) {
        return a(a(c(), bVar));
    }

    protected abstract Request a(RequestBody requestBody);

    protected RequestBody a(RequestBody requestBody, b bVar) {
        return requestBody;
    }

    public f b() {
        return new f(this);
    }

    protected abstract RequestBody c();

    public int d() {
        return this.e;
    }

    protected void a() {
        Headers.Builder builder = new Headers.Builder();
        Map<String, String> map = this.d;
        if (!(map == null || map.isEmpty())) {
            for (String str : this.d.keySet()) {
                builder.add(str, this.d.get(str));
            }
            this.f.headers(builder.build());
        }
    }
}
