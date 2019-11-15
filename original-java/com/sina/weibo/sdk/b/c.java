package com.sina.weibo.sdk.b;

import org.jboss.netty.handler.codec.spdy.SpdyHeaders.Spdy2HttpNames;
import org.json.JSONObject;

/* compiled from: AppInvokeCmd */
class c extends e {
    private String a;
    private String b;
    private String c;

    public c() {
    }

    public c(JSONObject jSONObject) {
        super(jSONObject);
    }

    public void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.a = jSONObject.optString("package");
        this.b = jSONObject.optString(Spdy2HttpNames.SCHEME);
        this.c = jSONObject.optString("url");
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }
}
