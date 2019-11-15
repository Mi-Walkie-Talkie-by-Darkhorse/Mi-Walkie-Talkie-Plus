package com.mi.milinkforgame.sdk.base.os.info;

public enum NetworkType {
    NONE("None", false),
    WIFI("Wifi", true),
    MOBILE_2G("2G", true),
    MOBILE_3G("3G", true),
    ETHERNET("Ethernet", true),
    OTHERS("Other", true);
    
    private boolean available;
    private String name;

    private NetworkType(String str, boolean z) {
        setName(str);
        setAvailable(z);
    }

    public String getName() {
        return this.name;
    }

    public boolean isAvailable() {
        return this.available;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setAvailable(boolean z) {
        this.available = z;
    }
}
