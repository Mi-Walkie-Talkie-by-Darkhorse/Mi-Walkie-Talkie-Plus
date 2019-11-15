package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.route.DriveRouteResult;
import com.amap.api.services.route.RouteSearch.DriveRouteQuery;

/* compiled from: DriveRouteSearchHandler */
public final class w extends l<DriveRouteQuery, DriveRouteResult> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return z.b(str);
    }

    public w(Context context, DriveRouteQuery driveRouteQuery) {
        super(context, driveRouteQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.d));
        if (((DriveRouteQuery) this.a).getFromAndTo() != null) {
            stringBuffer.append("&origin=").append(t.a(((DriveRouteQuery) this.a).getFromAndTo().getFrom()));
            if (!z.f(((DriveRouteQuery) this.a).getFromAndTo().getStartPoiID())) {
                stringBuffer.append("&originid=").append(((DriveRouteQuery) this.a).getFromAndTo().getStartPoiID());
            }
            stringBuffer.append("&destination=").append(t.a(((DriveRouteQuery) this.a).getFromAndTo().getTo()));
            if (!z.f(((DriveRouteQuery) this.a).getFromAndTo().getDestinationPoiID())) {
                stringBuffer.append("&destinationid=").append(((DriveRouteQuery) this.a).getFromAndTo().getDestinationPoiID());
            }
            if (!z.f(((DriveRouteQuery) this.a).getFromAndTo().getOriginType())) {
                stringBuffer.append("&origintype=").append(((DriveRouteQuery) this.a).getFromAndTo().getOriginType());
            }
            if (!z.f(((DriveRouteQuery) this.a).getFromAndTo().getDestinationType())) {
                stringBuffer.append("&destinationtype=").append(((DriveRouteQuery) this.a).getFromAndTo().getDestinationType());
            }
            if (!z.f(((DriveRouteQuery) this.a).getFromAndTo().getPlateProvince())) {
                stringBuffer.append("&province=").append(((DriveRouteQuery) this.a).getFromAndTo().getPlateProvince());
            }
            if (!z.f(((DriveRouteQuery) this.a).getFromAndTo().getPlateNumber())) {
                stringBuffer.append("&number=").append(((DriveRouteQuery) this.a).getFromAndTo().getPlateNumber());
            }
        }
        stringBuffer.append("&strategy=").append(((DriveRouteQuery) this.a).getMode());
        stringBuffer.append("&extensions=all");
        if (((DriveRouteQuery) this.a).hasPassPoint()) {
            stringBuffer.append("&waypoints=").append(((DriveRouteQuery) this.a).getPassedPointStr());
        }
        if (((DriveRouteQuery) this.a).hasAvoidpolygons()) {
            stringBuffer.append("&avoidpolygons=").append(((DriveRouteQuery) this.a).getAvoidpolygonsStr());
        }
        if (((DriveRouteQuery) this.a).hasAvoidRoad()) {
            stringBuffer.append("&avoidroad=").append(b(((DriveRouteQuery) this.a).getAvoidRoad()));
        }
        stringBuffer.append("&output=json");
        return stringBuffer.toString();
    }

    public final String f() {
        return s.a() + "/direction/driving?";
    }
}
