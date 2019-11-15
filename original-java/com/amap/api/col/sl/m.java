package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.route.BusRouteResult;
import com.amap.api.services.route.RouteSearch.BusRouteQuery;

/* compiled from: BusRouteSearchHandler */
public final class m extends l<BusRouteQuery, BusRouteResult> {
    /* access modifiers changed from: protected */
    public final /* bridge */ /* synthetic */ Object a(String str) throws AMapException {
        return z.a(str);
    }

    public m(Context context, BusRouteQuery busRouteQuery) {
        super(context, busRouteQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.d));
        stringBuffer.append("&origin=").append(t.a(((BusRouteQuery) this.a).getFromAndTo().getFrom()));
        stringBuffer.append("&destination=").append(t.a(((BusRouteQuery) this.a).getFromAndTo().getTo()));
        String city = ((BusRouteQuery) this.a).getCity();
        if (!z.f(city)) {
            city = b(city);
            stringBuffer.append("&city=").append(city);
        }
        String str = city;
        if (!z.f(((BusRouteQuery) this.a).getCity())) {
            stringBuffer.append("&cityd=").append(b(str));
        }
        stringBuffer.append("&strategy=").append(((BusRouteQuery) this.a).getMode());
        stringBuffer.append("&nightflag=").append(((BusRouteQuery) this.a).getNightFlag());
        stringBuffer.append("&extensions=all");
        stringBuffer.append("&output=json");
        return stringBuffer.toString();
    }

    public final String f() {
        return s.a() + "/direction/transit/integrated?";
    }
}
