package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.busline.BusLineQuery;
import com.amap.api.services.busline.BusLineQuery.SearchType;
import com.amap.api.services.busline.BusLineResult;
import com.amap.api.services.busline.BusStationQuery;
import com.amap.api.services.busline.BusStationResult;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.SuggestionCity;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* compiled from: BusSearchServerHandler */
public final class n<T> extends l<T, Object> {
    private int i = 0;
    private List<String> j = new ArrayList();
    private List<SuggestionCity> k = new ArrayList();

    public n(Context context, T t) {
        super(context, t);
    }

    public final String f() {
        String str = this.a instanceof BusLineQuery ? ((BusLineQuery) this.a).getCategory() == SearchType.BY_LINE_ID ? "lineid" : ((BusLineQuery) this.a).getCategory() == SearchType.BY_LINE_NAME ? "linename" : "" : "stopname";
        return s.a() + "/bus/" + str + "?";
    }

    /* access modifiers changed from: protected */
    public final Object a(String str) throws AMapException {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject optJSONObject = jSONObject.optJSONObject("suggestion");
            if (optJSONObject != null) {
                this.k = z.a(optJSONObject);
                this.j = z.b(optJSONObject);
            }
            this.i = jSONObject.optInt("count");
            if (this.a instanceof BusLineQuery) {
                return BusLineResult.createPagedResult((BusLineQuery) this.a, this.i, this.k, this.j, z.f(jSONObject));
            }
            return BusStationResult.createPagedResult((BusStationQuery) this.a, this.i, this.k, this.j, z.e(jSONObject));
        } catch (Exception e) {
            t.a(e, "BusSearchServerHandler", "paseJSON");
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuilder sb = new StringBuilder();
        sb.append("output=json");
        if (this.a instanceof BusLineQuery) {
            BusLineQuery busLineQuery = (BusLineQuery) this.a;
            sb.append("&extensions=all");
            if (busLineQuery.getCategory() == SearchType.BY_LINE_ID) {
                sb.append("&id=").append(b(((BusLineQuery) this.a).getQueryString()));
            } else {
                String city = busLineQuery.getCity();
                if (!z.f(city)) {
                    sb.append("&city=").append(b(city));
                }
                sb.append("&keywords=" + b(busLineQuery.getQueryString()));
                sb.append("&offset=" + busLineQuery.getPageSize());
                sb.append("&page=" + busLineQuery.getPageNumber());
            }
        } else {
            BusStationQuery busStationQuery = (BusStationQuery) this.a;
            String city2 = busStationQuery.getCity();
            if (!z.f(city2)) {
                sb.append("&city=").append(b(city2));
            }
            sb.append("&keywords=" + b(busStationQuery.getQueryString()));
            sb.append("&offset=" + busStationQuery.getPageSize());
            sb.append("&page=" + busStationQuery.getPageNumber());
        }
        sb.append("&key=" + bp.f(this.d));
        return sb.toString();
    }
}
