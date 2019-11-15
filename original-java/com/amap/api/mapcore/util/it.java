package com.amap.api.mapcore.util;

import com.amap.api.mapcore.util.fx.a;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.tencent.connect.common.Constants;

/* compiled from: Util */
public final class it {
    public static final String[] a = {"com.amap.api.mapcore2d", "com.amap.api.maps2d"};
    static fx b = null;
    private static final String[] c = {"com.amap.api.maps", "com.amap.api.mapcore", "com.autonavi.amap.mapcore", "com.amap.api.3dmap.admic", "com.amap.api.trace", "com.amap.api.trace.core"};

    public static fx a() throws fn {
        Class cls = null;
        if (b != null) {
            return b;
        }
        try {
            cls = Class.forName("com.amap.api.maps.MapsInitializer");
        } catch (Throwable th) {
        }
        if (cls != null) {
            try {
                String str = (String) je.a(cls, "getVersion", (Object[]) null, (Class<?>[]) null);
                b = new a("3dmap", str, "AMAP_SDK_Android_Map_" + str).a(c).a();
            } catch (Throwable th2) {
            }
        } else {
            try {
                String str2 = (String) je.a(Class.forName("com.amap.api.maps2d.MapsInitializer"), "getVersion", (Object[]) null, (Class<?>[]) null);
                b = new a("2dmap", str2, "AMAP_SDK_Android_2DMap_" + str2).a(a).a();
            } catch (Throwable th3) {
            }
        }
        return b;
    }

    public static boolean a(ij ijVar) {
        if (ijVar != null && !ijVar.d().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO) && !ijVar.d().equals("5") && !ijVar.d().equals(Constants.VIA_SHARE_TYPE_INFO)) {
            return a((Inner_3dMap_location) ijVar);
        }
        return false;
    }

    private static boolean a(Inner_3dMap_location inner_3dMap_location) {
        double longitude = inner_3dMap_location.getLongitude();
        double latitude = inner_3dMap_location.getLatitude();
        return !(longitude == 0.0d && latitude == 0.0d) && longitude <= 180.0d && latitude <= 90.0d && longitude >= -180.0d && latitude >= -90.0d;
    }
}
