package com.xiaomi.accountsdk.diagnosis.p267a;

import org.json.JSONObject;

/* renamed from: com.xiaomi.accountsdk.diagnosis.a.a */
/* loaded from: classes2.dex */
public class C5838a {

    /* renamed from: a */
    public String f20768a;

    /* renamed from: b */
    public String f20769b;

    /* renamed from: a */
    public static C5838a m4232a(JSONObject jSONObject) {
        C5838a c5838a = new C5838a();
        c5838a.f20769b = jSONObject.optString("diagnosisDomain", null);
        c5838a.f20768a = jSONObject.optString("dataCenterZone", null);
        return c5838a;
    }
}
