package com.amap.api.mapcore.util;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;
import java.util.Map;

/* compiled from: LogInfo */
public abstract class gu {
    @gn(a = "b2", b = 2)
    protected int a = -1;
    @gn(a = "b1", b = 6)
    protected String b;
    @gn(a = "b3", b = 2)
    protected int c = 1;
    @gn(a = "a1", b = 6)
    private String d;

    public int a() {
        return this.a;
    }

    public void a(int i) {
        this.a = i;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public void b(String str) {
        this.d = fy.b(str);
    }

    public int c() {
        return this.c;
    }

    public void b(int i) {
        this.c = i;
    }

    public static String c(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("b1", str);
        return gl.a((Map<String, String>) hashMap);
    }

    public static String c(int i) {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("b2").append("=").append(i);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return sb.toString();
    }
}
