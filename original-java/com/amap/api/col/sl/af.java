package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.nearby.UploadInfo;
import com.xiaomi.mipush.sdk.Constants;

/* compiled from: NearbyUpdateHandler */
public final class af extends l<UploadInfo, Integer> {
    private Context i;
    private UploadInfo j;

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return Integer.valueOf(0);
    }

    public af(Context context, UploadInfo uploadInfo) {
        super(context, uploadInfo);
        this.i = context;
        this.j = uploadInfo;
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.i));
        stringBuffer.append("&userid=").append(this.j.getUserID());
        LatLonPoint point = this.j.getPoint();
        stringBuffer.append("&location=").append(((float) ((int) (point.getLongitude() * 1000000.0d))) / 1000000.0f).append(Constants.ACCEPT_TIME_SEPARATOR_SP).append(((float) ((int) (point.getLatitude() * 1000000.0d))) / 1000000.0f);
        stringBuffer.append("&coordtype=").append(this.j.getCoordType());
        return stringBuffer.toString();
    }

    public final String f() {
        return s.c() + "/nearby/data/create";
    }
}
