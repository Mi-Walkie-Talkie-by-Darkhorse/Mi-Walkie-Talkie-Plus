package com.amap.api.mapcore.util;

import java.util.HashMap;
import java.util.Map;

/* compiled from: LogUpdateRequest */
public class ge extends hv {
    private byte[] a;
    private String b = "1";

    public ge(byte[] bArr) {
        this.a = (byte[]) bArr.clone();
    }

    public ge(byte[] bArr, String str) {
        this.a = (byte[]) bArr.clone();
        this.b = str;
    }

    private String d() {
        byte[] a2 = fy.a(ga.a);
        byte[] bArr = new byte[(a2.length + 50)];
        System.arraycopy(this.a, 0, bArr, 0, 50);
        System.arraycopy(a2, 0, bArr, 50, a2.length);
        return fu.a(bArr);
    }

    public Map<String, String> a() {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", "application/zip");
        hashMap.put("Content-Length", String.valueOf(this.a.length));
        return hashMap;
    }

    public Map<String, String> b() {
        return null;
    }

    public String c() {
        return String.format(fy.c(ga.b), new Object[]{"1", this.b, "1", "open", d()});
    }

    public byte[] g() {
        return this.a;
    }
}
