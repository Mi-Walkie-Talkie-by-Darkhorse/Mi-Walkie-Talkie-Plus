package com.ifengyu.intercom.p209o.p212d;

import com.ifengyu.intercom.p209o.p211c.AbstractC4132a;
import com.ifengyu.intercom.p209o.p213e.Exceptions;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;

/* renamed from: com.ifengyu.intercom.o.d.b */
/* loaded from: classes2.dex */
public abstract class OkHttpRequest {

    /* renamed from: a */
    protected String f14417a;

    /* renamed from: b */
    protected Object f14418b;

    /* renamed from: c */
    protected Map<String, String> f14419c;

    /* renamed from: d */
    protected Map<String, String> f14420d;

    /* renamed from: e */
    protected int f14421e;

    /* renamed from: f */
    protected Request.Builder f14422f = new Request.Builder();

    /* JADX INFO: Access modifiers changed from: protected */
    public OkHttpRequest(String str, Object obj, Map<String, String> map, Map<String, String> map2, int i) {
        this.f14417a = str;
        this.f14418b = obj;
        this.f14419c = map;
        this.f14420d = map2;
        this.f14421e = i;
        if (str != null) {
            m11328g();
        } else {
            Exceptions.m11321a("url can not be null.", new Object[0]);
            throw null;
        }
    }

    /* renamed from: g */
    private void m11328g() {
        this.f14422f.url(this.f14417a).tag(this.f14418b);
        m11334a();
    }

    /* renamed from: a */
    protected void m11334a() {
        Headers.Builder builder = new Headers.Builder();
        Map<String, String> map = this.f14420d;
        if (map == null || map.isEmpty()) {
            return;
        }
        for (String str : this.f14420d.keySet()) {
            builder.add(str, this.f14420d.get(str));
        }
        this.f14422f.headers(builder.build());
    }

    /* renamed from: b */
    public RequestCall m11333b() {
        return new RequestCall(this);
    }

    /* renamed from: c */
    protected abstract Request mo11332c(RequestBody requestBody);

    /* renamed from: d */
    protected abstract RequestBody mo11331d();

    /* renamed from: e */
    public Request m11330e(AbstractC4132a abstractC4132a) {
        RequestBody mo11331d = mo11331d();
        m11327h(mo11331d, abstractC4132a);
        return mo11332c(mo11331d);
    }

    /* renamed from: f */
    public int m11329f() {
        return this.f14421e;
    }

    /* renamed from: h */
    protected RequestBody m11327h(RequestBody requestBody, AbstractC4132a abstractC4132a) {
        return requestBody;
    }
}
