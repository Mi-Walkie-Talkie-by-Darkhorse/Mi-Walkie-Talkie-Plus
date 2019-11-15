package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.PoiItem;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PoiSearchIdHandler */
public final class ah extends ag<String, PoiItem> {
    public final /* synthetic */ Object a(String str) throws AMapException {
        return d(str);
    }

    public ah(Context context, String str) {
        super(context, str);
    }

    public final String f() {
        return s.a() + "/place/detail?";
    }

    private static PoiItem d(String str) throws AMapException {
        try {
            JSONArray optJSONArray = new JSONObject(str).optJSONArray("pois");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                return null;
            }
            JSONObject optJSONObject = optJSONArray.optJSONObject(0);
            if (optJSONObject != null) {
                return z.d(optJSONObject);
            }
            return null;
        } catch (JSONException e) {
            t.a(e, "PoiSearchIdHandler", "paseJSONJSONException");
            return null;
        } catch (Exception e2) {
            t.a(e2, "PoiSearchIdHandler", "paseJSONException");
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuilder sb = new StringBuilder();
        sb.append("id=").append((String) this.a);
        sb.append("&output=json");
        sb.append("&extensions=all");
        sb.append("&children=1");
        sb.append("&key=" + bp.f(this.d));
        return sb.toString();
    }
}
