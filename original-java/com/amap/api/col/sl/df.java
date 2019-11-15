package com.amap.api.col.sl;

import java.util.HashMap;
import java.util.Map;

@cr(a = "file")
/* compiled from: DynamicPlugin */
public class df {
    @cs(a = "fname", b = 6)
    private String a;
    @cs(a = "md", b = 6)
    private String b;
    @cs(a = "sname", b = 6)
    private String c;
    @cs(a = "version", b = 6)
    private String d;
    @cs(a = "dversion", b = 6)
    private String e;
    @cs(a = "status", b = 6)
    private String f;

    /* compiled from: DynamicPlugin */
    public static class a {
        /* access modifiers changed from: private */
        public String a;
        /* access modifiers changed from: private */
        public String b;
        /* access modifiers changed from: private */
        public String c;
        /* access modifiers changed from: private */
        public String d;
        /* access modifiers changed from: private */
        public String e;
        /* access modifiers changed from: private */
        public String f = "copy";

        public a(String str, String str2, String str3, String str4, String str5) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
        }

        public final a a(String str) {
            this.f = str;
            return this;
        }

        public final df a() {
            return new df(this);
        }
    }

    public df(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
    }

    private df() {
    }

    public static String a(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("sname", str);
        hashMap.put("dversion", str2);
        return cq.a((Map<String, String>) hashMap);
    }

    public static String b(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("sname", str);
        hashMap.put("status", str2);
        return cq.a((Map<String, String>) hashMap);
    }

    public static String a(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("sname", str);
        return cq.a((Map<String, String>) hashMap);
    }

    public static String b(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("fname", str);
        return cq.a((Map<String, String>) hashMap);
    }

    public static String a(String str, String str2, String str3, String str4) {
        HashMap hashMap = new HashMap();
        hashMap.put("fname", str);
        hashMap.put("sname", str2);
        hashMap.put("dversion", str4);
        hashMap.put("version", str3);
        return cq.a((Map<String, String>) hashMap);
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final String e() {
        return this.e;
    }

    public final String f() {
        return this.f;
    }

    public final void c(String str) {
        this.f = str;
    }
}
