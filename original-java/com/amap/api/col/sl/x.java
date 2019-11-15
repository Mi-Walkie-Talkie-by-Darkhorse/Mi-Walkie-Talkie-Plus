package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.geocoder.GeocodeAddress;
import com.amap.api.services.geocoder.GeocodeQuery;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: GeocodingHandler */
public final class x extends l<GeocodeQuery, ArrayList<GeocodeAddress>> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return c(str);
    }

    public x(Context context, GeocodeQuery geocodeQuery) {
        super(context, geocodeQuery);
    }

    private static ArrayList<GeocodeAddress> c(String str) throws AMapException {
        ArrayList<GeocodeAddress> arrayList = new ArrayList<>();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("count") && jSONObject.getInt("count") > 0) {
                return z.g(jSONObject);
            }
            return arrayList;
        } catch (JSONException e) {
            t.a(e, "GeocodingHandler", "paseJSONJSONException");
            return arrayList;
        } catch (Exception e2) {
            t.a(e2, "GeocodingHandler", "paseJSONException");
            return arrayList;
        }
    }

    public final String f() {
        return s.a() + "/geocode/geo?";
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("output=json&address=").append(b(((GeocodeQuery) this.a).getLocationName()));
        String city = ((GeocodeQuery) this.a).getCity();
        if (!z.f(city)) {
            stringBuffer.append("&city=").append(b(city));
        }
        stringBuffer.append("&key=" + bp.f(this.d));
        return stringBuffer.toString();
    }
}
