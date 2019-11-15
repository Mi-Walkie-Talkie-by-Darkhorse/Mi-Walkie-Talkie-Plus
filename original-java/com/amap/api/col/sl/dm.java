package com.amap.api.col.sl;

import java.util.Map;

/* compiled from: ADIURequest */
public final class dm extends ds {
    private byte[] a;
    private Map<String, String> b;

    public dm(byte[] bArr, Map<String, String> map) {
        this.a = bArr;
        this.b = map;
    }

    public final Map<String, String> c() {
        return null;
    }

    public final Map<String, String> b() {
        return this.b;
    }

    public final String f() {
        return "https://adiu.amap.com/ws/device/adius";
    }

    public final byte[] e() {
        return this.a;
    }
}
