package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.route.DistanceResult;
import com.amap.api.services.route.DistanceSearch.DistanceQuery;
import com.xiaomi.mipush.sdk.Constants;
import java.util.List;

/* compiled from: DistanceSearchHandler */
public final class u extends l<DistanceQuery, DistanceResult> {
    private final String i = "/distance?";
    private final String j = "|";
    private final String k = Constants.ACCEPT_TIME_SEPARATOR_SP;

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return z.i(str);
    }

    public u(Context context, DistanceQuery distanceQuery) {
        super(context, distanceQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.d));
        List origins = ((DistanceQuery) this.a).getOrigins();
        if (origins != null && origins.size() > 0) {
            stringBuffer.append("&origins=");
            int size = origins.size();
            for (int i2 = 0; i2 < size; i2++) {
                LatLonPoint latLonPoint = (LatLonPoint) origins.get(i2);
                if (latLonPoint != null) {
                    double a = t.a(latLonPoint.getLatitude());
                    stringBuffer.append(t.a(latLonPoint.getLongitude()));
                    stringBuffer.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                    stringBuffer.append(a);
                    if (i2 < size) {
                        stringBuffer.append("|");
                    }
                }
            }
        }
        LatLonPoint destination = ((DistanceQuery) this.a).getDestination();
        if (destination != null) {
            double a2 = t.a(destination.getLatitude());
            double a3 = t.a(destination.getLongitude());
            stringBuffer.append("&destination=");
            stringBuffer.append(a3);
            stringBuffer.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            stringBuffer.append(a2);
        }
        stringBuffer.append("&type=").append(((DistanceQuery) this.a).getType());
        stringBuffer.append("&extensions=all");
        stringBuffer.append("&output=json");
        return stringBuffer.toString();
    }

    public final String f() {
        return s.a() + "/distance?";
    }
}
