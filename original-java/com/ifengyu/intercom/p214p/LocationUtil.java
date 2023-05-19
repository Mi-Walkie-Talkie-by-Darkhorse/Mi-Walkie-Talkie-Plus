package com.ifengyu.intercom.p214p;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import androidx.core.content.ContextCompat;
import com.ifengyu.intercom.bean.GPS;
import com.ifengyu.library.utils.C4971k;
import java.util.List;

/* renamed from: com.ifengyu.intercom.p.x */
/* loaded from: classes2.dex */
public class LocationUtil {
    /* renamed from: a */
    public static Location m11055a(Context context) {
        Location lastKnownLocation;
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        List<String> providers = locationManager.getProviders(true);
        String str = "network";
        if (providers.contains("gps")) {
            C4971k.m8654f("LocationUtil", "is GPS");
        } else if (providers.contains("network")) {
            C4971k.m8654f("LocationUtil", "is network");
        } else {
            str = null;
        }
        if (str == null || (!(ContextCompat.m23930a(context, "android.permission.ACCESS_FINE_LOCATION") == 0 || ContextCompat.m23930a(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) || (lastKnownLocation = locationManager.getLastKnownLocation(str)) == null)) {
            return null;
        }
        C4161y.m11049f("LocationUtil", "string" + ("纬度为：" + lastKnownLocation.getLatitude() + ",经度为：" + lastKnownLocation.getLongitude() + "---" + lastKnownLocation.getAltitude()));
        GPS m11080d = CoordinateTransformUtil.m11080d(lastKnownLocation.getLatitude(), lastKnownLocation.getLongitude());
        lastKnownLocation.setLongitude(m11080d.getLng());
        lastKnownLocation.setLatitude(m11080d.getLat());
        C4161y.m11049f("LocationUtil", "string" + ("纬度为：" + lastKnownLocation.getLatitude() + ",经度为：" + lastKnownLocation.getLongitude() + "---" + lastKnownLocation.getAltitude()));
        return lastKnownLocation;
    }
}
