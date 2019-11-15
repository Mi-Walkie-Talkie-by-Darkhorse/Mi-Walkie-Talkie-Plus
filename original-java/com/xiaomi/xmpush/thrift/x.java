package com.xiaomi.xmpush.thrift;

import com.tencent.open.SocialConstants;
import com.xiaomi.mistatistic.sdk.BaseService;
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

public class x implements Serializable, Cloneable, org.apache.thrift.a<x, a> {
    private static final b A = new b("messageTs", 10, 5);
    private static final b B = new b("topic", 11, 6);
    private static final b C = new b("aliasName", 11, 7);
    private static final b D = new b(SocialConstants.TYPE_REQUEST, 12, 8);
    private static final b E = new b("packageName", 11, 9);
    private static final b F = new b(BaseService.CATEGORY, 11, 10);
    private static final b G = new b("isOnline", 2, 11);
    private static final b H = new b("regId", 11, 12);
    private static final b I = new b("callbackUrl", 11, 13);
    private static final b J = new b("userAccount", 11, 14);
    private static final b K = new b("deviceStatus", 6, 15);
    private static final b L = new b("geoMsgStatus", 6, 16);
    private static final b M = new b("imeiMd5", 11, 20);
    private static final b N = new b("deviceId", 11, 21);
    private static final b O = new b("passThrough", 8, 22);
    private static final b P = new b(Key.EXTRA, HttpConstants.CR, 23);
    public static final Map<a, org.apache.thrift.meta_data.b> u;
    private static final j v = new j("XmPushActionAckMessage");
    private static final b w = new b("debug", 11, 1);
    private static final b x = new b("target", 12, 2);
    private static final b y = new b("id", 11, 3);
    private static final b z = new b("appId", 11, 4);
    private BitSet Q = new BitSet(5);
    public String a;
    public v b;
    public String c;
    public String d;
    public long e;
    public String f;
    public String g;
    public ak h;
    public String i;
    public String j;
    public boolean k = false;
    public String l;
    public String m;
    public String n;
    public short o;
    public short p;
    public String q;
    public String r;
    public int s;
    public Map<String, String> t;

    public enum a {
        DEBUG(1, "debug"),
        TARGET(2, "target"),
        ID(3, "id"),
        APP_ID(4, "appId"),
        MESSAGE_TS(5, "messageTs"),
        TOPIC(6, "topic"),
        ALIAS_NAME(7, "aliasName"),
        REQUEST(8, SocialConstants.TYPE_REQUEST),
        PACKAGE_NAME(9, "packageName"),
        CATEGORY(10, BaseService.CATEGORY),
        IS_ONLINE(11, "isOnline"),
        REG_ID(12, "regId"),
        CALLBACK_URL(13, "callbackUrl"),
        USER_ACCOUNT(14, "userAccount"),
        DEVICE_STATUS(15, "deviceStatus"),
        GEO_MSG_STATUS(16, "geoMsgStatus"),
        IMEI_MD5(20, "imeiMd5"),
        DEVICE_ID(21, "deviceId"),
        PASS_THROUGH(22, "passThrough"),
        EXTRA(23, Key.EXTRA);
        
        private static final Map<String, a> u = null;
        private final short v;
        private final String w;

        static {
            u = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                u.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.v = s;
            this.w = str;
        }

        public String a() {
            return this.w;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.DEBUG, new org.apache.thrift.meta_data.b("debug", 2, new c(11)));
        enumMap.put(a.TARGET, new org.apache.thrift.meta_data.b("target", 2, new g(12, v.class)));
        enumMap.put(a.ID, new org.apache.thrift.meta_data.b("id", 1, new c(11)));
        enumMap.put(a.APP_ID, new org.apache.thrift.meta_data.b("appId", 1, new c(11)));
        enumMap.put(a.MESSAGE_TS, new org.apache.thrift.meta_data.b("messageTs", 1, new c(10)));
        enumMap.put(a.TOPIC, new org.apache.thrift.meta_data.b("topic", 2, new c(11)));
        enumMap.put(a.ALIAS_NAME, new org.apache.thrift.meta_data.b("aliasName", 2, new c(11)));
        enumMap.put(a.REQUEST, new org.apache.thrift.meta_data.b(SocialConstants.TYPE_REQUEST, 2, new g(12, ak.class)));
        enumMap.put(a.PACKAGE_NAME, new org.apache.thrift.meta_data.b("packageName", 2, new c(11)));
        enumMap.put(a.CATEGORY, new org.apache.thrift.meta_data.b(BaseService.CATEGORY, 2, new c(11)));
        enumMap.put(a.IS_ONLINE, new org.apache.thrift.meta_data.b("isOnline", 2, new c(2)));
        enumMap.put(a.REG_ID, new org.apache.thrift.meta_data.b("regId", 2, new c(11)));
        enumMap.put(a.CALLBACK_URL, new org.apache.thrift.meta_data.b("callbackUrl", 2, new c(11)));
        enumMap.put(a.USER_ACCOUNT, new org.apache.thrift.meta_data.b("userAccount", 2, new c(11)));
        enumMap.put(a.DEVICE_STATUS, new org.apache.thrift.meta_data.b("deviceStatus", 2, new c(6)));
        enumMap.put(a.GEO_MSG_STATUS, new org.apache.thrift.meta_data.b("geoMsgStatus", 2, new c(6)));
        enumMap.put(a.IMEI_MD5, new org.apache.thrift.meta_data.b("imeiMd5", 2, new c(11)));
        enumMap.put(a.DEVICE_ID, new org.apache.thrift.meta_data.b("deviceId", 2, new c(11)));
        enumMap.put(a.PASS_THROUGH, new org.apache.thrift.meta_data.b("passThrough", 2, new c(8)));
        enumMap.put(a.EXTRA, new org.apache.thrift.meta_data.b(Key.EXTRA, 2, new e(HttpConstants.CR, new c(11), new c(11))));
        u = Collections.unmodifiableMap(enumMap);
        org.apache.thrift.meta_data.b.a(x.class, u);
    }

    public x a(long j2) {
        this.e = j2;
        a(true);
        return this;
    }

    public x a(String str) {
        this.c = str;
        return this;
    }

    public x a(short s2) {
        this.o = s2;
        c(true);
        return this;
    }

    public void a(org.apache.thrift.protocol.e eVar) {
        eVar.g();
        while (true) {
            b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                if (!e()) {
                    throw new f("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
                }
                u();
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
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.e = eVar.u();
                        a(true);
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
                    if (i2.b != 12) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.h = new ak();
                        this.h.a(eVar);
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
                    if (i2.b != 2) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.k = eVar.q();
                        b(true);
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
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.m = eVar.w();
                        break;
                    }
                case 14:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.n = eVar.w();
                        break;
                    }
                case 15:
                    if (i2.b != 6) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.o = eVar.s();
                        c(true);
                        break;
                    }
                case 16:
                    if (i2.b != 6) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.p = eVar.s();
                        d(true);
                        break;
                    }
                case 20:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.q = eVar.w();
                        break;
                    }
                case 21:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.r = eVar.w();
                        break;
                    }
                case 22:
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.s = eVar.t();
                        e(true);
                        break;
                    }
                case 23:
                    if (i2.b != 13) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        d k2 = eVar.k();
                        this.t = new HashMap(k2.c * 2);
                        for (int i3 = 0; i3 < k2.c; i3++) {
                            this.t.put(eVar.w(), eVar.w());
                        }
                        eVar.l();
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
        this.Q.set(0, z2);
    }

    public boolean a() {
        return this.a != null;
    }

    public boolean a(x xVar) {
        if (xVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = xVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.equals(xVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = xVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.a(xVar.b))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = xVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.c.equals(xVar.c))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = xVar.d();
        if (((d2 || d3) && (!d2 || !d3 || !this.d.equals(xVar.d))) || this.e != xVar.e) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = xVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f.equals(xVar.f))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = xVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.g.equals(xVar.g))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = xVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.h.a(xVar.h))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = xVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.i.equals(xVar.i))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = xVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.j.equals(xVar.j))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = xVar.k();
        if ((k2 || k3) && (!k2 || !k3 || this.k != xVar.k)) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = xVar.l();
        if ((l2 || l3) && (!l2 || !l3 || !this.l.equals(xVar.l))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = xVar.m();
        if ((m2 || m3) && (!m2 || !m3 || !this.m.equals(xVar.m))) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = xVar.n();
        if ((n2 || n3) && (!n2 || !n3 || !this.n.equals(xVar.n))) {
            return false;
        }
        boolean o2 = o();
        boolean o3 = xVar.o();
        if ((o2 || o3) && (!o2 || !o3 || this.o != xVar.o)) {
            return false;
        }
        boolean p2 = p();
        boolean p3 = xVar.p();
        if ((p2 || p3) && (!p2 || !p3 || this.p != xVar.p)) {
            return false;
        }
        boolean q2 = q();
        boolean q3 = xVar.q();
        if ((q2 || q3) && (!q2 || !q3 || !this.q.equals(xVar.q))) {
            return false;
        }
        boolean r2 = r();
        boolean r3 = xVar.r();
        if ((r2 || r3) && (!r2 || !r3 || !this.r.equals(xVar.r))) {
            return false;
        }
        boolean s2 = s();
        boolean s3 = xVar.s();
        if ((s2 || s3) && (!s2 || !s3 || this.s != xVar.s)) {
            return false;
        }
        boolean t2 = t();
        boolean t3 = xVar.t();
        return (!t2 && !t3) || (t2 && t3 && this.t.equals(xVar.t));
    }

    /* renamed from: b */
    public int compareTo(x xVar) {
        if (!getClass().equals(xVar.getClass())) {
            return getClass().getName().compareTo(xVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(xVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, xVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(xVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a((Comparable) this.b, (Comparable) xVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(xVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a(this.c, xVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(xVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d()) {
            int a5 = org.apache.thrift.b.a(this.d, xVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(xVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e()) {
            int a6 = org.apache.thrift.b.a(this.e, xVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(xVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f()) {
            int a7 = org.apache.thrift.b.a(this.f, xVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(xVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g()) {
            int a8 = org.apache.thrift.b.a(this.g, xVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(xVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h()) {
            int a9 = org.apache.thrift.b.a((Comparable) this.h, (Comparable) xVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(xVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i()) {
            int a10 = org.apache.thrift.b.a(this.i, xVar.i);
            if (a10 != 0) {
                return a10;
            }
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(xVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j()) {
            int a11 = org.apache.thrift.b.a(this.j, xVar.j);
            if (a11 != 0) {
                return a11;
            }
        }
        int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(xVar.k()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (k()) {
            int a12 = org.apache.thrift.b.a(this.k, xVar.k);
            if (a12 != 0) {
                return a12;
            }
        }
        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(xVar.l()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (l()) {
            int a13 = org.apache.thrift.b.a(this.l, xVar.l);
            if (a13 != 0) {
                return a13;
            }
        }
        int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(xVar.m()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (m()) {
            int a14 = org.apache.thrift.b.a(this.m, xVar.m);
            if (a14 != 0) {
                return a14;
            }
        }
        int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(xVar.n()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (n()) {
            int a15 = org.apache.thrift.b.a(this.n, xVar.n);
            if (a15 != 0) {
                return a15;
            }
        }
        int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(xVar.o()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (o()) {
            int a16 = org.apache.thrift.b.a(this.o, xVar.o);
            if (a16 != 0) {
                return a16;
            }
        }
        int compareTo16 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(xVar.p()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (p()) {
            int a17 = org.apache.thrift.b.a(this.p, xVar.p);
            if (a17 != 0) {
                return a17;
            }
        }
        int compareTo17 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(xVar.q()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (q()) {
            int a18 = org.apache.thrift.b.a(this.q, xVar.q);
            if (a18 != 0) {
                return a18;
            }
        }
        int compareTo18 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(xVar.r()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (r()) {
            int a19 = org.apache.thrift.b.a(this.r, xVar.r);
            if (a19 != 0) {
                return a19;
            }
        }
        int compareTo19 = Boolean.valueOf(s()).compareTo(Boolean.valueOf(xVar.s()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (s()) {
            int a20 = org.apache.thrift.b.a(this.s, xVar.s);
            if (a20 != 0) {
                return a20;
            }
        }
        int compareTo20 = Boolean.valueOf(t()).compareTo(Boolean.valueOf(xVar.t()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (t()) {
            int a21 = org.apache.thrift.b.a((Map) this.t, (Map) xVar.t);
            if (a21 != 0) {
                return a21;
            }
        }
        return 0;
    }

    public x b(String str) {
        this.d = str;
        return this;
    }

    public x b(short s2) {
        this.p = s2;
        d(true);
        return this;
    }

    public void b(org.apache.thrift.protocol.e eVar) {
        u();
        eVar.a(v);
        if (this.a != null && a()) {
            eVar.a(w);
            eVar.a(this.a);
            eVar.b();
        }
        if (this.b != null && b()) {
            eVar.a(x);
            this.b.b(eVar);
            eVar.b();
        }
        if (this.c != null) {
            eVar.a(y);
            eVar.a(this.c);
            eVar.b();
        }
        if (this.d != null) {
            eVar.a(z);
            eVar.a(this.d);
            eVar.b();
        }
        eVar.a(A);
        eVar.a(this.e);
        eVar.b();
        if (this.f != null && f()) {
            eVar.a(B);
            eVar.a(this.f);
            eVar.b();
        }
        if (this.g != null && g()) {
            eVar.a(C);
            eVar.a(this.g);
            eVar.b();
        }
        if (this.h != null && h()) {
            eVar.a(D);
            this.h.b(eVar);
            eVar.b();
        }
        if (this.i != null && i()) {
            eVar.a(E);
            eVar.a(this.i);
            eVar.b();
        }
        if (this.j != null && j()) {
            eVar.a(F);
            eVar.a(this.j);
            eVar.b();
        }
        if (k()) {
            eVar.a(G);
            eVar.a(this.k);
            eVar.b();
        }
        if (this.l != null && l()) {
            eVar.a(H);
            eVar.a(this.l);
            eVar.b();
        }
        if (this.m != null && m()) {
            eVar.a(I);
            eVar.a(this.m);
            eVar.b();
        }
        if (this.n != null && n()) {
            eVar.a(J);
            eVar.a(this.n);
            eVar.b();
        }
        if (o()) {
            eVar.a(K);
            eVar.a(this.o);
            eVar.b();
        }
        if (p()) {
            eVar.a(L);
            eVar.a(this.p);
            eVar.b();
        }
        if (this.q != null && q()) {
            eVar.a(M);
            eVar.a(this.q);
            eVar.b();
        }
        if (this.r != null && r()) {
            eVar.a(N);
            eVar.a(this.r);
            eVar.b();
        }
        if (s()) {
            eVar.a(O);
            eVar.a(this.s);
            eVar.b();
        }
        if (this.t != null && t()) {
            eVar.a(P);
            eVar.a(new d(11, 11, this.t.size()));
            for (Entry entry : this.t.entrySet()) {
                eVar.a((String) entry.getKey());
                eVar.a((String) entry.getValue());
            }
            eVar.d();
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z2) {
        this.Q.set(1, z2);
    }

    public boolean b() {
        return this.b != null;
    }

    public x c(String str) {
        this.f = str;
        return this;
    }

    public void c(boolean z2) {
        this.Q.set(2, z2);
    }

    public boolean c() {
        return this.c != null;
    }

    public x d(String str) {
        this.g = str;
        return this;
    }

    public void d(boolean z2) {
        this.Q.set(3, z2);
    }

    public boolean d() {
        return this.d != null;
    }

    public void e(boolean z2) {
        this.Q.set(4, z2);
    }

    public boolean e() {
        return this.Q.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof x)) {
            return a((x) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f != null;
    }

    public boolean g() {
        return this.g != null;
    }

    public boolean h() {
        return this.h != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.i != null;
    }

    public boolean j() {
        return this.j != null;
    }

    public boolean k() {
        return this.Q.get(1);
    }

    public boolean l() {
        return this.l != null;
    }

    public boolean m() {
        return this.m != null;
    }

    public boolean n() {
        return this.n != null;
    }

    public boolean o() {
        return this.Q.get(2);
    }

    public boolean p() {
        return this.Q.get(3);
    }

    public boolean q() {
        return this.q != null;
    }

    public boolean r() {
        return this.r != null;
    }

    public boolean s() {
        return this.Q.get(4);
    }

    public boolean t() {
        return this.t != null;
    }

    public String toString() {
        boolean z2 = false;
        StringBuilder sb = new StringBuilder("XmPushActionAckMessage(");
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
        sb.append(", ");
        sb.append("messageTs:");
        sb.append(this.e);
        if (f()) {
            sb.append(", ");
            sb.append("topic:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("aliasName:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("request:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("packageName:");
            if (this.i == null) {
                sb.append("null");
            } else {
                sb.append(this.i);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("category:");
            if (this.j == null) {
                sb.append("null");
            } else {
                sb.append(this.j);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("isOnline:");
            sb.append(this.k);
        }
        if (l()) {
            sb.append(", ");
            sb.append("regId:");
            if (this.l == null) {
                sb.append("null");
            } else {
                sb.append(this.l);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("callbackUrl:");
            if (this.m == null) {
                sb.append("null");
            } else {
                sb.append(this.m);
            }
        }
        if (n()) {
            sb.append(", ");
            sb.append("userAccount:");
            if (this.n == null) {
                sb.append("null");
            } else {
                sb.append(this.n);
            }
        }
        if (o()) {
            sb.append(", ");
            sb.append("deviceStatus:");
            sb.append(this.o);
        }
        if (p()) {
            sb.append(", ");
            sb.append("geoMsgStatus:");
            sb.append(this.p);
        }
        if (q()) {
            sb.append(", ");
            sb.append("imeiMd5:");
            if (this.q == null) {
                sb.append("null");
            } else {
                sb.append(this.q);
            }
        }
        if (r()) {
            sb.append(", ");
            sb.append("deviceId:");
            if (this.r == null) {
                sb.append("null");
            } else {
                sb.append(this.r);
            }
        }
        if (s()) {
            sb.append(", ");
            sb.append("passThrough:");
            sb.append(this.s);
        }
        if (t()) {
            sb.append(", ");
            sb.append("extra:");
            if (this.t == null) {
                sb.append("null");
            } else {
                sb.append(this.t);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void u() {
        if (this.c == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        } else if (this.d == null) {
            throw new f("Required field 'appId' was not present! Struct: " + toString());
        }
    }
}
