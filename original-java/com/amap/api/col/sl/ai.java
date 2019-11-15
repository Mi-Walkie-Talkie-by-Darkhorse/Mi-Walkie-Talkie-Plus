package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.SuggestionCity;
import com.amap.api.services.poisearch.PoiResult;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PoiSearchKeywordsHandler */
public final class ai extends ag<al, PoiResult> {
    private int i = 0;
    private List<String> j = new ArrayList();
    private List<SuggestionCity> k = new ArrayList();

    public ai(Context context, al alVar) {
        super(context, alVar);
    }

    public final String f() {
        String str = s.a() + "/place";
        if (((al) this.a).b == null) {
            return str + "/text?";
        }
        if (((al) this.a).b.getShape().equals("Bound")) {
            return str + "/around?";
        }
        return (((al) this.a).b.getShape().equals("Rectangle") || ((al) this.a).b.getShape().equals("Polygon")) ? str + "/polygon?" : str;
    }

    /* access modifiers changed from: private */
    /* renamed from: d */
    public PoiResult a(String str) throws AMapException {
        ArrayList arrayList = new ArrayList();
        if (str == null) {
            return PoiResult.createPagedResult(((al) this.a).a, ((al) this.a).b, this.j, this.k, ((al) this.a).a.getPageSize(), this.i, arrayList);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.i = jSONObject.optInt("count");
            arrayList = z.c(jSONObject);
            if (!jSONObject.has("suggestion")) {
                return PoiResult.createPagedResult(((al) this.a).a, ((al) this.a).b, this.j, this.k, ((al) this.a).a.getPageSize(), this.i, arrayList);
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("suggestion");
            if (optJSONObject == null) {
                return PoiResult.createPagedResult(((al) this.a).a, ((al) this.a).b, this.j, this.k, ((al) this.a).a.getPageSize(), this.i, arrayList);
            }
            this.k = z.a(optJSONObject);
            this.j = z.b(optJSONObject);
            return PoiResult.createPagedResult(((al) this.a).a, ((al) this.a).b, this.j, this.k, ((al) this.a).a.getPageSize(), this.i, arrayList);
        } catch (JSONException e) {
            t.a(e, "PoiSearchKeywordHandler", "paseJSONJSONException");
        } catch (Exception e2) {
            t.a(e2, "PoiSearchKeywordHandler", "paseJSONException");
        }
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuilder sb = new StringBuilder();
        sb.append("output=json");
        if (((al) this.a).b != null) {
            if (((al) this.a).b.getShape().equals("Bound")) {
                double a = t.a(((al) this.a).b.getCenter().getLongitude());
                sb.append("&location=").append(a + Constants.ACCEPT_TIME_SEPARATOR_SP + t.a(((al) this.a).b.getCenter().getLatitude()));
                sb.append("&radius=").append(((al) this.a).b.getRange());
                sb.append("&sortrule=").append(a(((al) this.a).b.isDistanceSort()));
            } else if (((al) this.a).b.getShape().equals("Rectangle")) {
                LatLonPoint lowerLeft = ((al) this.a).b.getLowerLeft();
                LatLonPoint upperRight = ((al) this.a).b.getUpperRight();
                double a2 = t.a(lowerLeft.getLatitude());
                double a3 = t.a(lowerLeft.getLongitude());
                sb.append("&polygon=" + a3 + Constants.ACCEPT_TIME_SEPARATOR_SP + a2 + ";" + t.a(upperRight.getLongitude()) + Constants.ACCEPT_TIME_SEPARATOR_SP + t.a(upperRight.getLatitude()));
            } else if (((al) this.a).b.getShape().equals("Polygon")) {
                List polyGonList = ((al) this.a).b.getPolyGonList();
                if (polyGonList != null && polyGonList.size() > 0) {
                    sb.append("&polygon=" + t.a(polyGonList));
                }
            }
        }
        String city = ((al) this.a).a.getCity();
        if (!c(city)) {
            sb.append("&city=").append(b(city));
        }
        String b = b(((al) this.a).a.getQueryString());
        if (!c(b)) {
            sb.append("&keywords=" + b);
        }
        sb.append("&offset=" + ((al) this.a).a.getPageSize());
        sb.append("&page=" + ((al) this.a).a.getPageNum());
        String building = ((al) this.a).a.getBuilding();
        if (building != null && building.trim().length() > 0) {
            sb.append("&building=" + ((al) this.a).a.getBuilding());
        }
        String b2 = b(((al) this.a).a.getCategory());
        if (!c(b2)) {
            sb.append("&types=" + b2);
        }
        sb.append("&extensions=all");
        sb.append("&key=" + bp.f(this.d));
        if (((al) this.a).a.getCityLimit()) {
            sb.append("&citylimit=true");
        } else {
            sb.append("&citylimit=false");
        }
        if (((al) this.a).a.isRequireSubPois()) {
            sb.append("&children=1");
        } else {
            sb.append("&children=0");
        }
        if (((al) this.a).b == null && ((al) this.a).a.getLocation() != null) {
            sb.append("&sortrule=").append(a(((al) this.a).a.isDistanceSort()));
            double a4 = t.a(((al) this.a).a.getLocation().getLongitude());
            sb.append("&location=").append(a4 + Constants.ACCEPT_TIME_SEPARATOR_SP + t.a(((al) this.a).a.getLocation().getLatitude()));
        }
        return sb.toString();
    }

    private static String a(boolean z) {
        if (z) {
            return "distance";
        }
        return "weight";
    }
}
