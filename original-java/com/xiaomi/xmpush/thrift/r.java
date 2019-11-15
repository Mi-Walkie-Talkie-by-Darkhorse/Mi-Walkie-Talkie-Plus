package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.thrift.meta_data.b;
import org.apache.thrift.meta_data.c;
import org.apache.thrift.meta_data.g;
import org.apache.thrift.protocol.e;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class r implements Serializable, Cloneable, org.apache.thrift.a<r, a> {
    public static final Map<a, b> i;
    private static final j j = new j("PushMessage");
    private static final org.apache.thrift.protocol.b k = new org.apache.thrift.protocol.b("to", 12, 1);
    private static final org.apache.thrift.protocol.b l = new org.apache.thrift.protocol.b("id", 11, 2);
    private static final org.apache.thrift.protocol.b m = new org.apache.thrift.protocol.b("appId", 11, 3);
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b("payload", 11, 4);
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("createAt", 10, 5);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b(Values.TTL, 10, 6);
    private static final org.apache.thrift.protocol.b q = new org.apache.thrift.protocol.b("collapseKey", 11, 7);
    private static final org.apache.thrift.protocol.b r = new org.apache.thrift.protocol.b("packageName", 11, 8);
    public v a;
    public String b;
    public String c;
    public String d;
    public long e;
    public long f;
    public String g;
    public String h;
    private BitSet s = new BitSet(2);

    public enum a {
        TO(1, "to"),
        ID(2, "id"),
        APP_ID(3, "appId"),
        PAYLOAD(4, "payload"),
        CREATE_AT(5, "createAt"),
        TTL(6, Values.TTL),
        COLLAPSE_KEY(7, "collapseKey"),
        PACKAGE_NAME(8, "packageName");
        
        private static final Map<String, a> i = null;
        private final short j;
        private final String k;

        static {
            i = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                i.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.j = s;
            this.k = str;
        }

        public String a() {
            return this.k;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.TO, new b("to", 2, new g(12, v.class)));
        enumMap.put(a.ID, new b("id", 1, new c(11)));
        enumMap.put(a.APP_ID, new b("appId", 1, new c(11)));
        enumMap.put(a.PAYLOAD, new b("payload", 1, new c(11)));
        enumMap.put(a.CREATE_AT, new b("createAt", 2, new c(10)));
        enumMap.put(a.TTL, new b(Values.TTL, 2, new c(10)));
        enumMap.put(a.COLLAPSE_KEY, new b("collapseKey", 2, new c(11)));
        enumMap.put(a.PACKAGE_NAME, new b("packageName", 2, new c(11)));
        i = Collections.unmodifiableMap(enumMap);
        b.a(r.class, i);
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                m();
                return;
            }
            switch (i2.c) {
                case 1:
                    if (i2.b != 12) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.a = new v();
                        this.a.a(eVar);
                        break;
                    }
                case 2:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.b = eVar.w();
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
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.f = eVar.u();
                        b(true);
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
                default:
                    h.a(eVar, i2.b);
                    break;
            }
            eVar.j();
        }
    }

    public void a(boolean z) {
        this.s.set(0, z);
    }

    public boolean a() {
        return this.a != null;
    }

    public boolean a(r rVar) {
        if (rVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = rVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.a(rVar.a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = rVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.b.equals(rVar.b))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = rVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.c.equals(rVar.c))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = rVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.d.equals(rVar.d))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = rVar.i();
        if ((i2 || i3) && (!i2 || !i3 || this.e != rVar.e)) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = rVar.j();
        if ((j2 || j3) && (!j2 || !j3 || this.f != rVar.f)) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = rVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.g.equals(rVar.g))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = rVar.l();
        return (!l2 && !l3) || (l2 && l3 && this.h.equals(rVar.h));
    }

    /* renamed from: b */
    public int compareTo(r rVar) {
        if (!getClass().equals(rVar.getClass())) {
            return getClass().getName().compareTo(rVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(rVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a((Comparable) this.a, (Comparable) rVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(rVar.c()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (c()) {
            int a3 = org.apache.thrift.b.a(this.b, rVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(rVar.e()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (e()) {
            int a4 = org.apache.thrift.b.a(this.c, rVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(rVar.g()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (g()) {
            int a5 = org.apache.thrift.b.a(this.d, rVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(rVar.i()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (i()) {
            int a6 = org.apache.thrift.b.a(this.e, rVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(rVar.j()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (j()) {
            int a7 = org.apache.thrift.b.a(this.f, rVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(rVar.k()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (k()) {
            int a8 = org.apache.thrift.b.a(this.g, rVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(rVar.l()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (l()) {
            int a9 = org.apache.thrift.b.a(this.h, rVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        return 0;
    }

    public String b() {
        return this.b;
    }

    public void b(e eVar) {
        m();
        eVar.a(j);
        if (this.a != null && a()) {
            eVar.a(k);
            this.a.b(eVar);
            eVar.b();
        }
        if (this.b != null) {
            eVar.a(l);
            eVar.a(this.b);
            eVar.b();
        }
        if (this.c != null) {
            eVar.a(m);
            eVar.a(this.c);
            eVar.b();
        }
        if (this.d != null) {
            eVar.a(n);
            eVar.a(this.d);
            eVar.b();
        }
        if (i()) {
            eVar.a(o);
            eVar.a(this.e);
            eVar.b();
        }
        if (j()) {
            eVar.a(p);
            eVar.a(this.f);
            eVar.b();
        }
        if (this.g != null && k()) {
            eVar.a(q);
            eVar.a(this.g);
            eVar.b();
        }
        if (this.h != null && l()) {
            eVar.a(r);
            eVar.a(this.h);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z) {
        this.s.set(1, z);
    }

    public boolean c() {
        return this.b != null;
    }

    public String d() {
        return this.c;
    }

    public boolean e() {
        return this.c != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof r)) {
            return a((r) obj);
        }
        return false;
    }

    public String f() {
        return this.d;
    }

    public boolean g() {
        return this.d != null;
    }

    public long h() {
        return this.e;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.s.get(0);
    }

    public boolean j() {
        return this.s.get(1);
    }

    public boolean k() {
        return this.g != null;
    }

    public boolean l() {
        return this.h != null;
    }

    public void m() {
        if (this.b == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        } else if (this.c == null) {
            throw new f("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.d == null) {
            throw new f("Required field 'payload' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PushMessage(");
        boolean z = true;
        if (a()) {
            sb.append("to:");
            if (this.a == null) {
                sb.append("null");
            } else {
                sb.append(this.a);
            }
            z = false;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("id:");
        if (this.b == null) {
            sb.append("null");
        } else {
            sb.append(this.b);
        }
        sb.append(", ");
        sb.append("appId:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        sb.append(", ");
        sb.append("payload:");
        if (this.d == null) {
            sb.append("null");
        } else {
            sb.append(this.d);
        }
        if (i()) {
            sb.append(", ");
            sb.append("createAt:");
            sb.append(this.e);
        }
        if (j()) {
            sb.append(", ");
            sb.append("ttl:");
            sb.append(this.f);
        }
        if (k()) {
            sb.append(", ");
            sb.append("collapseKey:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        if (l()) {
            sb.append(", ");
            sb.append("packageName:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
