package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.nearby.NearbySearch.NearbyQuery;
import com.amap.api.services.nearby.NearbySearchResult;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: NearbySearchHandler */
public final class ae extends l<NearbyQuery, NearbySearchResult> {
    private Context i;
    private NearbyQuery j;

    public ae(Context context, NearbyQuery nearbyQuery) {
        super(context, nearbyQuery);
        this.i = context;
        this.j = nearbyQuery;
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.i));
        LatLonPoint centerPoint = this.j.getCenterPoint();
        if (centerPoint != null) {
            stringBuffer.append("&center=").append(centerPoint.getLongitude()).append(Constants.ACCEPT_TIME_SEPARATOR_SP).append(centerPoint.getLatitude());
        }
        stringBuffer.append("&radius=").append(this.j.getRadius());
        stringBuffer.append("&limit=30");
        stringBuffer.append("&searchtype=").append(this.j.getType());
        stringBuffer.append("&timerange=").append(this.j.getTimeRange());
        return stringBuffer.toString();
    }

    /* access modifiers changed from: private */
    /* renamed from: c */
    public NearbySearchResult a(String str) throws AMapException {
        boolean z = true;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (this.j.getType() != 1) {
                z = false;
            }
            ArrayList a = z.a(jSONObject, z);
            NearbySearchResult nearbySearchResult = new NearbySearchResult();
            nearbySearchResult.setNearbyInfoList(a);
            return nearbySearchResult;
        } catch (JSONException e) {
            t.a(e, "NearbySearchHandler", "paseJSON");
            return null;
        }
    }

    public final String f() {
        return s.c() + "/nearby/around";
    }
}
