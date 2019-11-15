package com.amap.api.col.sl;

import java.util.HashMap;
import java.util.Map;

/* compiled from: LogUpdateRequest */
public final class cl extends ds {
    private byte[] a;
    private String b = "1";

    public cl(byte[] bArr, String str) {
        this.a = (byte[]) bArr.clone();
        this.b = str;
    }

    public final Map<String, String> c() {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", "application/zip");
        hashMap.put("Content-Length", String.valueOf(this.a.length));
        return hashMap;
    }

    public final Map<String, String> b() {
        return null;
    }

    public final String f() {
        String c = ca.c(ch.c);
        byte[] a2 = ca.a(ch.b);
        byte[] bArr = new byte[(a2.length + 50)];
        System.arraycopy(this.a, 0, bArr, 0, 50);
        System.arraycopy(a2, 0, bArr, 50, a2.length);
        return String.format(c, new Object[]{"1", this.b, "1", "open", bw.a(bArr)});
    }

    public final byte[] e() {
        return this.a;
    }
}
