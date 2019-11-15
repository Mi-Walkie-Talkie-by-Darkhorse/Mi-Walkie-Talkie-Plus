package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.traffic.CircleTrafficQuery;
import com.amap.api.services.traffic.TrafficStatusResult;

/* compiled from: CircleTrafficSearchHandler */
public final class o extends l<CircleTrafficQuery, TrafficStatusResult> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return z.h(str);
    }

    public o(Context context, CircleTrafficQuery circleTrafficQuery) {
        super(context, circleTrafficQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.d));
        if (((CircleTrafficQuery) this.a).getCenterPoint() != null) {
            stringBuffer.append("&location=").append(t.a(((CircleTrafficQuery) this.a).getCenterPoint()));
        }
        stringBuffer.append("&radius=").append(((CircleTrafficQuery) this.a).getRadius());
        stringBuffer.append("&level=").append(((CircleTrafficQuery) this.a).getLevel());
        stringBuffer.append("&extensions=all");
        stringBuffer.append("&output=json");
        return stringBuffer.toString();
    }

    public final String f() {
        return s.a() + "/traffic/status/circle?";
    }
}
