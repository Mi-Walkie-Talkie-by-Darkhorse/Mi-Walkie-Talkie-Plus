package com.xiaomi.push;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public class cp {

    /* renamed from: a  reason: collision with root package name */
    private int f8815a;

    /* renamed from: a  reason: collision with other field name */
    private long f168a;

    /* renamed from: a  reason: collision with other field name */
    private String f169a;

    /* renamed from: b  reason: collision with root package name */
    private long f8816b;

    /* renamed from: c  reason: collision with root package name */
    private long f8817c;

    public cp() {
        this(0, 0L, 0L, null);
    }

    public cp(int i, long j, long j2, Exception exc) {
        this.f8815a = i;
        this.f168a = j;
        this.f8817c = j2;
        this.f8816b = System.currentTimeMillis();
        if (exc != null) {
            this.f169a = exc.getClass().getSimpleName();
        }
    }

    public int a() {
        return this.f8815a;
    }

    public cp a(JSONObject jSONObject) {
        this.f168a = jSONObject.getLong("cost");
        this.f8817c = jSONObject.getLong("size");
        this.f8816b = jSONObject.getLong("ts");
        this.f8815a = jSONObject.getInt("wt");
        this.f169a = jSONObject.optString("expt");
        return this;
    }

    /* renamed from: a  reason: collision with other method in class */
    public JSONObject m139a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("cost", this.f168a);
        jSONObject.put("size", this.f8817c);
        jSONObject.put("ts", this.f8816b);
        jSONObject.put("wt", this.f8815a);
        jSONObject.put("expt", this.f169a);
        return jSONObject;
    }
}
