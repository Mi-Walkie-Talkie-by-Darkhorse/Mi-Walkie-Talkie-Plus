package com.mi.milinkforgame.sdk.base.os.info;

import com.mi.milinkforgame.sdk.util.CommonUtils;
import java.util.HashMap;
import java.util.Map;

public enum ServiceProvider {
    NONE(CommonUtils.NOT_AVALIBLE),
    NEVER_HEARD("Unknown"),
    CHINA_MOBILE("China Mobile"),
    CHINA_UNICOM("China Unicom"),
    CHINA_TELECOM("China Telecom");
    
    private static final Map<String, ServiceProvider> IMSI_PROVIDER_MAP = null;
    private String name;

    static {
        IMSI_PROVIDER_MAP = new HashMap();
        IMSI_PROVIDER_MAP.put("46000", CHINA_MOBILE);
        IMSI_PROVIDER_MAP.put("46002", CHINA_MOBILE);
        IMSI_PROVIDER_MAP.put("46007", CHINA_MOBILE);
        IMSI_PROVIDER_MAP.put("46003", CHINA_TELECOM);
        IMSI_PROVIDER_MAP.put("46005", CHINA_TELECOM);
        IMSI_PROVIDER_MAP.put("46001", CHINA_UNICOM);
        IMSI_PROVIDER_MAP.put("46006", CHINA_UNICOM);
        IMSI_PROVIDER_MAP.put("46020", CHINA_MOBILE);
    }

    public static ServiceProvider fromIMSI(String str) {
        if (str == null) {
            return NONE;
        }
        if (str.length() < 5) {
            return NONE;
        }
        ServiceProvider serviceProvider = (ServiceProvider) IMSI_PROVIDER_MAP.get(str.substring(0, 5));
        return serviceProvider == null ? NEVER_HEARD : serviceProvider;
    }

    private ServiceProvider(String str) {
        setName(str);
    }

    public String getName() {
        return this.name;
    }

    private void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return getName();
    }
}
