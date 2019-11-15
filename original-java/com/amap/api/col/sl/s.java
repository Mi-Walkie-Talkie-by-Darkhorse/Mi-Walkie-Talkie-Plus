package com.amap.api.col.sl;

import com.amap.api.col.sl.bz.a;
import com.amap.api.services.core.ServiceSettings;

/* compiled from: ConfigableConst */
public final class s {
    public static final String[] a = {"com.amap.api.services", "com.amap.api.search.admic"};

    public static String a() {
        if (ServiceSettings.getInstance().getProtocol() == 1) {
            return "http://restapi.amap.com/v3";
        }
        return "https://restapi.amap.com/v3";
    }

    public static String b() {
        if (ServiceSettings.getInstance().getProtocol() == 1) {
            return "http://restapi.amap.com/v4";
        }
        return "https://restapi.amap.com/v4";
    }

    public static String c() {
        if (ServiceSettings.getInstance().getProtocol() == 1) {
            return "http://yuntuapi.amap.com";
        }
        return "https://yuntuapi.amap.com";
    }

    public static bz a(boolean z) {
        String str = "getSDKInfo";
        boolean z2 = false;
        try {
            return new a("sea", "6.1.0", "AMAP SDK Android Search 6.1.0").a(a).a(z).a("6.1.0").a();
        } catch (bo e) {
            t.a(e, "ConfigableConst", str);
            return z2;
        }
    }

    public static String d() {
        if (ServiceSettings.getInstance().getProtocol() == 1) {
            return "http://m5.amap.com/ws/mapapi/shortaddress/transform";
        }
        return "https://m5.amap.com/ws/mapapi/shortaddress/transform";
    }
}
