package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.cloud.CloudItemDetail;
import com.amap.api.services.core.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CloudSearchIdHandler */
public final class q extends p<ak, CloudItemDetail> {
    public final /* synthetic */ Object a(String str) throws AMapException {
        return c(str);
    }

    public q(Context context, ak akVar) {
        super(context, akVar);
    }

    public final String f() {
        return s.c() + "/datasearch/id?";
    }

    private static CloudItemDetail c(String str) throws AMapException {
        if (str == null || str.equals("")) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("datas")) {
                return null;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("datas");
            if (optJSONArray.length() <= 0) {
                return null;
            }
            JSONObject jSONObject2 = optJSONArray.getJSONObject(0);
            CloudItemDetail a = a(jSONObject2);
            a(a, jSONObject2);
            return a;
        } catch (JSONException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuilder sb = new StringBuilder();
        sb.append("key=" + bp.f(this.d));
        sb.append("&tableid=" + ((ak) this.a).a);
        sb.append("&output=json");
        sb.append("&_id=" + ((ak) this.a).b);
        return sb.toString();
    }
}
