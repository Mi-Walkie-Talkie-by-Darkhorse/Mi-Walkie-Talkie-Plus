package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.district.DistrictResult;
import com.amap.api.services.district.DistrictSearchQuery;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: DistrictServerHandler */
public final class v extends l<DistrictSearchQuery, DistrictResult> {
    public v(Context context, DistrictSearchQuery districtSearchQuery) {
        super(context, districtSearchQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("output=json");
        stringBuffer.append("&page=").append(((DistrictSearchQuery) this.a).getPageNum());
        stringBuffer.append("&offset=").append(((DistrictSearchQuery) this.a).getPageSize());
        stringBuffer.append("&showChild=").append(((DistrictSearchQuery) this.a).isShowChild());
        if (((DistrictSearchQuery) this.a).isShowBoundary()) {
            stringBuffer.append("&extensions=all");
        } else {
            stringBuffer.append("&extensions=base");
        }
        if (((DistrictSearchQuery) this.a).checkKeyWords()) {
            stringBuffer.append("&keywords=").append(b(((DistrictSearchQuery) this.a).getKeywords()));
        }
        stringBuffer.append("&key=" + bp.f(this.d));
        return stringBuffer.toString();
    }

    /* access modifiers changed from: private */
    /* renamed from: c */
    public DistrictResult a(String str) throws AMapException {
        ArrayList arrayList = new ArrayList();
        DistrictResult districtResult = new DistrictResult((DistrictSearchQuery) this.a, arrayList);
        try {
            JSONObject jSONObject = new JSONObject(str);
            districtResult.setPageCount(jSONObject.optInt("count"));
            JSONArray optJSONArray = jSONObject.optJSONArray("districts");
            if (optJSONArray == null) {
                return districtResult;
            }
            z.a(optJSONArray, arrayList, null);
            return districtResult;
        } catch (JSONException e) {
            t.a(e, "DistrictServerHandler", "paseJSONJSONException");
        } catch (Exception e2) {
            t.a(e2, "DistrictServerHandler", "paseJSONException");
        }
    }

    public final String f() {
        return s.a() + "/config/district?";
    }
}
