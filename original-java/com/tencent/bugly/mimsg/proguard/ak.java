package com.tencent.bugly.mimsg.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
public final class ak extends k {
    private static ArrayList<aj> A = new ArrayList<>();
    private static Map<String, String> B = new HashMap();
    private static Map<String, String> C = new HashMap();
    private static Map<String, String> v = new HashMap();
    private static ai w = new ai();
    private static ah x = new ah();
    private static ArrayList<ah> y = new ArrayList<>();
    private static ArrayList<ah> z = new ArrayList<>();
    public String a = "";
    public long b = 0;
    public String c = "";
    public String d = "";
    public String e = "";
    public String f = "";
    public String g = "";
    public Map<String, String> h = null;
    public String i = "";
    public ai j = null;
    public int k = 0;
    public String l = "";
    public String m = "";
    public ah n = null;
    public ArrayList<ah> o = null;
    public ArrayList<ah> p = null;
    public ArrayList<aj> q = null;
    public Map<String, String> r = null;
    public Map<String, String> s = null;
    public String t = "";
    private boolean u = true;

    public final void a(j jVar) {
        jVar.a(this.a, 0);
        jVar.a(this.b, 1);
        jVar.a(this.c, 2);
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
        if (this.h != null) {
            jVar.a(this.h, 7);
        }
        if (this.i != null) {
            jVar.a(this.i, 8);
        }
        if (this.j != null) {
            jVar.a((k) this.j, 9);
        }
        jVar.a(this.k, 10);
        if (this.l != null) {
            jVar.a(this.l, 11);
        }
        if (this.m != null) {
            jVar.a(this.m, 12);
        }
        if (this.n != null) {
            jVar.a((k) this.n, 13);
        }
        if (this.o != null) {
            jVar.a((Collection<T>) this.o, 14);
        }
        if (this.p != null) {
            jVar.a((Collection<T>) this.p, 15);
        }
        if (this.q != null) {
            jVar.a((Collection<T>) this.q, 16);
        }
        if (this.r != null) {
            jVar.a(this.r, 17);
        }
        if (this.s != null) {
            jVar.a(this.s, 18);
        }
        if (this.t != null) {
            jVar.a(this.t, 19);
        }
        jVar.a(this.u, 20);
    }

    static {
        v.put("", "");
        y.add(new ah());
        z.add(new ah());
        A.add(new aj());
        B.put("", "");
        C.put("", "");
    }

    public final void a(i iVar) {
        this.a = iVar.b(0, true);
        this.b = iVar.a(this.b, 1, true);
        this.c = iVar.b(2, true);
        this.d = iVar.b(3, false);
        this.e = iVar.b(4, false);
        this.f = iVar.b(5, false);
        this.g = iVar.b(6, false);
        this.h = (Map) iVar.a(v, 7, false);
        this.i = iVar.b(8, false);
        this.j = (ai) iVar.a((k) w, 9, false);
        this.k = iVar.a(this.k, 10, false);
        this.l = iVar.b(11, false);
        this.m = iVar.b(12, false);
        this.n = (ah) iVar.a((k) x, 13, false);
        this.o = (ArrayList) iVar.a(y, 14, false);
        this.p = (ArrayList) iVar.a(z, 15, false);
        this.q = (ArrayList) iVar.a(A, 16, false);
        this.r = (Map) iVar.a(B, 17, false);
        this.s = (Map) iVar.a(C, 18, false);
        this.t = iVar.b(19, false);
        boolean z2 = this.u;
        this.u = iVar.a(20, false);
    }
}
