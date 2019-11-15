package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.route.RouteSearch.TruckRouteQuery;
import com.amap.api.services.route.TruckRouteRestult;
import com.xiaomi.mipush.sdk.Constants;

/* compiled from: TruckRouteSearchHandler */
public final class at extends l<TruckRouteQuery, TruckRouteRestult> {
    private final String i = "/direction/truck?";
    private final String j = "|";
    private final String k = Constants.ACCEPT_TIME_SEPARATOR_SP;

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return z.j(str);
    }

    public at(Context context, TruckRouteQuery truckRouteQuery) {
        super(context, truckRouteQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.d));
        if (((TruckRouteQuery) this.a).getFromAndTo() != null) {
            stringBuffer.append("&origin=").append(t.a(((TruckRouteQuery) this.a).getFromAndTo().getFrom()));
            if (!z.f(((TruckRouteQuery) this.a).getFromAndTo().getStartPoiID())) {
                stringBuffer.append("&originid=").append(((TruckRouteQuery) this.a).getFromAndTo().getStartPoiID());
            }
            stringBuffer.append("&destination=").append(t.a(((TruckRouteQuery) this.a).getFromAndTo().getTo()));
            if (!z.f(((TruckRouteQuery) this.a).getFromAndTo().getDestinationPoiID())) {
                stringBuffer.append("&destinationid=").append(((TruckRouteQuery) this.a).getFromAndTo().getDestinationPoiID());
            }
            if (!z.f(((TruckRouteQuery) this.a).getFromAndTo().getOriginType())) {
                stringBuffer.append("&origintype=").append(((TruckRouteQuery) this.a).getFromAndTo().getOriginType());
            }
            if (!z.f(((TruckRouteQuery) this.a).getFromAndTo().getDestinationType())) {
                stringBuffer.append("&destinationtype=").append(((TruckRouteQuery) this.a).getFromAndTo().getDestinationType());
            }
            if (!z.f(((TruckRouteQuery) this.a).getFromAndTo().getPlateProvince())) {
                stringBuffer.append("&province=").append(((TruckRouteQuery) this.a).getFromAndTo().getPlateProvince());
            }
            if (!z.f(((TruckRouteQuery) this.a).getFromAndTo().getPlateNumber())) {
                stringBuffer.append("&number=").append(((TruckRouteQuery) this.a).getFromAndTo().getPlateNumber());
            }
        }
        stringBuffer.append("&strategy=").append(((TruckRouteQuery) this.a).getMode());
        if (((TruckRouteQuery) this.a).hasPassPoint()) {
            stringBuffer.append("&waypoints=").append(((TruckRouteQuery) this.a).getPassedPointStr());
        }
        stringBuffer.append("&size=").append(((TruckRouteQuery) this.a).getTruckSize());
        stringBuffer.append("&height=").append(((TruckRouteQuery) this.a).getTruckHeight());
        stringBuffer.append("&width=").append(((TruckRouteQuery) this.a).getTruckWidth());
        stringBuffer.append("&load=").append(((TruckRouteQuery) this.a).getTruckLoad());
        stringBuffer.append("&weight=").append(((TruckRouteQuery) this.a).getTruckWeight());
        stringBuffer.append("&axis=").append(((TruckRouteQuery) this.a).getTruckAxis());
        stringBuffer.append("&extensions=all");
        stringBuffer.append("&output=json");
        return stringBuffer.toString();
    }

    public final String f() {
        return s.b() + "/direction/truck?";
    }
}
