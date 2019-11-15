package com.amap.api.mapcore.util;

import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;

/* compiled from: LocationListener */
public final class ik implements AMapLocationListener {
    public Inner_3dMap_locationListener a = null;

    private static void a(Inner_3dMap_location inner_3dMap_location, AMapLocation aMapLocation) {
        try {
            inner_3dMap_location.setLatitude(aMapLocation.getLatitude());
            inner_3dMap_location.setLongitude(aMapLocation.getLongitude());
            inner_3dMap_location.setAccuracy(aMapLocation.getAccuracy());
            inner_3dMap_location.setBearing(aMapLocation.getBearing());
            inner_3dMap_location.setAltitude(aMapLocation.getAltitude());
            inner_3dMap_location.setProvider(aMapLocation.getProvider());
            inner_3dMap_location.setSpeed(aMapLocation.getSpeed());
            inner_3dMap_location.setTime(aMapLocation.getTime());
            inner_3dMap_location.setErrorCode(aMapLocation.getErrorCode());
            inner_3dMap_location.setErrorInfo(aMapLocation.getErrorInfo());
            inner_3dMap_location.setLocationType(aMapLocation.getLocationType());
            inner_3dMap_location.setLocationDetail(aMapLocation.getLocationDetail());
            inner_3dMap_location.setProvince(aMapLocation.getProvince());
            inner_3dMap_location.setCity(aMapLocation.getCity());
            inner_3dMap_location.setCityCode(aMapLocation.getCityCode());
            inner_3dMap_location.setCountry(aMapLocation.getCountry());
            inner_3dMap_location.setDistrict(aMapLocation.getDistrict());
            inner_3dMap_location.setAddress(aMapLocation.getAddress());
            inner_3dMap_location.setAdCode(aMapLocation.getAdCode());
            inner_3dMap_location.setExtras(aMapLocation.getExtras());
            inner_3dMap_location.setRoad(aMapLocation.getRoad());
        } catch (Throwable th) {
            jd.a(th, "LocationListener", "converterLocation");
        }
    }

    public final void a(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        this.a = inner_3dMap_locationListener;
    }

    public final void onLocationChanged(AMapLocation aMapLocation) {
        try {
            Inner_3dMap_location inner_3dMap_location = new Inner_3dMap_location("");
            a(inner_3dMap_location, aMapLocation);
            this.a.onLocationChanged(inner_3dMap_location);
        } catch (Throwable th) {
            jd.a(th, "LocationListener", "onLocationChanged");
        }
    }
}
