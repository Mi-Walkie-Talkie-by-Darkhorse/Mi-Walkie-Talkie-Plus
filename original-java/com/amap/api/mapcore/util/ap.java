package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.mapcore.util.fp.a;
import com.amap.api.maps.AMapException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: OfflineInitHandler */
public class ap extends bo<String, ao> {
    private final String d = "update";
    private final String e = "1";
    private final String f = "0";
    private final String g = "version";

    public ap(Context context, String str) {
        super(context, str);
    }

    /* access modifiers changed from: protected */
    public JSONObject a(a aVar) {
        return aVar.f;
    }

    /* access modifiers changed from: protected */
    public String a() {
        StringBuilder sb = new StringBuilder();
        sb.append("014");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public Map<String, String> b() {
        HashMap hashMap = new HashMap();
        hashMap.put("mapver", this.a);
        return hashMap;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public ao b(JSONObject jSONObject) throws AMapException {
        ao aoVar = new ao();
        try {
            String optString = jSONObject.optString("update", "");
            if (optString.equals("0")) {
                aoVar.a(false);
            } else if (optString.equals("1")) {
                aoVar.a(true);
            }
            aoVar.a(jSONObject.optString("version", ""));
        } catch (Throwable th) {
            gf.b(th, "OfflineInitHandler", "loadData parseJson");
        }
        return aoVar;
    }
}
