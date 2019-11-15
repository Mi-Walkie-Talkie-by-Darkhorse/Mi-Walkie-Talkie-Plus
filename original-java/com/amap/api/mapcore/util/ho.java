package com.amap.api.mapcore.util;

import java.util.Map;

/* compiled from: ADIURequest */
public class ho extends hv {
    private byte[] a;
    private Map<String, String> b;

    public ho(byte[] bArr, Map<String, String> map) {
        this.a = bArr;
        this.b = map;
    }

    public Map<String, String> a() {
        return null;
    }

    public Map<String, String> b() {
        return this.b;
    }

    public String c() {
        return "https://adiu.amap.com/ws/device/adius";
    }

    public byte[] g() {
        return this.a;
    }
}
