package com.xiaomi.push;

import org.json.JSONObject;

/* renamed from: com.xiaomi.push.cp */
/* loaded from: classes2.dex */
public class C6057cp {

    /* renamed from: a */
    private int f21183a;

    /* renamed from: a */
    private long f21184a;

    /* renamed from: a */
    private String f21185a;

    /* renamed from: b */
    private long f21186b;

    /* renamed from: c */
    private long f21187c;

    public C6057cp() {
        this(0, 0L, 0L, null);
    }

    public C6057cp(int i, long j, long j2, Exception exc) {
        this.f21183a = i;
        this.f21184a = j;
        this.f21187c = j2;
        this.f21186b = System.currentTimeMillis();
        if (exc != null) {
            this.f21185a = exc.getClass().getSimpleName();
        }
    }

    /* renamed from: a */
    public int m3493a() {
        return this.f21183a;
    }

    /* renamed from: a */
    public C6057cp m3491a(JSONObject jSONObject) {
        this.f21184a = jSONObject.getLong("cost");
        this.f21187c = jSONObject.getLong("size");
        this.f21186b = jSONObject.getLong("ts");
        this.f21183a = jSONObject.getInt("wt");
        this.f21185a = jSONObject.optString("expt");
        return this;
    }

    /* renamed from: a */
    public JSONObject m3492a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("cost", this.f21184a);
        jSONObject.put("size", this.f21187c);
        jSONObject.put("ts", this.f21186b);
        jSONObject.put("wt", this.f21183a);
        jSONObject.put("expt", this.f21185a);
        return jSONObject;
    }
}
