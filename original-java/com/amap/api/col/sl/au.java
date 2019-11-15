package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.route.RouteSearch.WalkRouteQuery;
import com.amap.api.services.route.WalkRouteResult;

/* compiled from: WalkRouteSearchHandler */
public final class au extends l<WalkRouteQuery, WalkRouteResult> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return z.c(str);
    }

    public au(Context context, WalkRouteQuery walkRouteQuery) {
        super(context, walkRouteQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.d));
        stringBuffer.append("&origin=").append(t.a(((WalkRouteQuery) this.a).getFromAndTo().getFrom()));
        stringBuffer.append("&destination=").append(t.a(((WalkRouteQuery) this.a).getFromAndTo().getTo()));
        stringBuffer.append("&multipath=0");
        stringBuffer.append("&output=json");
        return stringBuffer.toString();
    }

    public final String f() {
        return s.a() + "/direction/walking?";
    }
}
