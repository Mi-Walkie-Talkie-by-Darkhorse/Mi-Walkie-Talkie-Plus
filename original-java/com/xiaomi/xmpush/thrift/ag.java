package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.thrift.meta_data.c;
import org.apache.thrift.meta_data.e;
import org.apache.thrift.meta_data.g;
import org.apache.thrift.protocol.b;
import org.apache.thrift.protocol.d;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class ag implements Serializable, Cloneable, org.apache.thrift.a<ag, a> {
    private static final b A = new b("target", 12, 2);
    private static final b B = new b("id", 11, 3);
    private static final b C = new b("appId", 11, 4);
    private static final b D = new b("appVersion", 11, 5);
    private static final b E = new b("packageName", 11, 6);
    private static final b F = new b("token", 11, 7);
    private static final b G = new b("deviceId", 11, 8);
    private static final b H = new b("aliasName", 11, 9);
    private static final b I = new b("sdkVersion", 11, 10);
    private static final b J = new b("regId", 11, 11);
    private static final b K = new b("pushSdkVersionName", 11, 12);
    private static final b L = new b("pushSdkVersionCode", 8, 13);
    private static final b M = new b("appVersionCode", 8, 14);
    private static final b N = new b("androidId", 11, 15);
    private static final b O = new b("imei", 11, 16);
    private static final b P = new b("serial", 11, 17);
    private static final b Q = new b("imeiMd5", 11, 18);
    private static final b R = new b("spaceId", 8, 19);
    private static final b S = new b("reason", 8, 20);
    private static final b T = new b("connectionAttrs", HttpConstants.CR, 100);
    private static final b U = new b("cleanOldRegInfo", 2, 101);
    private static final b V = new b("oldRegId", 11, 102);
    public static final Map<a, org.apache.thrift.meta_data.b> x;
    private static final j y = new j("XmPushActionRegistration");
    private static final b z = new b("debug", 11, 1);
    private BitSet W = new BitSet(4);
    public String a;
    public v b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public String l;
    public int m;
    public int n;
    public String o;
    public String p;
    public String q;
    public String r;
    public int s;
    public u t;
    public Map<String, String> u;
    public boolean v = false;
    public String w;

    public enum a {
        DEBUG(1, "debug"),
        TARGET(2, "target"),
        ID(3, "id"),
        APP_ID(4, "appId"),
        APP_VERSION(5, "appVersion"),
        PACKAGE_NAME(6, "packageName"),
        TOKEN(7, "token"),
        DEVICE_ID(8, "deviceId"),
        ALIAS_NAME(9, "aliasName"),
        SDK_VERSION(10, "sdkVersion"),
        REG_ID(11, "regId"),
        PUSH_SDK_VERSION_NAME(12, "pushSdkVersionName"),
        PUSH_SDK_VERSION_CODE(13, "pushSdkVersionCode"),
        APP_VERSION_CODE(14, "appVersionCode"),
        ANDROID_ID(15, "androidId"),
        IMEI(16, "imei"),
        SERIAL(17, "serial"),
        IMEI_MD5(18, "imeiMd5"),
        SPACE_ID(19, "spaceId"),
        REASON(20, "reason"),
        CONNECTION_ATTRS(100, "connectionAttrs"),
        CLEAN_OLD_REG_INFO(101, "cleanOldRegInfo"),
        OLD_REG_ID(102, "oldRegId");
        
        private static final Map<String, a> x = null;
        private final short y;
        private final String z;

        static {
            x = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                x.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.y = s;
            this.z = str;
        }

        public String a() {
            return this.z;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.DEBUG, new org.apache.thrift.meta_data.b("debug", 2, new c(11)));
        enumMap.put(a.TARGET, new org.apache.thrift.meta_data.b("target", 2, new g(12, v.class)));
        enumMap.put(a.ID, new org.apache.thrift.meta_data.b("id", 1, new c(11)));
        enumMap.put(a.APP_ID, new org.apache.thrift.meta_data.b("appId", 1, new c(11)));
        enumMap.put(a.APP_VERSION, new org.apache.thrift.meta_data.b("appVersion", 2, new c(11)));
        enumMap.put(a.PACKAGE_NAME, new org.apache.thrift.meta_data.b("packageName", 2, new c(11)));
        enumMap.put(a.TOKEN, new org.apache.thrift.meta_data.b("token", 1, new c(11)));
        enumMap.put(a.DEVICE_ID, new org.apache.thrift.meta_data.b("deviceId", 2, new c(11)));
        enumMap.put(a.ALIAS_NAME, new org.apache.thrift.meta_data.b("aliasName", 2, new c(11)));
        enumMap.put(a.SDK_VERSION, new org.apache.thrift.meta_data.b("sdkVersion", 2, new c(11)));
        enumMap.put(a.REG_ID, new org.apache.thrift.meta_data.b("regId", 2, new c(11)));
        enumMap.put(a.PUSH_SDK_VERSION_NAME, new org.apache.thrift.meta_data.b("pushSdkVersionName", 2, new c(11)));
        enumMap.put(a.PUSH_SDK_VERSION_CODE, new org.apache.thrift.meta_data.b("pushSdkVersionCode", 2, new c(8)));
        enumMap.put(a.APP_VERSION_CODE, new org.apache.thrift.meta_data.b("appVersionCode", 2, new c(8)));
        enumMap.put(a.ANDROID_ID, new org.apache.thrift.meta_data.b("androidId", 2, new c(11)));
        enumMap.put(a.IMEI, new org.apache.thrift.meta_data.b("imei", 2, new c(11)));
        enumMap.put(a.SERIAL, new org.apache.thrift.meta_data.b("serial", 2, new c(11)));
        enumMap.put(a.IMEI_MD5, new org.apache.thrift.meta_data.b("imeiMd5", 2, new c(11)));
        enumMap.put(a.SPACE_ID, new org.apache.thrift.meta_data.b("spaceId", 2, new c(8)));
        enumMap.put(a.REASON, new org.apache.thrift.meta_data.b("reason", 2, new org.apache.thrift.meta_data.a(Tnaf.POW_2_WIDTH, u.class)));
        enumMap.put(a.CONNECTION_ATTRS, new org.apache.thrift.meta_data.b("connectionAttrs", 2, new e(HttpConstants.CR, new c(11), new c(11))));
        enumMap.put(a.CLEAN_OLD_REG_INFO, new org.apache.thrift.meta_data.b("cleanOldRegInfo", 2, new c(2)));
        enumMap.put(a.OLD_REG_ID, new org.apache.thrift.meta_data.b("oldRegId", 2, new c(11)));
        x = Collections.unmodifiableMap(enumMap);
        org.apache.thrift.meta_data.b.a(ag.class, x);
    }

    public ag a(int i2) {
        this.m = i2;
        a(true);
        return this;
    }

    public ag a(u uVar) {
        this.t = uVar;
        return this;
    }

    public ag a(String str) {
        this.c = str;
        return this;
    }

    public void a(org.apache.thrift.protocol.e eVar) {
        eVar.g();
        while (true) {
            b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                z();
                return;
            }
            switch (i2.c) {
                case 1:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.a = eVar.w();
                        break;
                    }
                case 2:
                    if (i2.b != 12) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.b = new v();
                        this.b.a(eVar);
                        break;
                    }
                case 3:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.c = eVar.w();
                        break;
                    }
                case 4:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.d = eVar.w();
                        break;
                    }
                case 5:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.e = eVar.w();
                        break;
                    }
                case 6:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.f = eVar.w();
                        break;
                    }
                case 7:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.g = eVar.w();
                        break;
                    }
                case 8:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.h = eVar.w();
                        break;
                    }
                case 9:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.i = eVar.w();
                        break;
                    }
                case 10:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.j = eVar.w();
                        break;
                    }
                case 11:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.k = eVar.w();
                        break;
                    }
                case 12:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.l = eVar.w();
                        break;
                    }
                case 13:
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.m = eVar.t();
                        a(true);
                        break;
                    }
                case 14:
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.n = eVar.t();
                        b(true);
                        break;
                    }
                case 15:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.o = eVar.w();
                        break;
                    }
                case 16:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.p = eVar.w();
                        break;
                    }
                case 17:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.q = eVar.w();
                        break;
                    }
                case 18:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.r = eVar.w();
                        break;
                    }
                case 19:
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.s = eVar.t();
                        c(true);
                        break;
                    }
                case 20:
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.t = u.a(eVar.t());
                        break;
                    }
                case 100:
                    if (i2.b != 13) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        d k2 = eVar.k();
                        this.u = new HashMap(k2.c * 2);
                        for (int i3 = 0; i3 < k2.c; i3++) {
                            this.u.put(eVar.w(), eVar.w());
                        }
                        eVar.l();
                        break;
                    }
                case 101:
                    if (i2.b != 2) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.v = eVar.q();
                        d(true);
                        break;
                    }
                case 102:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.w = eVar.w();
                        break;
                    }
                default:
                    h.a(eVar, i2.b);
                    break;
            }
            eVar.j();
        }
    }

    public void a(boolean z2) {
        this.W.set(0, z2);
    }

    public boolean a() {
        return this.a != null;
    }

    public boolean a(ag agVar) {
        if (agVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = agVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.equals(agVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = agVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.a(agVar.b))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = agVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.c.equals(agVar.c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = agVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.d.equals(agVar.d))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = agVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.e.equals(agVar.e))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = agVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f.equals(agVar.f))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = agVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.g.equals(agVar.g))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = agVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.h.equals(agVar.h))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = agVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.i.equals(agVar.i))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = agVar.l();
        if ((l2 || l3) && (!l2 || !l3 || !this.j.equals(agVar.j))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = agVar.m();
        if ((m2 || m3) && (!m2 || !m3 || !this.k.equals(agVar.k))) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = agVar.n();
        if ((n2 || n3) && (!n2 || !n3 || !this.l.equals(agVar.l))) {
            return false;
        }
        boolean o2 = o();
        boolean o3 = agVar.o();
        if ((o2 || o3) && (!o2 || !o3 || this.m != agVar.m)) {
            return false;
        }
        boolean p2 = p();
        boolean p3 = agVar.p();
        if ((p2 || p3) && (!p2 || !p3 || this.n != agVar.n)) {
            return false;
        }
        boolean q2 = q();
        boolean q3 = agVar.q();
        if ((q2 || q3) && (!q2 || !q3 || !this.o.equals(agVar.o))) {
            return false;
        }
        boolean r2 = r();
        boolean r3 = agVar.r();
        if ((r2 || r3) && (!r2 || !r3 || !this.p.equals(agVar.p))) {
            return false;
        }
        boolean s2 = s();
        boolean s3 = agVar.s();
        if ((s2 || s3) && (!s2 || !s3 || !this.q.equals(agVar.q))) {
            return false;
        }
        boolean t2 = t();
        boolean t3 = agVar.t();
        if ((t2 || t3) && (!t2 || !t3 || !this.r.equals(agVar.r))) {
            return false;
        }
        boolean u2 = u();
        boolean u3 = agVar.u();
        if ((u2 || u3) && (!u2 || !u3 || this.s != agVar.s)) {
            return false;
        }
        boolean v2 = v();
        boolean v3 = agVar.v();
        if ((v2 || v3) && (!v2 || !v3 || !this.t.equals(agVar.t))) {
            return false;
        }
        boolean w2 = w();
        boolean w3 = agVar.w();
        if ((w2 || w3) && (!w2 || !w3 || !this.u.equals(agVar.u))) {
            return false;
        }
        boolean x2 = x();
        boolean x3 = agVar.x();
        if ((x2 || x3) && (!x2 || !x3 || this.v != agVar.v)) {
            return false;
        }
        boolean y2 = y();
        boolean y3 = agVar.y();
        return (!y2 && !y3) || (y2 && y3 && this.w.equals(agVar.w));
    }

    /* renamed from: b */
    public int compareTo(ag agVar) {
        if (!getClass().equals(agVar.getClass())) {
            return getClass().getName().compareTo(agVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(agVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, agVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(agVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a((Comparable) this.b, (Comparable) agVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(agVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a(this.c, agVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(agVar.e()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (e()) {
            int a5 = org.apache.thrift.b.a(this.d, agVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(agVar.f()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (f()) {
            int a6 = org.apache.thrift.b.a(this.e, agVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(agVar.g()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (g()) {
            int a7 = org.apache.thrift.b.a(this.f, agVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(agVar.i()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (i()) {
            int a8 = org.apache.thrift.b.a(this.g, agVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(agVar.j()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (j()) {
            int a9 = org.apache.thrift.b.a(this.h, agVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        int compareTo9 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(agVar.k()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (k()) {
            int a10 = org.apache.thrift.b.a(this.i, agVar.i);
            if (a10 != 0) {
                return a10;
            }
        }
        int compareTo10 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(agVar.l()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (l()) {
            int a11 = org.apache.thrift.b.a(this.j, agVar.j);
            if (a11 != 0) {
                return a11;
            }
        }
        int compareTo11 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(agVar.m()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (m()) {
            int a12 = org.apache.thrift.b.a(this.k, agVar.k);
            if (a12 != 0) {
                return a12;
            }
        }
        int compareTo12 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(agVar.n()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (n()) {
            int a13 = org.apache.thrift.b.a(this.l, agVar.l);
            if (a13 != 0) {
                return a13;
            }
        }
        int compareTo13 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(agVar.o()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (o()) {
            int a14 = org.apache.thrift.b.a(this.m, agVar.m);
            if (a14 != 0) {
                return a14;
            }
        }
        int compareTo14 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(agVar.p()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (p()) {
            int a15 = org.apache.thrift.b.a(this.n, agVar.n);
            if (a15 != 0) {
                return a15;
            }
        }
        int compareTo15 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(agVar.q()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (q()) {
            int a16 = org.apache.thrift.b.a(this.o, agVar.o);
            if (a16 != 0) {
                return a16;
            }
        }
        int compareTo16 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(agVar.r()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (r()) {
            int a17 = org.apache.thrift.b.a(this.p, agVar.p);
            if (a17 != 0) {
                return a17;
            }
        }
        int compareTo17 = Boolean.valueOf(s()).compareTo(Boolean.valueOf(agVar.s()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (s()) {
            int a18 = org.apache.thrift.b.a(this.q, agVar.q);
            if (a18 != 0) {
                return a18;
            }
        }
        int compareTo18 = Boolean.valueOf(t()).compareTo(Boolean.valueOf(agVar.t()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (t()) {
            int a19 = org.apache.thrift.b.a(this.r, agVar.r);
            if (a19 != 0) {
                return a19;
            }
        }
        int compareTo19 = Boolean.valueOf(u()).compareTo(Boolean.valueOf(agVar.u()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (u()) {
            int a20 = org.apache.thrift.b.a(this.s, agVar.s);
            if (a20 != 0) {
                return a20;
            }
        }
        int compareTo20 = Boolean.valueOf(v()).compareTo(Boolean.valueOf(agVar.v()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (v()) {
            int a21 = org.apache.thrift.b.a((Comparable) this.t, (Comparable) agVar.t);
            if (a21 != 0) {
                return a21;
            }
        }
        int compareTo21 = Boolean.valueOf(w()).compareTo(Boolean.valueOf(agVar.w()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (w()) {
            int a22 = org.apache.thrift.b.a((Map) this.u, (Map) agVar.u);
            if (a22 != 0) {
                return a22;
            }
        }
        int compareTo22 = Boolean.valueOf(x()).compareTo(Boolean.valueOf(agVar.x()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (x()) {
            int a23 = org.apache.thrift.b.a(this.v, agVar.v);
            if (a23 != 0) {
                return a23;
            }
        }
        int compareTo23 = Boolean.valueOf(y()).compareTo(Boolean.valueOf(agVar.y()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (y()) {
            int a24 = org.apache.thrift.b.a(this.w, agVar.w);
            if (a24 != 0) {
                return a24;
            }
        }
        return 0;
    }

    public ag b(int i2) {
        this.n = i2;
        b(true);
        return this;
    }

    public ag b(String str) {
        this.d = str;
        return this;
    }

    public void b(org.apache.thrift.protocol.e eVar) {
        z();
        eVar.a(y);
        if (this.a != null && a()) {
            eVar.a(z);
            eVar.a(this.a);
            eVar.b();
        }
        if (this.b != null && b()) {
            eVar.a(A);
            this.b.b(eVar);
            eVar.b();
        }
        if (this.c != null) {
            eVar.a(B);
            eVar.a(this.c);
            eVar.b();
        }
        if (this.d != null) {
            eVar.a(C);
            eVar.a(this.d);
            eVar.b();
        }
        if (this.e != null && f()) {
            eVar.a(D);
            eVar.a(this.e);
            eVar.b();
        }
        if (this.f != null && g()) {
            eVar.a(E);
            eVar.a(this.f);
            eVar.b();
        }
        if (this.g != null) {
            eVar.a(F);
            eVar.a(this.g);
            eVar.b();
        }
        if (this.h != null && j()) {
            eVar.a(G);
            eVar.a(this.h);
            eVar.b();
        }
        if (this.i != null && k()) {
            eVar.a(H);
            eVar.a(this.i);
            eVar.b();
        }
        if (this.j != null && l()) {
            eVar.a(I);
            eVar.a(this.j);
            eVar.b();
        }
        if (this.k != null && m()) {
            eVar.a(J);
            eVar.a(this.k);
            eVar.b();
        }
        if (this.l != null && n()) {
            eVar.a(K);
            eVar.a(this.l);
            eVar.b();
        }
        if (o()) {
            eVar.a(L);
            eVar.a(this.m);
            eVar.b();
        }
        if (p()) {
            eVar.a(M);
            eVar.a(this.n);
            eVar.b();
        }
        if (this.o != null && q()) {
            eVar.a(N);
            eVar.a(this.o);
            eVar.b();
        }
        if (this.p != null && r()) {
            eVar.a(O);
            eVar.a(this.p);
            eVar.b();
        }
        if (this.q != null && s()) {
            eVar.a(P);
            eVar.a(this.q);
            eVar.b();
        }
        if (this.r != null && t()) {
            eVar.a(Q);
            eVar.a(this.r);
            eVar.b();
        }
        if (u()) {
            eVar.a(R);
            eVar.a(this.s);
            eVar.b();
        }
        if (this.t != null && v()) {
            eVar.a(S);
            eVar.a(this.t.a());
            eVar.b();
        }
        if (this.u != null && w()) {
            eVar.a(T);
            eVar.a(new d(11, 11, this.u.size()));
            for (Entry entry : this.u.entrySet()) {
                eVar.a((String) entry.getKey());
                eVar.a((String) entry.getValue());
            }
            eVar.d();
            eVar.b();
        }
        if (x()) {
            eVar.a(U);
            eVar.a(this.v);
            eVar.b();
        }
        if (this.w != null && y()) {
            eVar.a(V);
            eVar.a(this.w);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z2) {
        this.W.set(1, z2);
    }

    public boolean b() {
        return this.b != null;
    }

    public ag c(int i2) {
        this.s = i2;
        c(true);
        return this;
    }

    public ag c(String str) {
        this.e = str;
        return this;
    }

    public void c(boolean z2) {
        this.W.set(2, z2);
    }

    public boolean c() {
        return this.c != null;
    }

    public ag d(String str) {
        this.f = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void d(boolean z2) {
        this.W.set(3, z2);
    }

    public ag e(String str) {
        this.g = str;
        return this;
    }

    public boolean e() {
        return this.d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ag)) {
            return a((ag) obj);
        }
        return false;
    }

    public ag f(String str) {
        this.h = str;
        return this;
    }

    public boolean f() {
        return this.e != null;
    }

    public ag g(String str) {
        this.l = str;
        return this;
    }

    public boolean g() {
        return this.f != null;
    }

    public ag h(String str) {
        this.o = str;
        return this;
    }

    public String h() {
        return this.g;
    }

    public int hashCode() {
        return 0;
    }

    public ag i(String str) {
        this.p = str;
        return this;
    }

    public boolean i() {
        return this.g != null;
    }

    public ag j(String str) {
        this.q = str;
        return this;
    }

    public boolean j() {
        return this.h != null;
    }

    public ag k(String str) {
        this.r = str;
        return this;
    }

    public boolean k() {
        return this.i != null;
    }

    public boolean l() {
        return this.j != null;
    }

    public boolean m() {
        return this.k != null;
    }

    public boolean n() {
        return this.l != null;
    }

    public boolean o() {
        return this.W.get(0);
    }

    public boolean p() {
        return this.W.get(1);
    }

    public boolean q() {
        return this.o != null;
    }

    public boolean r() {
        return this.p != null;
    }

    public boolean s() {
        return this.q != null;
    }

    public boolean t() {
        return this.r != null;
    }

    public String toString() {
        boolean z2 = false;
        StringBuilder sb = new StringBuilder("XmPushActionRegistration(");
        boolean z3 = true;
        if (a()) {
            sb.append("debug:");
            if (this.a == null) {
                sb.append("null");
            } else {
                sb.append(this.a);
            }
            z3 = false;
        }
        if (b()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("target:");
            if (this.b == null) {
                sb.append("null");
            } else {
                sb.append(this.b);
            }
        } else {
            z2 = z3;
        }
        if (!z2) {
            sb.append(", ");
        }
        sb.append("id:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        sb.append(", ");
        sb.append("appId:");
        if (this.d == null) {
            sb.append("null");
        } else {
            sb.append(this.d);
        }
        if (f()) {
            sb.append(", ");
            sb.append("appVersion:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("packageName:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
        }
        sb.append(", ");
        sb.append("token:");
        if (this.g == null) {
            sb.append("null");
        } else {
            sb.append(this.g);
        }
        if (j()) {
            sb.append(", ");
            sb.append("deviceId:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("aliasName:");
            if (this.i == null) {
                sb.append("null");
            } else {
                sb.append(this.i);
            }
        }
        if (l()) {
            sb.append(", ");
            sb.append("sdkVersion:");
            if (this.j == null) {
                sb.append("null");
            } else {
                sb.append(this.j);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("regId:");
            if (this.k == null) {
                sb.append("null");
            } else {
                sb.append(this.k);
            }
        }
        if (n()) {
            sb.append(", ");
            sb.append("pushSdkVersionName:");
            if (this.l == null) {
                sb.append("null");
            } else {
                sb.append(this.l);
            }
        }
        if (o()) {
            sb.append(", ");
            sb.append("pushSdkVersionCode:");
            sb.append(this.m);
        }
        if (p()) {
            sb.append(", ");
            sb.append("appVersionCode:");
            sb.append(this.n);
        }
        if (q()) {
            sb.append(", ");
            sb.append("androidId:");
            if (this.o == null) {
                sb.append("null");
            } else {
                sb.append(this.o);
            }
        }
        if (r()) {
            sb.append(", ");
            sb.append("imei:");
            if (this.p == null) {
                sb.append("null");
            } else {
                sb.append(this.p);
            }
        }
        if (s()) {
            sb.append(", ");
            sb.append("serial:");
            if (this.q == null) {
                sb.append("null");
            } else {
                sb.append(this.q);
            }
        }
        if (t()) {
            sb.append(", ");
            sb.append("imeiMd5:");
            if (this.r == null) {
                sb.append("null");
            } else {
                sb.append(this.r);
            }
        }
        if (u()) {
            sb.append(", ");
            sb.append("spaceId:");
            sb.append(this.s);
        }
        if (v()) {
            sb.append(", ");
            sb.append("reason:");
            if (this.t == null) {
                sb.append("null");
            } else {
                sb.append(this.t);
            }
        }
        if (w()) {
            sb.append(", ");
            sb.append("connectionAttrs:");
            if (this.u == null) {
                sb.append("null");
            } else {
                sb.append(this.u);
            }
        }
        if (x()) {
            sb.append(", ");
            sb.append("cleanOldRegInfo:");
            sb.append(this.v);
        }
        if (y()) {
            sb.append(", ");
            sb.append("oldRegId:");
            if (this.w == null) {
                sb.append("null");
            } else {
                sb.append(this.w);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public boolean u() {
        return this.W.get(2);
    }

    public boolean v() {
        return this.t != null;
    }

    public boolean w() {
        return this.u != null;
    }

    public boolean x() {
        return this.W.get(3);
    }

    public boolean y() {
        return this.w != null;
    }

    public void z() {
        if (this.c == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        } else if (this.d == null) {
            throw new f("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.g == null) {
            throw new f("Required field 'token' was not present! Struct: " + toString());
        }
    }
}
