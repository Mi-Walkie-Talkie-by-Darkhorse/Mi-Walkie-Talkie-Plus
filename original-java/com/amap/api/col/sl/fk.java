package com.amap.api.col.sl;

import java.util.Map;

/* compiled from: HttpRequest */
public final class fk extends ds {
    Map<String, String> a = null;
    Map<String, String> b = null;
    String c = "";
    byte[] d = null;

    public final void a(Map<String, String> map) {
        this.a = map;
    }

    public final void b(Map<String, String> map) {
        this.b = map;
    }

    public final Map<String, String> c() {
        return this.a;
    }

    public final Map<String, String> b() {
        return this.b;
    }

    public final String f() {
        return this.c;
    }

    public final void a(String str) {
        this.c = str;
    }

    public final byte[] e() {
        return this.d;
    }
}
