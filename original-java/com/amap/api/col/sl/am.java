package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.geocoder.RegeocodeAddress;
import com.amap.api.services.geocoder.RegeocodeQuery;
import com.xiaomi.mipush.sdk.Constants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ReverseGeocodingHandler */
public final class am extends l<RegeocodeQuery, RegeocodeAddress> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return c(str);
    }

    public am(Context context, RegeocodeQuery regeocodeQuery) {
        super(context, regeocodeQuery);
    }

    public final String f() {
        return s.a() + "/geocode/regeo?";
    }

    private static RegeocodeAddress c(String str) throws AMapException {
        RegeocodeAddress regeocodeAddress = new RegeocodeAddress();
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("regeocode");
            if (optJSONObject != null) {
                regeocodeAddress.setFormatAddress(z.a(optJSONObject, "formatted_address"));
                JSONObject optJSONObject2 = optJSONObject.optJSONObject("addressComponent");
                if (optJSONObject2 != null) {
                    z.a(optJSONObject2, regeocodeAddress);
                }
                regeocodeAddress.setPois(z.c(optJSONObject));
                JSONArray optJSONArray = optJSONObject.optJSONArray("roads");
                if (optJSONArray != null) {
                    z.b(optJSONArray, regeocodeAddress);
                }
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("roadinters");
                if (optJSONArray2 != null) {
                    z.a(optJSONArray2, regeocodeAddress);
                }
                JSONArray optJSONArray3 = optJSONObject.optJSONArray("aois");
                if (optJSONArray3 != null) {
                    z.c(optJSONArray3, regeocodeAddress);
                }
            }
        } catch (JSONException e) {
            t.a(e, "ReverseGeocodingHandler", "paseJSON");
        }
        return regeocodeAddress;
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("output=json&extensions=all&location=").append(((RegeocodeQuery) this.a).getPoint().getLongitude()).append(Constants.ACCEPT_TIME_SEPARATOR_SP).append(((RegeocodeQuery) this.a).getPoint().getLatitude());
        if (!TextUtils.isEmpty(((RegeocodeQuery) this.a).getPoiType())) {
            stringBuffer.append("&poitype=").append(((RegeocodeQuery) this.a).getPoiType());
        }
        stringBuffer.append("&radius=").append((int) ((RegeocodeQuery) this.a).getRadius());
        stringBuffer.append("&coordsys=").append(((RegeocodeQuery) this.a).getLatLonType());
        stringBuffer.append("&key=" + bp.f(this.d));
        return stringBuffer.toString();
    }
}
