package com.xiaomi.accountsdk.diagnosis.a;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public String f8616a;

    /* renamed from: b  reason: collision with root package name */
    public String f8617b;

    public static a a(JSONObject jSONObject) {
        a aVar = new a();
        aVar.f8617b = jSONObject.optString("diagnosisDomain", null);
        aVar.f8616a = jSONObject.optString("dataCenterZone", null);
        return aVar;
    }
}
