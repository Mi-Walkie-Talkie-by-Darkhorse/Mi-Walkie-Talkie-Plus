package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.mapcore.util.fp.a;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: OfflineUpdateCityHandler */
public class au extends bo<String, List<OfflineMapProvince>> {
    private Context d;

    public au(Context context, String str) {
        super(context, str);
    }

    public void a(Context context) {
        this.d = context;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public List<OfflineMapProvince> b(JSONObject jSONObject) throws AMapException {
        try {
            if (this.d != null) {
                bk.c(jSONObject.toString(), this.d);
            }
        } catch (Throwable th) {
            gf.b(th, "OfflineUpdateCityHandler", "loadData jsonInit");
            ThrowableExtension.printStackTrace(th);
        }
        try {
            if (this.d != null) {
                return bk.a(jSONObject, this.d);
            }
            return null;
        } catch (JSONException e) {
            gf.b((Throwable) e, "OfflineUpdateCityHandler", "loadData parseJson");
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public JSONObject a(a aVar) {
        JSONObject jSONObject = aVar.e;
        if (!jSONObject.has("result")) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("result", new JSONObject().put("offlinemap_with_province_vfour", jSONObject));
                return jSONObject2;
            } catch (JSONException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
        return jSONObject;
    }

    /* access modifiers changed from: protected */
    public String a() {
        StringBuilder sb = new StringBuilder();
        sb.append("013");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public Map<String, String> b() {
        HashMap hashMap = new HashMap();
        hashMap.put("mapver", this.a);
        return hashMap;
    }
}
