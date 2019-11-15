package com.mi.milinkforgame.sdk.base.os.info;

import com.mi.mimsgsdk.utils.Network;
import java.util.HashMap;

public enum AccessPoint {
    NONE("", ServiceProvider.NONE, false),
    NEVER_HEARD("I don't know", ServiceProvider.NEVER_HEARD, false),
    CMNET("cmnet", ServiceProvider.CHINA_MOBILE, false),
    CMWAP("cmwap", ServiceProvider.CHINA_MOBILE, true),
    UNINET("uninet", ServiceProvider.CHINA_UNICOM, false),
    UNIWAP("uniwap", ServiceProvider.CHINA_UNICOM, true),
    _3GNET(Network.NETWORK_TYPE_3GNET, ServiceProvider.CHINA_UNICOM, false),
    _3GWAP(Network.NETWORK_TYPE_3GWAP, ServiceProvider.CHINA_UNICOM, true),
    WONET("wonet", ServiceProvider.CHINA_UNICOM, false),
    CTNET("ctnet", ServiceProvider.CHINA_TELECOM, false),
    CTWAP("ctwap", ServiceProvider.CHINA_TELECOM, true),
    CTLTE("ctlte", ServiceProvider.CHINA_TELECOM, false),
    SHARP777(Network.NETWORK_TYPE_CHINATELECOM, ServiceProvider.CHINA_TELECOM, false);
    
    private static HashMap<String, AccessPoint> ACCESS_POINT_MAP;
    private String name;
    private ServiceProvider provider;
    private boolean wap;

    static {
        int i;
        AccessPoint[] values;
        ACCESS_POINT_MAP = new HashMap<>();
        for (AccessPoint accessPoint : values()) {
            ACCESS_POINT_MAP.put(accessPoint.getName(), accessPoint);
        }
    }

    public static AccessPoint forName(String str) {
        if (str == null) {
            return NONE;
        }
        AccessPoint accessPoint = (AccessPoint) ACCESS_POINT_MAP.get(str.toLowerCase());
        return accessPoint == null ? NEVER_HEARD : accessPoint;
    }

    private AccessPoint(String str, ServiceProvider serviceProvider, boolean z) {
        setName(str);
        setProvider(serviceProvider);
        setWap(z);
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public ServiceProvider getProvider() {
        return this.provider;
    }

    public void setProvider(ServiceProvider serviceProvider) {
        this.provider = serviceProvider;
    }

    public boolean isWap() {
        return this.wap;
    }

    public void setWap(boolean z) {
        this.wap = z;
    }
}
