package com.amap.api.mapcore.util;

import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.AMapLocationMode;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;

/* compiled from: AMapClientUtils */
public final class ii {
    public static AMapLocationClientOption a() {
        return new AMapLocationClientOption();
    }

    public static void a(AMapLocationClientOption aMapLocationClientOption, Inner_3dMap_locationOption inner_3dMap_locationOption) {
        AMapLocationMode aMapLocationMode;
        try {
            aMapLocationClientOption.setInterval(inner_3dMap_locationOption.getInterval());
            AMapLocationMode aMapLocationMode2 = AMapLocationMode.Hight_Accuracy;
            switch (inner_3dMap_locationOption.getLocationMode()) {
                case Battery_Saving:
                    aMapLocationMode = AMapLocationMode.Battery_Saving;
                    break;
                case Device_Sensors:
                    aMapLocationMode = AMapLocationMode.Device_Sensors;
                    break;
                case Hight_Accuracy:
                    aMapLocationMode = AMapLocationMode.Hight_Accuracy;
                    break;
                default:
                    aMapLocationMode = AMapLocationMode.Hight_Accuracy;
                    break;
            }
            aMapLocationClientOption.setLocationMode(aMapLocationMode);
            aMapLocationClientOption.setOnceLocation(inner_3dMap_locationOption.isOnceLocation());
            aMapLocationClientOption.setNeedAddress(inner_3dMap_locationOption.isNeedAddress());
        } catch (Throwable th) {
        }
    }

    public static void a(Object obj, Inner_3dMap_locationListener inner_3dMap_locationListener) {
        ik ikVar = new ik();
        ikVar.a(inner_3dMap_locationListener);
        ((AMapLocationClient) obj).setLocationListener(ikVar);
    }
}
