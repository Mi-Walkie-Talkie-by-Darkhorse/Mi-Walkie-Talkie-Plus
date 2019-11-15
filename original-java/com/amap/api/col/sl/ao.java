package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.traffic.RoadTrafficQuery;
import com.amap.api.services.traffic.TrafficStatusResult;

/* compiled from: RoadTrafficSearchHandler */
public final class ao extends l<RoadTrafficQuery, TrafficStatusResult> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return z.h(str);
    }

    public ao(Context context, RoadTrafficQuery roadTrafficQuery) {
        super(context, roadTrafficQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.d));
        if (!TextUtils.isEmpty(((RoadTrafficQuery) this.a).getName())) {
            stringBuffer.append("&name=").append(((RoadTrafficQuery) this.a).getName());
        }
        if (!TextUtils.isEmpty(((RoadTrafficQuery) this.a).getAdCode())) {
            stringBuffer.append("&adcode=").append(((RoadTrafficQuery) this.a).getAdCode());
        }
        stringBuffer.append("&level=").append(((RoadTrafficQuery) this.a).getLevel());
        stringBuffer.append("&extensions=all");
        stringBuffer.append("&output=json");
        return stringBuffer.toString();
    }

    public final String f() {
        return s.a() + "/traffic/status/road?";
    }
}
