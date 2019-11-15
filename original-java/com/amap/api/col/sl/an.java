package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.route.RideRouteResult;
import com.amap.api.services.route.RouteSearch.RideRouteQuery;

/* compiled from: RideRouteSearchHandler */
public final class an extends l<RideRouteQuery, RideRouteResult> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return z.g(str);
    }

    public an(Context context, RideRouteQuery rideRouteQuery) {
        super(context, rideRouteQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.d));
        stringBuffer.append("&origin=").append(t.a(((RideRouteQuery) this.a).getFromAndTo().getFrom()));
        stringBuffer.append("&destination=").append(t.a(((RideRouteQuery) this.a).getFromAndTo().getTo()));
        stringBuffer.append("&output=json");
        return stringBuffer.toString();
    }

    public final String f() {
        return s.b() + "/direction/bicycling?";
    }
}
