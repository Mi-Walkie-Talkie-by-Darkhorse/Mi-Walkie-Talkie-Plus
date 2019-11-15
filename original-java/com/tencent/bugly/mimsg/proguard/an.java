package com.tencent.bugly.mimsg.proguard;

import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
public final class an extends k {
    private static byte[] i;
    private static Map<String, String> j = new HashMap();
    public byte a = 0;
    public int b = 0;
    public byte[] c = null;
    public String d = "";
    public long e = 0;
    public String f = "";
    public Map<String, String> g = null;
    private String h = "";

    public final void a(j jVar) {
        jVar.a(this.a, 0);
        jVar.a(this.b, 1);
        if (this.c != null) {
            jVar.a(this.c, 2);
        }
        if (this.d != null) {
            jVar.a(this.d, 3);
        }
        jVar.a(this.e, 4);
        if (this.h != null) {
            jVar.a(this.h, 5);
        }
        if (this.f != null) {
            jVar.a(this.f, 6);
        }
        if (this.g != null) {
            jVar.a(this.g, 7);
        }
    }

    static {
        byte[] bArr = new byte[1];
        i = bArr;
        bArr[0] = 0;
        j.put("", "");
    }

    public final void a(i iVar) {
        this.a = iVar.a(this.a, 0, true);
        this.b = iVar.a(this.b, 1, true);
        byte[] bArr = i;
        this.c = iVar.c(2, false);
        this.d = iVar.b(3, false);
        this.e = iVar.a(this.e, 4, false);
        this.h = iVar.b(5, false);
        this.f = iVar.b(6, false);
        this.g = (Map) iVar.a(j, 7, false);
    }
}
