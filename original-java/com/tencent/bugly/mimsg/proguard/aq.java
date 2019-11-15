package com.tencent.bugly.mimsg.proguard;

import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
public final class aq extends k {
    private static Map<String, String> i = new HashMap();
    public long a = 0;
    public byte b = 0;
    public String c = "";
    public String d = "";
    public String e = "";
    public Map<String, String> f = null;
    public String g = "";
    public boolean h = true;

    public final void a(j jVar) {
        jVar.a(this.a, 0);
        jVar.a(this.b, 1);
        if (this.c != null) {
            jVar.a(this.c, 2);
        }
        if (this.d != null) {
            jVar.a(this.d, 3);
        }
        if (this.e != null) {
            jVar.a(this.e, 4);
        }
        if (this.f != null) {
            jVar.a(this.f, 5);
        }
        if (this.g != null) {
            jVar.a(this.g, 6);
        }
        jVar.a(this.h, 7);
    }

    static {
        i.put("", "");
    }

    public final void a(i iVar) {
        this.a = iVar.a(this.a, 0, true);
        this.b = iVar.a(this.b, 1, true);
        this.c = iVar.b(2, false);
        this.d = iVar.b(3, false);
        this.e = iVar.b(4, false);
        this.f = (Map) iVar.a(i, 5, false);
        this.g = iVar.b(6, false);
        boolean z = this.h;
        this.h = iVar.a(7, false);
    }
}
