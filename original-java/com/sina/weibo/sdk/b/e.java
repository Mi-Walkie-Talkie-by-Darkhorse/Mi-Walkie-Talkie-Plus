package com.sina.weibo.sdk.b;

import org.json.JSONObject;

/* compiled from: BaseCmd */
class e {
    private String a;
    private String b;
    private long c;

    public e() {
    }

    public e(JSONObject jSONObject) {
        a(jSONObject);
    }

    /* access modifiers changed from: protected */
    public void a(JSONObject jSONObject) {
        this.a = jSONObject.optString("notification_text");
        this.b = jSONObject.optString("notification_title");
        this.c = jSONObject.optLong("notification_delay");
    }

    public String e() {
        return this.a;
    }

    public String f() {
        return this.b;
    }

    public long g() {
        return this.c;
    }
}
